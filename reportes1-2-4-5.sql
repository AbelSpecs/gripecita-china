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
--reporte 1
create or replace procedure personasInfectada (rep_cursor OUT sys_refcursor, pais lugar.identificacion_lugar.nombre%type, estado lugar.identificacion_lugar.nombre%type, 
edad number, patologia patologia.nombre_patologia%type) 
is 
BEGIN
    OPEN rep_cursor
    FOR select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País", 
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia"
        from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
            and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = pais
            and l2.identificacion_lugar.nombre = estado and  round(((TO_DATE(sysdate,'dd/mm/yyyy') - to_date(p.fechanac_persona,'dd/mm/yyyy'))/365),0) > edad 
            and pt.nombre_patologia = patologia
        order by p.fechanac_persona;
END;
/
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
--reporte5
create or replace PROCEDURE aislamientoAPLICADO (rep_cursor OUT sys_refcursor, pais varchar2, modelo number) IS
BEGIN
    if ( modelo is null )then 
        OPEN rep_cursor
        FOR select l.identificacion_lugar.imagen"Pais", to_char(la.fechai_la, 'DD/MM/YYYY')"Fecha de Inicio", to_char(la.fechaf_la, 'DD/MM/YYYY')"Fecha de fin", 
                a.nombre_aislamiento"Modelo aplicado"
        from lugar l, lu_ais la, aislamiento a
        where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and l.identificacion_lugar.nombre = pais;
    elsif( pais is null) then
        OPEN rep_cursor
        FOR select l.identificacion_lugar.imagen"Pais", la.fechai_la"Fecha de Inicio", la.fechaf_la"Fecha de fin", a.nombre_aislamiento"Modelo aplicado"
            from lugar l, lu_ais la, aislamiento a
            where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and a.tipo_aislamiento = modelo;
    end if;
END;
/