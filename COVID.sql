--REPORTE1
select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
    p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País", 
    p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia"
from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
    and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = 'Venezuela'
    and l2.identificacion_lugar.nombre = 'Merida' and edad(p.fechanac_persona) > 30 and pt.nombre_patologia = 'Diabetes'
order by p.fechanac_persona;

--REPORTE2
select p.pasaporte_persona "N° ID", p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
    p.apellido2_persona "Segundo apellido", edad(p.fechanac_persona) "Edad", l3.identificacion_lugar.imagen "País", 
    p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia", s.nombre_sintoma "Sintoma",
    to_char(ps.fecisintoma_ps, 'dd/mm/yyyy')"Fecha de sintoma", ps.atencionmedica_ps "Tratado con atencion medica"
from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt, per_sin ps, sintoma s 
where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
    and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = 'Venezuela'
    and l2.identificacion_lugar.nombre = 'Merida' and edad(p.fechanac_persona) > 30 and pt.nombre_patologia = 'Diabetes' and
    ps.pasaporte_persona_ps = p.pasaporte_persona and ps.id_sintoma_ps = s.id_sintoma
order by p.fechanac_persona;

--REPORTE4
select l.identificacion_lugar.imagen "Pais", l2.identificacion_lugar.nombre"Estado", l.poblacion_lugar,  x.cantidad "Cantidad de infectados"
from lugar l, lugar l2, (select count(*)"cantidad" from persona p where 
    p.status_persona = 'Infectado')x
where l.identificacion_lugar.nombre = 'Brasil' and l.id_lugar_lugar = l2.id_lugar;
 
--REPORTE5
select l.identificacion_lugar.imagen"Pais", la.fechai_la"Fecha de Inicio", la.fechaf_la"Fecha de fin", a.nombre_aislamiento"Modelo aplicado"
from lugar l, lu_ais la, aislamiento a
where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and l.identificacion_lugar.nombre = 'España' and a.tipo_aislamiento = 4;
/
--REPORTE 7
create or replace procedure VUELOS_PASAJEROS (pais lugar.identificacion_lugar.nombre%type, fechai date, fechaf date, ret_cursor OUT sys_refcursor) is
begin
    if(pais is null and fechai is null and fechaf is null) then
        --NINGUN PARAMETROS
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", l3.identificacion_lugar.nombre"Desde", l6.identificacion_lugar.nombre"Hasta",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar
        order by v.fechai_vuelo;
    elsif (pais is NULL) then 
        --SIN PAÍS
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", l3.identificacion_lugar.nombre"Desde", l6.identificacion_lugar.nombre"Hasta",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and v.fechai_vuelo >= TO_DATE( '15/12/2019', 'DD/MM/YYYY HH24:MI:SS') and 
            v.fechaf_vuelo <= TO_DATE( '15/02/2020', 'DD/MM/YYYY HH24:MI:SS')
        order by v.fechai_vuelo;
    elsif (pais is null and fechai is null) then
        --SIN FechaI y SIN Pais
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", l3.identificacion_lugar.nombre"Desde", l6.identificacion_lugar.nombre"Hasta",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and v.fechaf_vuelo <= TO_DATE( '15/02/2020', 'DD/MM/YYYY HH24:MI:SS')
        order by v.fechai_vuelo;
    elsif (pais is null and fechaf is null) then
        --SIN FechaF y SIN Pais
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", l3.identificacion_lugar.nombre"Desde", l6.identificacion_lugar.nombre"Hasta",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and v.fechai_vuelo >= TO_DATE( '15/12/2019', 'DD/MM/YYYY HH24:MI:SS')
        order by v.fechai_vuelo;
    elsif (fechai is null and fechaf is null) then
        --Por Pais
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", l3.identificacion_lugar.nombre"Desde", l6.identificacion_lugar.nombre"Hasta",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = 'Venezuela'
        order by v.fechai_vuelo;
    elsif (fechaf is null) then
        --Por Pais sin FechF
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", l3.identificacion_lugar.nombre"Desde", l6.identificacion_lugar.nombre"Hasta",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = 'Venezuela' and v.fechai_vuelo >= TO_DATE( '15/12/2019', 'DD/MM/YYYY HH24:MI:SS') 
        order by v.fechai_vuelo;
    elsif (fechai is null) then
        --Por Pais sin FechaI
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", l3.identificacion_lugar.nombre"Desde", l6.identificacion_lugar.nombre"Hasta",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = 'Venezuela' and v.fechaf_vuelo <= TO_DATE( '15/02/2020', 'DD/MM/YYYY HH24:MI:SS')
        order by v.fechai_vuelo;
    elsif (pais is not null and fechai is not null and fechaf is not null) then
        --TODOS LOS PARAMETROS
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", l3.identificacion_lugar.nombre"Desde", l6.identificacion_lugar.nombre"Hasta",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = 'Venezuela' and v.fechai_vuelo >= TO_DATE( '15/12/2019', 'DD/MM/YYYY HH24:MI:SS') and 
            v.fechaf_vuelo <= TO_DATE( '15/02/2020', 'DD/MM/YYYY HH24:MI:SS')
        order by v.fechai_vuelo;
    end if;
end;
/
--REPORTE 10
create or replace procedure EFECTIVIDAD_MODELO (pais lugar.identificacion_lugar.nombre%type, ret_cursor OUT sys_refcursor) is
v_fallecidos number;
v_recuperados number;
v_infectados number;
begin
        --cantidad de infectados
        select COUNT(*) into v_infectados from persona p, lugar l, lugar l2, lugar l3
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l3.identificacion_lugar.nombre = 'Venezuela'
            and p.status_persona = 'Infectado';
        dbms_output.put_line('cant infectados '|| v_infectados);
    
         --cantidad de recuperados
        select COUNT(*) into v_recuperados from his_medico h, persona p, lugar l, lugar l2, lugar l3
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l3.identificacion_lugar.nombre = 'Venezuela'
            and p.status_persona = 'Recuperado';
        dbms_output.put_line('cant recuperados '|| v_recuperados);
    
        --cantidad de fallecidos
        select count(*) into v_fallecidos
        from persona p, lugar l, lugar l2, lugar l3 
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and 
            l3.identificacion_lugar.nombre = 'Venezuela' and p.fechadef_persona is not null;
        dbms_output.put_line('cant fallecidos '|| v_fallecidos);
        
        OPEN ret_cursor FOR
        select l.identificacion_lugar.imagen "Pais", a.nombre_aislamiento "Modelo Utilizado", to_char(la.fechai_la,'DD/MM/YYYY')"Fecha de Inicio del modelo",
            to_char(porcentaje_efectividad (v_infectados, v_recuperados, v_fallecidos)||'%')"Porcentaje de Efectividad"
        from lu_ais la, lugar l, aislamiento a
        where l.identificacion_lugar.nombre = pais and la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento;
end;
/