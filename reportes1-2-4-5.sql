--reporte 1 sin parametros
create or replace procedure personasInfectada_sin (rep_cursor OUT sys_refcursor) 
is 
BEGIN
    OPEN rep_cursor
    FOR select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País", 
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia"
        from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
            and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia 
        order by p.fechanac_persona;
END;
/
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
patolgoia patologia.nombre_patologia%type, ret_cursor OUT sys_refcursor) 
is 
begin
    --DBMS_OUTPUT.put_line ('Entro al proc');
    --OPEN RECORRIDO;
    OPEN ret_cursor FOR
    SELECT p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
        p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
        p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", getPatologias(p.pasaporte_persona) "Patologias"
    from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
    where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
        and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = pais
        and l2.identificacion_lugar.nombre = estado and round(EXTRACT(DAY FROM sysdate - p.fechanac_persona)/365,0) > edad 
        and pt.nombre_patologia = patolgoia
    order by p.fechanac_persona;
end;/
--Reporte2
create or replace procedure personasInfectada (pais lugar.identificacion_lugar.nombre%type, estado lugar.identificacion_lugar.nombre%type, edad number) 
is 
begin
    
    select p.pasaporte_persona "N° ID", p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", 
        p.apellido1_persona"Primer apellido", p.apellido2_persona "Segundo apellido", edad(p.fechanac_persona) "Edad", l3.identificacion_lugar.imagen "País", 
        p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia", s.nombre_sintoma "Sintoma",
        to_char(ps.fecisintoma_ps, 'dd/mm/yyyy')"Fecha de sintoma", ps.atencionmedica_ps "Tratado con atencion medica"
    from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt, per_sin ps, sintoma s 
    where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
        and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = pais
        and l2.identificacion_lugar.nombre = estado and round(((TO_DATE(sysdate,'dd/mm/yyyy') - to_date(p.fechanac_persona,'dd/mm/yyyy'))/365),0) > edad 
        and pt.nombre_patologia = 'Diabetes' and ps.pasaporte_persona_ps = p.pasaporte_persona and ps.id_sintoma_ps = s.id_sintoma
    order by p.fechanac_persona;
end;
/
--reporte4
create or replace procedure paises (rep_cursor OUT sys_refcursor, pais lugar.identificacion_lugar.nombre%type, estado lugar.identificacion_lugar.nombre%type) is 
cant_infectados number;
cant_recuperados number;
cant_fallecidos number;
poblacion number;
begin
if (estado is null) then
--por pais, muestra todos los estados de un pais (correguir)
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
    for select  l.identificacion_lugar.imagen "Pais", l2.identificacion_lugar.nombre "Estado",
            poblacion"Población", cant_infectados"Cantidad de Infectados", round((cant_infectados/poblacion),2)"% infectados", cant_recuperados
            "Cantidad de Recuperados", round((cant_recuperados/poblacion),2)"% recuperados",  cant_fallecidos"Cantidad de Fallecidos", 
            round((cant_fallecidos/poblacion),2)"% fallecidos" 
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
                where l.identificacion_lugar.nombre = estado and l.id_lugar_lugar = l2.id_lugar)"% infectados",
            (select count(*) from persona where  id_lugar_persona = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and status_persona = 'Recuperado')"Cantidad Recuperados",
            (select count(*) from persona where  id_lugar_persona = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and status_persona = 'Recuperado')/(select l2.poblacion_lugar from lugar l, lugar l2 
                where l.identificacion_lugar.nombre = estado and l.id_lugar_lugar = l2.id_lugar)"% Recuperado",
             (select count(*) from persona where  id_lugar_persona  = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and persona.fechadef_persona is not null)"Cantidad fellecidos",
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
                where l.identificacion_lugar.nombre = pais), 12)"% infectados",
            (select count(*) from persona where  id_lugar_persona =
                (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar and l2.identificacion_lugar.nombre = estado)
             and status_persona = 'Recuperado')"Cantidad Recuperados",
            round((select count(*) from persona where  id_lugar_persona =
                (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar and l2.identificacion_lugar.nombre = estado)
             and status_persona = 'Recuperado')/(select l.poblacion_lugar from lugar l 
                where l.identificacion_lugar.nombre = pais),12)"% Recuperado",
            (select count(*) from persona where  id_lugar_persona  = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and persona.fechadef_persona is not null)"Cantidad fallecidos",
            round((select count(*) from persona where  id_lugar_persona  = (select l.id_lugar from lugar l, lugar l2 where l.id_lugar_lugar = l2.id_lugar 
                and l2.identificacion_lugar.nombre = estado) and persona.fechadef_persona is not null)/(select l.poblacion_lugar from lugar l 
                where l.identificacion_lugar.nombre = pais),12)"% Fallecidos"
        from lugar l, lugar l2, lugar l3
        where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l3.identificacion_lugar.nombre = PAIS and
            l2.identificacion_lugar.nombre = estado;
end if;
end;
/
--reporte5 sin parametros
create or replace PROCEDURE aislamientoAPLICADO_sin (rep_cursor OUT sys_refcursor) IS
BEGIN
    OPEN rep_cursor
    FOR select l.identificacion_lugar.imagen"Pais", la.fechai_la"Fecha de Inicio", la.fechaf_la"Fecha de fin", a.nombre_aislamiento"Modelo aplicado"
        from lugar l, lu_ais la, aislamiento a
        where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento;
END;
/
-------------------------------------------------------------------------------------------------------------------------------------
-- Reporte5 Def
-------------------------------------------------------------------------------------------------------------------------------------
create or replace procedure aislamientoAp (pais lugar.identificacion_lugar.nombre%type, modelo number,rep5_cursor OUT sys_refcursor) 
is    
begin
    if ( modelo is null )then 
        OPEN rep5_cursor
        FOR select l.identificacion_lugar.imagen"Pais", to_char(la.fechai_la, 'DD/MM/YYYY')"Fecha de Inicio", to_char(la.fechaf_la, 'DD/MM/YYYY')"Fecha de fin", 
                a.nombre_aislamiento"Modelo aplicado"
        from lugar l, lu_ais la, aislamiento a
        where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and l.identificacion_lugar.nombre = pais;
    elsif( pais is null) then
        OPEN rep5_cursor
        FOR select l.identificacion_lugar.imagen"Pais", to_char(la.fechai_la, 'DD/MM/YYYY')"Fecha de Inicio",  to_char(la.fechaf_la, 'DD/MM/YYYY')"Fecha de fin", 
        a.nombre_aislamiento"Modelo aplicado"
            from lugar l, lu_ais la, aislamiento a
            where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and a.tipo_aislamiento = modelo;
    else
        OPEN rep5_cursor
        FOR select l.identificacion_lugar.imagen"Pais", to_char(la.fechai_la, 'DD/MM/YYYY')"Fecha de Inicio", to_char(la.fechaf_la, 'DD/MM/YYYY')"Fecha de fin",
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
create or replace type fecha_infeccion as object(
fecha date,
infeccion number
);
/
create type fi as table of fecha_infeccion;
/     
---FUNCION PARA EL RANGO DE FECHAS E INFECCIONES
create or replace function Infections(fechai date, fechaf date,pais varchar2) return fi
is
   fechaIn fi:= fi();
   Qpob number;
   pInfectada number;
   dias number;
   fechaD date;
begin
    select l.poblacion_lugar into Qpob from lugar l where l.identificacion_lugar.nombre = pais;
    Qpob:= Qpob*0.25;
    select round(to_date(fechaf,'DD-MM-YYYY') - to_date(fechai,'DD-MM-YYYY'),0) into dias from dual;
    fechaIn.extend(dias);
    fechaD:= fechai;
    
    for i in 1..dias loop
        pInfectada:= round(DBMS_RANDOM.value(1,Qpob),0);
       -- fechaIn(i).fecha:= fechaD;
       -- fechaIn(i).infeccion:= pInfectada;
        fechaIn(i):= fecha_infeccion(fechaD,pInfectada); 
        fechaD:= fechaD +1;
    end loop; 
    
    return fechaIn;
end Infections;
/
----PROCEDIMIENTO LLAMADO POR JASPER
create or replace procedure Grafico(p_cursor OUT sys_refcursor,Pais Varchar2, fechai date, fechaf date)
is    
begin  
       OPEN p_cursor 
       for select l.identificacion_lugar.imagen, l.identificacion_lugar.nombre ,t.fecha, t.infeccion from table(Infections(fechai,fechaf,Pais)) t,
       lugar l where l.tipo_lugar = 'Pais' and l.identificacion_lugar.nombre = Pais;
     
end Grafico;