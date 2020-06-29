-------------------------------------------------------------------------------------------------------------------------------------
-- Funcion para el Reporte 1
-------------------------------------------------------------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION getPatologias(pasaporte persona.pasaporte_persona%type) RETURN varchar2 
IS  
    patologias varchar2(2000);
    patologia VARCHAR2(100);
    CURSOR patologia_persona
    IS 
    SELECT pt.nombre_patologia
        FROM per_pat pp, patologia pt
        WHERE pp.pasaporte_persona_pp = pasaporte AND pt.id_patologia = pp.id_patologia_pp;
BEGIN
    patologias :=  '';
    OPEN patologia_persona;
    fetch patologia_persona into patologia;
        WHILE patologia_persona%FOUND LOOP
            patologias := patologias||' '||patologia;
            fetch patologia_persona into patologia;
        END LOOP;
    CLOSE patologia_persona;
    
    return patologias;
END;  
/
-------------------------------------------------------------------------------------------------------------------------------------
-- Reporte 1 Def
-------------------------------------------------------------------------------------------------------------------------------------
create or replace procedure personasInfectada (pais lugar.identificacion_lugar.nombre%type, estado lugar.identificacion_lugar.nombre%type, edad number,
patol patologia.nombre_patologia%type, ret_cursor OUT sys_refcursor) 
is 
begin
    --DBMS_OUTPUT.put_line ('Entro al proc');
    if ((pais is null) and (estado is null) and (edad is null) and (patol is null)) then
        OPEN ret_cursor FOR
        -- Todo vacio
        select p.pasaporte_persona ,p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona, ' ')"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País", 
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", COALESCE(getPatologias(p.pasaporte_persona), ' ') "Patologias"
        from persona p, lugar l, lugar l2, lugar l3
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
        order by p.fechanac_persona;
        -- Solo con pais y estado
    elsif ((pais is not null) and (estado is not null) and (edad is null) and (patol is null)) then
        OPEN ret_cursor FOR
        select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona, ' ')"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", COALESCE(getPatologias(p.pasaporte_persona), ' ') "Patologias"
        from persona p, lugar l, lugar l2, lugar l3
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
            and l3.identificacion_lugar.nombre = pais
            and l2.identificacion_lugar.nombre = estado
        order by p.fechanac_persona;
        -- Solo con pais
    elsif ((pais is not null) and (estado is null) and (edad is null) and (patol is null)) then
        OPEN ret_cursor FOR
        select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona, ' ')"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", COALESCE(getPatologias(p.pasaporte_persona), ' ') "Patologias"
        from persona p, lugar l, lugar l2, lugar l3
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
             and l3.identificacion_lugar.nombre = pais
        order by p.fechanac_persona;
        -- Solo con estado
    elsif ((pais is null) and (estado is not null) and (edad is null) and (patol is null)) then
        OPEN ret_cursor FOR
        select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona, ' ')"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", COALESCE(getPatologias(p.pasaporte_persona), ' ') "Patologias"
        from persona p, lugar l, lugar l2, lugar l3
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
            and l2.identificacion_lugar.nombre = estado
        order by p.fechanac_persona;
        -- Solo con edad y patol
    elsif ((pais is null) and (estado is null) and (edad is not null) and (patol is not null)) then
        OPEN ret_cursor FOR 
        select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona, ' ')"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", COALESCE(getPatologias(p.pasaporte_persona), ' ') "Patologias"
        from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
            and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and 
            round(EXTRACT(DAY FROM sysdate - p.fechanac_persona)/365,0) > edad 
            and pt.nombre_patologia = patol
        order by p.fechanac_persona;
        -- Solo con edad
    elsif ((pais is null) and (estado is null) and (edad is not null) and (patol is null)) then
        OPEN ret_cursor FOR 
        select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona, ' ')"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", COALESCE(getPatologias(p.pasaporte_persona), ' ') "Patologias"
        from persona p, lugar l, lugar l2, lugar l3
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and
            round(EXTRACT(DAY FROM sysdate - p.fechanac_persona)/365,0) > edad 
        order by p.fechanac_persona;
        -- Solo con patologia
     elsif ((pais is null) and (estado is null) and (edad is null) and (patol is not null)) then
        OPEN ret_cursor FOR 
        select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona, ' ')"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", COALESCE(getPatologias(p.pasaporte_persona), ' ') "Patologias"
        from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
            and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia
            and pt.nombre_patologia = patol
        order by p.fechanac_persona;
    else
        -- Con todos los parametros a llenar
        OPEN ret_cursor FOR
        select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona, ' ')"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", COALESCE(getPatologias(p.pasaporte_persona), ' ') "Patologias"
        from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
            and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = pais
            and l2.identificacion_lugar.nombre = estado and round(EXTRACT(DAY FROM sysdate - p.fechanac_persona)/365,0) > edad 
            and pt.nombre_patologia = patol
        order by p.fechanac_persona;
    end if;
end;
/
-------------------------------------------------------------------------------------------------------------------------------------
-- Reporte 2 Def
-------------------------------------------------------------------------------------------------------------------------------------
-- Func para calc edad 
create or replace function edad (fecha_nac date) return number is
begin
    return (round(((sysdate - fecha_nac)/365),0));
end;
/
set serveroutput on;
---Funcion calculo edad
create or replace function calculo_edad(fecha persona.fechanac_persona%type) return number
is
    edadp number;
    edadr number;
begin
    select round(months_between(sysdate,to_date(substr(fecha,1,9)))/12,0) into edadp from dual;

    if(edadp < 0) then
     select round(months_between(to_date('19-MAY-50'),to_date(substr(fecha,1,9)))/12,0) into edadr from dual;
     select round(months_between(sysdate,to_date('12-OCT-50'))/12,0) into edadp from dual;
     edadp:= edadp + edadr;

    end if;

    return edadp;
end calculo_edad;
/
---Funcion sintomas
create or replace function Sintomas(nombre Persona.nombre1_persona%type) return varchar2
is
    sint varchar2(200);
    ft boolean:= true;
    cursor c1 is select nombre_sintoma 
    from sintoma, per_sin, persona
    where id_sintoma = id_sintoma_ps and pasaporte_persona_ps = pasaporte_persona  
    and nombre1_persona = nombre;
begin
     for i in c1 loop
         if(ft) then
            sint:= i.nombre_sintoma;
            ft := false;
         else 
            sint:= concat(sint,concat(' ',i.nombre_sintoma));
         end if;    
     end loop;

    return sint;
end Sintomas;
/
---Funcion Patologias
create or replace function Patologias(nombre Persona.nombre1_persona%type) return varchar2
is
    pat varchar2(200);
    ft boolean:= true;
    cursor c1 is select nombre_patologia 
    from patologia, per_pat, persona
    where id_patologia = id_patologia_pp and pasaporte_persona_pp = pasaporte_persona  
    and nombre1_persona = nombre;
begin
     for i in c1 loop
        if(ft) then
            pat:= i.nombre_patologia;
            ft := false;
        else 
            pat:= concat(pat,concat(' ',i.nombre_patologia));
        end if;    
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
       for select foto_persona, pasaporte_persona, nombre1_persona, COALESCE(nombre2_persona,' ')as nombre2_persona, apellido1_persona, apellido2_persona, 
                    calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Fecha_Sintoma(nombre1_persona) as fecha,
                    COALESCE(Sintomas(nombre1_persona),'No posee') as Sintomas,
                    COALESCE(Asistencia(nombre1_persona,Fecha_Sintoma(nombre1_persona)),'No posee') as Asistencia,
                    COALESCE(Patologias(nombre1_persona),'No posee') as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and l2.identificacion_lugar.nombre = Estado and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona 
                    and Edad = calculo_edad(fechanac_persona)
                    order by nombre1_persona; 
    

     elsif((Pais is null) and (Estado is not null) and (Edad is not null)) then
        ---Sin pais      PERO CON ESTADO Y EDAD
        Open p_cursor
          for select foto_persona, pasaporte_persona, nombre1_persona, COALESCE(nombre2_persona,' ')as nombre2_persona, apellido1_persona, apellido2_persona, 
                    calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Fecha_Sintoma(nombre1_persona) as fecha,
                    COALESCE(Sintomas(nombre1_persona),'No posee') as Sintomas,
                    COALESCE(Asistencia(nombre1_persona,Fecha_Sintoma(nombre1_persona)),'No posee') as Asistencia,
                    COALESCE(Patologias(nombre1_persona),'No posee') as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' /*and l.identificacion_lugar.nombre = Pais*/ and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and l2.identificacion_lugar.nombre = Estado and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Sintomas(nombre1_persona) is not null
                    and Edad = calculo_edad(fechanac_persona)
                    order by nombre1_persona;
                    
     elsif((Pais is not null) and (Estado is null) and (Edad is not null)) then  
     
     ---Sin estado       PERO CON PAIS Y EDAD
        Open p_cursor
           for select foto_persona, pasaporte_persona, nombre1_persona, COALESCE(nombre2_persona,' ')as nombre2_persona, apellido1_persona, apellido2_persona, 
                    calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Fecha_Sintoma(nombre1_persona) as fecha,
                    COALESCE(Sintomas(nombre1_persona),'No posee') as Sintomas,
                    COALESCE(Asistencia(nombre1_persona,Fecha_Sintoma(nombre1_persona)),'No posee') as Asistencia,
                    COALESCE(Patologias(nombre1_persona),'No posee') as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and /*l2.identificacion_lugar.nombre = Estado and*/ l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Sintomas(nombre1_persona) is not null
                    and Edad = calculo_edad(fechanac_persona)
                    order by nombre1_persona;
                    
      elsif((Pais is not null) and (Estado is not null) and (Edad is null)) then  
                    
      --SIN EDAD  CON PAIS Y ESTADO
            Open p_cursor
              for select foto_persona, pasaporte_persona, nombre1_persona, COALESCE(nombre2_persona,' ')as nombre2_persona, apellido1_persona, apellido2_persona, 
                    calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Fecha_Sintoma(nombre1_persona) as fecha,
                    COALESCE(Sintomas(nombre1_persona),'No posee') as Sintomas,
                    COALESCE(Asistencia(nombre1_persona,Fecha_Sintoma(nombre1_persona)),'No posee') as Asistencia,
                    COALESCE(Patologias(nombre1_persona),'No posee') as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and l2.identificacion_lugar.nombre = Estado and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Sintomas(nombre1_persona) is not null
                    /*and Edad = calculo_edad(fechanac_persona)*/
                    order by nombre1_persona;
                    
      elsif((Pais is null) and (Estado is null) and (Edad is not null)) then  
       --SIN PAIS Y ESTADO PERO CON EDAD
            Open p_cursor
             for select foto_persona, pasaporte_persona, nombre1_persona, COALESCE(nombre2_persona,' ')as nombre2_persona, apellido1_persona, apellido2_persona, 
                    calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Fecha_Sintoma(nombre1_persona) as fecha,
                    COALESCE(Sintomas(nombre1_persona),'No posee') as Sintomas,
                    COALESCE(Asistencia(nombre1_persona,Fecha_Sintoma(nombre1_persona)),'No posee') as Asistencia,
                    COALESCE(Patologias(nombre1_persona),'No posee') as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' /*and l.identificacion_lugar.nombre = 'Venezuela' */and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' /*and l2.identificacion_lugar.nombre = 'Miranda'*/ and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Sintomas(nombre1_persona) is not null
                    and Edad = calculo_edad(fechanac_persona) 
                    order by nombre1_persona;
                    
                    
        elsif((Pais is not null) and (Estado is null) and (Edad is null)) then             
            --SIN ESTADO NI EDAD PERO CON PAIS
           Open p_cursor 
            for select foto_persona, pasaporte_persona, nombre1_persona, COALESCE(nombre2_persona,' ')as nombre2_persona, apellido1_persona, apellido2_persona, 
                    calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Fecha_Sintoma(nombre1_persona) as fecha,
                    COALESCE(Sintomas(nombre1_persona),'No posee') as Sintomas,
                    COALESCE(Asistencia(nombre1_persona,Fecha_Sintoma(nombre1_persona)),'No posee') as Asistencia,
                    COALESCE(Patologias(nombre1_persona),'No posee') as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' /*and l2.identificacion_lugar.nombre = Estado*/ and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Sintomas(nombre1_persona) is not null
                    /*and Edad = calculo_edad(fechanac_persona)*/
                    order by nombre1_persona;
                    
        elsif((Pais is null) and (Estado is not null) and (Edad is null)) then
        
        --SIN EDAD SIN PAIS PERO CON ESTADO
            Open p_cursor
              for select foto_persona, pasaporte_persona, nombre1_persona, COALESCE(nombre2_persona,' ')as nombre2_persona, apellido1_persona, apellido2_persona, 
                    calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Fecha_Sintoma(nombre1_persona) as fecha,
                    COALESCE(Sintomas(nombre1_persona),'No posee') as Sintomas,
                    COALESCE(Asistencia(nombre1_persona,Fecha_Sintoma(nombre1_persona)),'No posee') as Asistencia,
                    COALESCE(Patologias(nombre1_persona),'No posee') as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' /*and l.identificacion_lugar.nombre = Pais */ and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' and l2.identificacion_lugar.nombre = Estado and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Sintomas(nombre1_persona) is not null
                    /*and Edad = calculo_edad(fechanac_persona)*/
                    order by nombre1_persona;
                    
        elsif((Pais is null) and (Estado is null) and (Edad is null)) then 
            
            ---SIN NADA 
            Open p_cursor
              for select foto_persona, pasaporte_persona, nombre1_persona, COALESCE(nombre2_persona,' ')as nombre2_persona, apellido1_persona, apellido2_persona, 
                    calculo_edad(fechanac_persona) as age, genero_persona, l.identificacion_lugar.nombre,
                    l.identificacion_lugar.imagen, l2.identificacion_lugar.nombre, Fecha_Sintoma(nombre1_persona) as fecha,
                    COALESCE(Sintomas(nombre1_persona),'No posee') as Sintomas,
                    COALESCE(Asistencia(nombre1_persona,Fecha_Sintoma(nombre1_persona)),'No posee') as Asistencia,
                    COALESCE(Patologias(nombre1_persona),'No posee') as Patologias
                    from persona p, lugar l, lugar l2, lugar l3 
                    where l.tipo_lugar = 'Pais' /*and l.identificacion_lugar.nombre = Pais */ and l.id_lugar = l2.id_lugar_lugar 
                    and l2.tipo_lugar = 'Estado' /*and l2.identificacion_lugar.nombre = Estado*/ and l2.id_lugar = l3.id_lugar_lugar
                    and l3.tipo_lugar = 'Ciudad' and l3.id_lugar = p.id_lugar_persona and Sintomas(nombre1_persona) is not null
                    /*and Edad = calculo_edad(fechanac_persona)*/
                    order by nombre1_persona; 
        end if;
     
     
end PersonasSintomas;
/
-------------------------------------------------------------------------------------------------------------------------------------
-- Reporte 3 Def
-------------------------------------------------------------------------------------------------------------------------------------
create or replace function calculo_edad(fecha persona.fechanac_persona%type) return number
is
    edadp number;
    edadr number;
begin
    select round(months_between(sysdate,to_date(substr(fecha,1,9)))/12,0) into edadp from dual;

    if(edadp < 0) then
     select round(months_between(to_date('19-MAY-50'),to_date(substr(fecha,1,9)))/12,0) into edadr from dual;
     select round(months_between(sysdate,to_date('12-OCT-50'))/12,0) into edadp from dual;
     edadp:= edadp + edadr;

    end if;

    return edadp;
end calculo_edad;
---Funcion que trae las ciudades
create or replace function Lugares(nombre lugar.identificacion_lugar.nombre%type) return varchar2
is
    lug varchar2(100);
    ft boolean:= true;
    cursor c1 is select l3.identificacion_lugar.nombre as nombre
                 from lugar l, lugar l2, lugar l3
                 where l.identificacion_lugar.nombre = nombre and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar;
        
begin
     for i in c1 loop
        if(ft) then
            lug:= i.nombre;
            ft:= false;
        else
            lug:= concat(lug,concat(',',i.nombre));
        end if;
     end loop;
     
     return lug;
end Lugares;
/

---PROCEDIMIENTO QUE LLAMA JASPER
/*POR ALGUNA RAZON CUANDO EN JASPER SE LLAMA AL PROCEDIMIENTO CON DOS PARAMETROS TIMESTAMP
ESTOS NO MANDAN LAS FECHAS, LA CONSULTA FUNCIONA ACA EN ORACLE ASI QUE NI IDEA QUE SEA
LO QUE HICE FUE EN JASPER CREAR DOS PARAMETROS STRING, SE ESCRIBE LA FECHA TIPO UN STRING Y CUANDO LLEGUEN
ACA SE CONVIERTEN A TIMESTAMP*/
create or replace procedure viaje_personas (rep_cursor OUT sys_refcursor, fechai varchar2, fechaf varchar2) is
    --fechai2 timestamp:= to_timestamp(fechai,'dd/mm/yyyy hh:mi:ss');
    --fechaf2 timestamp:= to_timestamp(fechaf,'dd/mm/yyyy hh:mi:ss');
begin
    open rep_cursor
    for select p.pasaporte_persona"N° Pasaporte", p.foto_persona"Foto", p.nombre1_persona"Primer nombre", COALESCE(p.nombre2_persona,' ')"Segundo nombre",
            p.apellido1_persona"Primer Apellido", p.apellido2_persona"Segundo Apellido", calculo_edad(p.fechanac_persona)"Edad", l3.identificacion_lugar.imagen"Pais Residencia",
            l6.identificacion_lugar.imagen"Pais que visitó",to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha inicio del viaje",COALESCE(to_char(v.fechai_vuelo,'DD/MM/YYYY'),' ')"Fecha fin del viaje",
            Lugares(l6.identificacion_lugar.nombre)"Lugares donde visitó"
        from persona p, lugar l, lugar l2, lugar l3,lugar l4,lugar l5, lugar l6, per_vue pv, vuelo v
        where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and p.id_lugar_persona = l.id_lugar and p.pasaporte_persona = pv.pasaporte_persona_pv
            and pv.numero_vuelo_pv = v.numero_vuelo and v.id_lugar_llegada_vuelo = l4.id_lugar and l4.id_lugar_lugar = l5.id_lugar
            and l5.id_lugar_lugar = l6.id_lugar 
            and v.fechai_vuelo >= to_date( fechai, 'DD/MM/YYYY HH24:MI:SS') 
            and v.fechaf_vuelo <= to_date( fechaf, 'DD/MM/YYYY HH24:MI:SS' ); 
end;    
/
-------------------------------------------------------------------------------------------------------------------------------------
-- Reporte 4 Def
-------------------------------------------------------------------------------------------------------------------------------------
create or replace procedure paises (rep_cursor OUT sys_refcursor, pais lugar.identificacion_lugar.nombre%type, estado lugar.identificacion_lugar.nombre%type) is 
cant_infectados number;
cant_recuperados number;
cant_fallecidos number;
poblacion number;
begin
if (estado is null) then
--por pais, muestra todos los estados de un pais (correguir)
-- l.identificacion_lugar.imagen "Foto"
    select l.poblacion_lugar into poblacion from lugar l where l.identificacion_lugar.nombre = pais;
    --cantidad de infectados
    select count(*) into cant_infectados from persona where  id_lugar_persona > 
        (select min(l.id_lugar) from lugar l, lugar l2, lugar l3 where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar 
        and l3.identificacion_lugar.nombre = pais)
    and id_lugar_persona < (select MAX(l.id_lugar) from lugar l, lugar l2, lugar l3 where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar 
        and l3.identificacion_lugar.nombre = pais)
    and status_persona = 'Infectado';
    --cantidad de fallecidos
    select count(*) into cant_fallecidos from persona where  id_lugar_persona > 
        (select min(l.id_lugar) from lugar l, lugar l2, lugar l3 where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar 
        and l3.identificacion_lugar.nombre = pais)
    and id_lugar_persona < (select MAX(l.id_lugar) from lugar l, lugar l2, lugar l3 where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar 
        and l3.identificacion_lugar.nombre = pais)
    and fechadef_persona is not null;
    --cantidad de recuperados
    select count(*) into cant_recuperados from persona where  id_lugar_persona > 
        (select min(l.id_lugar) from lugar l, lugar l2, lugar l3 where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar 
        and l3.identificacion_lugar.nombre = pais)
    and id_lugar_persona < (select MAX(l.id_lugar) from lugar l, lugar l2, lugar l3 where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar 
        and l3.identificacion_lugar.nombre = pais)
    and status_persona = 'Recuperado';

    open rep_cursor
    for select l3.identificacion_lugar.imagen "Foto", l2.identificacion_lugar.nombre "Estado",
            poblacion"Poblacion", cant_infectados"Cantidad Infectados", round((cant_infectados/poblacion),2)"% Infectados", cant_recuperados
            "Cantidad Recuperados", round((cant_recuperados/poblacion),2)"% Recuperados",  cant_fallecidos"Cantidad Fallecidos", 
            round((cant_fallecidos/poblacion),2)"% Fallecidos" 
        from dual d, lugar l, lugar l2, lugar l3
        where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l3.identificacion_lugar.nombre = pais;
        
elsif(pais is null) then
--por estado (pasas el estado y devuelves un solo valor)
    open rep_cursor
    for select l3.identificacion_lugar.imagen "Foto", l2.identificacion_lugar.nombre"Estado",
            (select l2.poblacion_lugar from lugar l, lugar l2 where l.identificacion_lugar.nombre = estado and 
            l.id_lugar_lugar = l2.id_lugar)"Poblacion",
            (select count(*) from persona where  id_lugar_persona = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and status_persona = 'Infectado')"Cantidad Infectados",
             (select count(*) from persona where  id_lugar_persona = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and status_persona = 'Infectado')/(select l2.poblacion_lugar from lugar l, lugar l2 
                where l.identificacion_lugar.nombre = estado and l.id_lugar_lugar = l2.id_lugar)"% Infectados",
            (select count(*) from persona where  id_lugar_persona = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and status_persona = 'Recuperado')"Cantidad Recuperados",
            (select count(*) from persona where  id_lugar_persona = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and status_persona = 'Recuperado')/(select l2.poblacion_lugar from lugar l, lugar l2 
                where l.identificacion_lugar.nombre = estado and l.id_lugar_lugar = l2.id_lugar)"% Recuperados",
             (select count(*) from persona where  id_lugar_persona  = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and persona.fechadef_persona is not null)"Cantidad Fallecidos",
            (select count(*) from persona where  id_lugar_persona  = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and persona.fechadef_persona is not null)/(select l2.poblacion_lugar from lugar l, lugar l2 
                where l.identificacion_lugar.nombre = estado and l.id_lugar_lugar = l2.id_lugar)"% Fallecidos"
        from lugar l, lugar l2, lugar l3
        where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l2.identificacion_lugar.nombre = estado;
else 
--ambos parametros (devuelve un solo valor) 
    open rep_cursor
    for select l3.identificacion_lugar.imagen "Foto", l2.identificacion_lugar.nombre"Estado",
            (select l.poblacion_lugar from lugar l 
                where l.identificacion_lugar.nombre = pais)"Poblacion",
             (select count(*) from persona where  id_lugar_persona =
                (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar and l2.identificacion_lugar.nombre = estado)
             and status_persona = 'Infectado')"Cantidad Infectados",
            round((select count(*) from persona where  id_lugar_persona =
                (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar and l2.identificacion_lugar.nombre = estado)
             and status_persona = 'Infectado')/(select l.poblacion_lugar from lugar l 
                where l.identificacion_lugar.nombre = pais), 12)"% Infectados",
            (select count(*) from persona where  id_lugar_persona =
                (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar and l2.identificacion_lugar.nombre = estado)
             and status_persona = 'Recuperado')"Cantidad Recuperados",
            round((select count(*) from persona where  id_lugar_persona =
                (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar and l2.identificacion_lugar.nombre = estado)
             and status_persona = 'Recuperado')/(select l.poblacion_lugar from lugar l 
                where l.identificacion_lugar.nombre = pais),12)"% Recuperados",
            (select count(*) from persona where  id_lugar_persona  = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and persona.fechadef_persona is not null)"Cantidad Fallecidos",
            round((select count(*) from persona where  id_lugar_persona  = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and persona.fechadef_persona is not null)/(select l.poblacion_lugar from lugar l 
                where l.identificacion_lugar.nombre = pais),12)"% Fallecidos"
        from lugar l, lugar l2, lugar l3
        where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l3.identificacion_lugar.nombre = PAIS and
            l2.identificacion_lugar.nombre = estado;
end if;
end;
/
-------------------------------------------------------------------------------------------------------------------------------------
-- Reporte 5 Def
-------------------------------------------------------------------------------------------------------------------------------------
create or replace procedure aislamientoAp (pais lugar.identificacion_lugar.nombre%type, modelo number,rep5_cursor OUT sys_refcursor) 
is    
begin
    -- Solo con pais
    if ( modelo is null and pais is not null) then 
        OPEN rep5_cursor FOR 
        select l.identificacion_lugar.imagen"Pais", to_char(la.fechai_la, 'DD/MM/YYYY')"Fecha de Inicio", to_char(la.fechaf_la, 'DD/MM/YYYY')"Fecha de fin", 
                a.nombre_aislamiento"Modelo aplicado"
        from lugar l, lu_ais la, aislamiento a
        where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and l.identificacion_lugar.nombre = pais;
    -- Solo con numero de modelo
    elsif( pais is null and modelo is not null) then
        OPEN rep5_cursor FOR 
        select l.identificacion_lugar.imagen"Pais", to_char(la.fechai_la, 'DD/MM/YYYY')"Fecha de Inicio",  to_char(la.fechaf_la, 'DD/MM/YYYY')"Fecha de fin", 
        a.nombre_aislamiento"Modelo aplicado"
            from lugar l, lu_ais la, aislamiento a
            where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and a.tipo_aislamiento = modelo;
    -- Sin pais y sin modelo
    elsif (modelo is null and pais is null) then
        OPEN rep5_cursor FOR 
        select l.identificacion_lugar.imagen"Pais", la.fechai_la"Fecha de Inicio", la.fechaf_la"Fecha de fin", a.nombre_aislamiento"Modelo aplicado"
            from lugar l, lu_ais la, aislamiento a
            where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento;
    -- Pasando ambos parametros
    else
        OPEN rep5_cursor FOR 
        select l.identificacion_lugar.imagen"Pais", to_char(la.fechai_la, 'DD/MM/YYYY')"Fecha de Inicio", to_char(la.fechaf_la, 'DD/MM/YYYY')"Fecha de fin",
            a.nombre_aislamiento"Modelo aplicado"
            from lugar l, lu_ais la, aislamiento a
            where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and a.tipo_aislamiento = modelo and l.identificacion_lugar.nombre = pais;
    end if;
end;
/
-------------------------------------------------------------------------------------------------------------------------------------
-- Reporte 6 Def
-------------------------------------------------------------------------------------------------------------------------------------
--OBJETOS
create or replace type infeccionesD as object(
fecha date,
nombre varchar2(30),
nombreMex varchar2(30),
nombreUsa varchar2(30),
nombreVen varchar2(30),
nombreBra varchar2(30),
nombreEsp varchar2(30), 
imagen blob,
imagenMex blob,
imagenUsa blob,
imagenVen blob,
imagenBra blob,
imagenEsp blob,
infecciones number,
infeccion_Mex number,
infeccion_Usa number,
infeccion_Ven number,
infeccion_Bra number,
infeccion_Esp number
);
/
create or replace type fi2 as table of infeccionesD;
/
create or replace function Infections2(fechai date, fechaf date,pais varchar2) return fi2
is
    fechaIn fi2:= fi2();
   -- Qpob number;
   -- nombreP varchar2(30);
    imagenP blob;
    pInfectada number:=0;
    dias number;
    fechaD date;
    
    nombreM varchar2(30);
    nombreU varchar2(30);
    nombreV varchar2(30);
    nombreB varchar2(30);
    nombreE varchar2(30);
    imagenM blob;
    imagenU blob;
    imagenV blob;
    imagenB blob;
    imagenE blob;
    
    pInfectadaM number;
    pInfectadaU number;
    pInfectadaV number;
    pInfectadaB number;
    pInfectadaE number;
begin
    if(pais is not null) then

        select l.identificacion_lugar.imagen into imagenP 
        from lugar l where l.identificacion_lugar.nombre = pais;
        --Qpob:= Qpob*0.25;
        
        select round(to_date(fechaf,'DD-MM-YYYY') - to_date(fechai,'DD-MM-YYYY'),0) into dias from dual;
        fechaIn.extend(dias);
        fechaD:= fechai;
    
        for i in 1..dias loop
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectada 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = pais and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
           -- pInfectada:= round(DBMS_RANDOM.value(1,Qpob),0);
           -- fechaIn(i).fecha:= fechaD;
           -- fechaIn(i).infeccion:= pInfectada;
           
           if(i = dias) then
                fechaIn(i):= infeccionesD(fechaD,pais,null,null,null,null,null,imagenP,null,null,null,null,null
                ,pInfectada,null,null,null,null,null); 
                fechaD:= fechaD +1;
           else 
                fechaIn(i):= infeccionesD(fechaD,pais,null,null,null,null,null,null,null,null,null,null,null
                ,pInfectada,null,null,null,null,null); 
                fechaD:= fechaD +1; 
           end if;    
        end loop; 
        
    end if;
    
    if(pais is null) then 
        
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreM,imagenM  
        from lugar l where l.identificacion_lugar.nombre = 'Mexico';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreU,imagenU  
        from lugar l where l.identificacion_lugar.nombre = 'Estados Unidos';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreV,imagenV  
        from lugar l where l.identificacion_lugar.nombre = 'Venezuela';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreB,imagenB  
        from lugar l where l.identificacion_lugar.nombre = 'Brasil';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreE,imagenE  
        from lugar l where l.identificacion_lugar.nombre = 'Espana'; 
        
        
        select round(to_date(fechaf,'DD-MM-YYYY') - to_date(fechai,'DD-MM-YYYY'),0) into dias from dual;
        fechaIn.extend(dias);
        fechaD:= fechai;
        
        for i in 1..dias loop
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaV 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Venezuela' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaB 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Brasil' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaE 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Espana' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaM 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Mexico' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaU 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Estados Unidos' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            
            if(i = dias) then
                fechaIn(i):= infeccionesD(fechaD,null,nombreM,nombreU,nombreV,nombreB,nombreE,null,imagenM,imagenU,imagenV,imagenB,
                imagenE,null,pInfectadaM,pInfectadaU,pInfectadaV,pInfectadaB,pInfectadaE); 
                fechaD:= fechaD +1;
            else 
                fechaIn(i):= infeccionesD(fechaD,null,nombreM,nombreU,nombreV,nombreB,nombreE,null,null,null,null,null,
                null,null,pInfectadaM,pInfectadaU,pInfectadaV,pInfectadaB,pInfectadaE); 
                fechaD:= fechaD +1; 
            end if;    
        end loop; 
    end if;    
    return fechaIn;
end;
/
----PROCEDIMIENTO LLAMADO POR JASPER
create or replace procedure Grafico(p_cursor OUT sys_refcursor,Pais Varchar2, fechai date, fechaf date)
is    
begin  
    if(Pais is not null) then
       Open p_cursor 
       for select t.fecha,t.nombre,t.nombreMex,t.nombreUsa,t.nombreVen,t.nombreBra,t.nombreEsp,t.imagen,t.imagenMex,t.imagenUsa,
       t.imagenVen,t.imagenBra,t.imagenEsp,t.infecciones,t.infeccion_Mex,t.infeccion_Usa,t.infeccion_Ven,
       t.infeccion_Bra,t.infeccion_Esp
       from table(Infections2(fechai,fechaf,Pais)) t;
    --end if;
    elsif(Pais is null) then  
        Open p_cursor 
        for select t.fecha,t.nombre,t.nombreMex,t.nombreUsa,t.nombreVen,t.nombreBra,t.nombreEsp,t.imagen,t.imagenMex,t.imagenUsa,
        t.imagenVen,t.imagenBra,t.imagenEsp,t.infecciones,t.infeccion_Mex,t.infeccion_Usa,t.infeccion_Ven,
        t.infeccion_Bra,t.infeccion_Esp
        from table(Infections2(fechai,fechaf,Pais)) t;
    end if;
end Grafico;