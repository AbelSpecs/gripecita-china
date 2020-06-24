--REPORTE 2

set serveroutput on;
---Funcion calculo edad
create or replace function calculo_edad(fecha persona.fechanac_persona%type) return number
is
    edadp number;
    edadr number;
begin
    select round(months_between(sysdate,to_date(substr(fecha,1,8)))/12,0) into edadp from dual;
    
    if(edadp < 0) then
     select round(months_between(to_date('19/05/2050'),to_date(substr(fecha,1,8)))/12,0) into edadr from dual;
     select round(months_between(sysdate,to_date('12/10/50'))/12,0) into edadp from dual;
     edadp:= edadp + edadr;
     
    end if;
    
    return edadp;
end calculo_edad;
/
---Funcion sintomas
create or replace function Sintomas(nombre Persona.nombre1_persona%type) return varchar2
is
    sint varchar2(200);
    cursor c1 is select nombre_sintoma 
    from sintoma, per_sin, persona
    where id_sintoma = id_sintoma_ps and pasaporte_persona_ps = pasaporte_persona  
    and nombre1_persona = nombre;
begin
     for i in c1 loop
     sint:= concat(sint,concat(' ',i.nombre_sintoma));
     end loop;

    return sint;
end Sintomas;
/
---Funcion Patologias
create or replace function Patologias(nombre Persona.nombre1_persona%type) return varchar2
is
    pat varchar2(200);
    cursor c1 is select nombre_patologia 
    from patologia, per_pat, persona
    where id_patologia = id_patologia_pp and pasaporte_persona_pp = pasaporte_persona  
    and nombre1_persona = nombre;
begin
     for i in c1 loop
     pat:= concat(pat,concat(' ',i.nombre_patologia));
     end loop;

    return pat;
end Patologias;
/
---Funcion fecha de primer sintoma
create or replace function Fecha_Sintoma(Nombre Persona.nombre1_persona%type) return date
is
    fechaP date;
begin
    select min(to_date(substr(fecisintoma_ps,1,8))) as "Fecha primer sintoma" into fechaP
    from per_sin, persona, sintoma
    where nombre1_persona = Nombre and pasaporte_persona = pasaporte_persona_ps and id_sintoma_ps = id_sintoma;
    
    return fechaP;
end Fecha_Sintoma;
/
---Funcion recibio o no asistencia para ese sintoma
create or replace function Asistencia(nombre Persona.nombre1_persona%type,fecha date) return varchar2
is
    asis varchar2(2);
begin
    select atencionmedica_ps into asis
    from per_sin, persona, sintoma
    where nombre1_persona = nombre and pasaporte_persona = pasaporte_persona_ps and id_sintoma_ps = id_sintoma
    and fecisintoma_ps = fecha;
    
    return asis;

end Asistencia;
/
---------------Procedimiento que trae toh PRINCIPAL
create or replace procedure PersonasSintomas(p_cursor OUT sys_refcursor,Pais Varchar2, Estado Varchar2, Edad Number)
is                                
begin         
    if((Pais is not null) and (Estado is not null) and (Edad is not null)) then
       Open p_cursor 
       for select foto_persona, pasaporte_persona, nombre1_persona, nombre2_persona, apellido1_persona, apellido2_persona, 
                    Covid.calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Covid.Fecha_Sintoma(nombre1_persona) as fecha,
                    Covid.Sintomas(nombre1_persona) as Sintomas,
                    Covid.Asistencia(nombre1_persona,Covid.Fecha_Sintoma(nombre1_persona)) as Asistencia,
                    Covid.Patologias(nombre1_persona) as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and l2.identificacion_lugar.nombre = Estado and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona 
                    and Edad = Covid.calculo_edad(fechanac_persona)
                    order by nombre1_persona; 
    

     elsif((Pais is null) and (Estado is not null) and (Edad is not null)) then
        ---Sin pais      PERO CON ESTADO Y EDAD
        Open p_cursor
          for select foto_persona, pasaporte_persona, nombre1_persona, nombre2_persona, apellido1_persona, apellido2_persona, 
                    Covid.calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Covid.Fecha_Sintoma(nombre1_persona) as fecha,
                    Covid.Sintomas(nombre1_persona) as Sintomas,
                    Covid.Asistencia(nombre1_persona,Covid.Fecha_Sintoma(nombre1_persona)) as Asistencia,
                    Covid.Patologias(nombre1_persona) as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' /*and l.identificacion_lugar.nombre = Pais*/ and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and l2.identificacion_lugar.nombre = Estado and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Covid.Sintomas(nombre1_persona) is not null
                    and Edad = Covid.calculo_edad(fechanac_persona)
                    order by nombre1_persona;
                    
     elsif((Pais is not null) and (Estado is null) and (Edad is not null)) then  
     
     ---Sin estado       PERO CON PAIS Y EDAD
        Open p_cursor
           for select foto_persona, pasaporte_persona, nombre1_persona, nombre2_persona, apellido1_persona, apellido2_persona, 
                    Covid.calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Covid.Fecha_Sintoma(nombre1_persona) as fecha,
                    Covid.Sintomas(nombre1_persona) as Sintomas,
                    Covid.Asistencia(nombre1_persona,Covid.Fecha_Sintoma(nombre1_persona)) as Asistencia,
                    Covid.Patologias(nombre1_persona) as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and /*l2.identificacion_lugar.nombre = Estado and*/ l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Covid.Sintomas(nombre1_persona) is not null
                    and Edad = Covid.calculo_edad(fechanac_persona)
                    order by nombre1_persona;
                    
      elsif((Pais is not null) and (Estado is not null) and (Edad is null)) then  
                    
      --SIN EDAD  CON PAIS Y ESTADO
            Open p_cursor
              for select foto_persona, pasaporte_persona, nombre1_persona, nombre2_persona, apellido1_persona, apellido2_persona, 
                    Covid.calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Covid.Fecha_Sintoma(nombre1_persona) as fecha,
                    Covid.Sintomas(nombre1_persona) as Sintomas,
                    Covid.Asistencia(nombre1_persona,Covid.Fecha_Sintoma(nombre1_persona)) as Asistencia,
                    Covid.Patologias(nombre1_persona) as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and l2.identificacion_lugar.nombre = Estado and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Covid.Sintomas(nombre1_persona) is not null
                    /*and Edad = Covid.calculo_edad(fechanac_persona)*/
                    order by nombre1_persona;
                    
      elsif((Pais is null) and (Estado is null) and (Edad is not null)) then  
       --SIN PAIS Y ESTADO PERO CON EDAD
            Open p_cursor
             for select foto_persona, pasaporte_persona, nombre1_persona, nombre2_persona, apellido1_persona, apellido2_persona, 
                    Covid.calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Covid.Fecha_Sintoma(nombre1_persona) as fecha,
                    Covid.Sintomas(nombre1_persona) as Sintomas,
                    Covid.Asistencia(nombre1_persona,Covid.Fecha_Sintoma(nombre1_persona)) as Asistencia,
                    Covid.Patologias(nombre1_persona) as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' /*and l.identificacion_lugar.nombre = 'Venezuela' */and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' /*and l2.identificacion_lugar.nombre = 'Miranda'*/ and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Covid.Sintomas(nombre1_persona) is not null
                    and Edad = Covid.calculo_edad(fechanac_persona) 
                    order by nombre1_persona;
                    
                    
        elsif((Pais is not null) and (Estado is null) and (Edad is null)) then             
            --SIN ESTADO NI EDAD PERO CON PAIS
           Open p_cursor 
            for select foto_persona, pasaporte_persona, nombre1_persona, nombre2_persona, apellido1_persona, apellido2_persona, 
                    Covid.calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Covid.Fecha_Sintoma(nombre1_persona) as fecha,
                    Covid.Sintomas(nombre1_persona) as Sintomas,
                    Covid.Asistencia(nombre1_persona,Covid.Fecha_Sintoma(nombre1_persona)) as Asistencia,
                    Covid.Patologias(nombre1_persona) as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' /*and l2.identificacion_lugar.nombre = Estado*/ and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Covid.Sintomas(nombre1_persona) is not null
                    /*and Edad = Covid.calculo_edad(fechanac_persona)*/
                    order by nombre1_persona;
                    
        elsif((Pais is null) and (Estado is not null) and (Edad is null)) then
        
        --SIN EDAD SIN PAIS PERO CON ESTADO
            Open p_cursor
              for select foto_persona, pasaporte_persona, nombre1_persona, nombre2_persona, apellido1_persona, apellido2_persona, 
                    Covid.calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Covid.Fecha_Sintoma(nombre1_persona) as fecha,
                    Covid.Sintomas(nombre1_persona) as Sintomas,
                    Covid.Asistencia(nombre1_persona,Covid.Fecha_Sintoma(nombre1_persona)) as Asistencia,
                    Covid.Patologias(nombre1_persona) as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' /*and l.identificacion_lugar.nombre = Pais */ and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and l2.identificacion_lugar.nombre = Estado and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Covid.Sintomas(nombre1_persona) is not null
                    /*and Edad = Covid.calculo_edad(fechanac_persona)*/
                    order by nombre1_persona;
                    
        elsif((Pais is null) and (Estado is null) and (Edad is null)) then 
            
            ---SIN NADA 
            Open p_cursor
              for select foto_persona, pasaporte_persona, nombre1_persona, nombre2_persona, apellido1_persona, apellido2_persona, 
                    Covid.calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Covid.Fecha_Sintoma(nombre1_persona) as fecha,
                    Covid.Sintomas(nombre1_persona) as Sintomas,
                    Covid.Asistencia(nombre1_persona,Covid.Fecha_Sintoma(nombre1_persona)) as Asistencia,
                    Covid.Patologias(nombre1_persona) as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' /*and l.identificacion_lugar.nombre = Pais */ and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' /*and l2.identificacion_lugar.nombre = Estado*/ and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Covid.Sintomas(nombre1_persona) is not null
                    /*and Edad = Covid.calculo_edad(fechanac_persona)*/
                    order by nombre1_persona; 
        end if;
     
     
end PersonasSintomas;





