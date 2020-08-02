--REPORTE 7
create or replace procedure VUELOS_PASAJEROS (pais lugar.identificacion_lugar.nombre%type, fechai date, fechaf date, ret_cursor OUT sys_refcursor) is
begin
    if(pais is null and fechai is null and fechaf is null) then
        --NINGUN PARAMETROS
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar
        order by v.fechai_vuelo;
    elsif (pais is null and fechai is not null and fechaf is not null) then 
        --SIN PAÍS
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
         l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia",
            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and v.fechai_vuelo >= fechai
            and v.fechaf_vuelo <= fechaf
        order by v.fechai_vuelo;
    elsif (pais is null and fechai is null and fechaf is not null) then
        --SIN FechaI y SIN Pais
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia", to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar 
            and v.fechaf_vuelo <= fechaf
        order by v.fechai_vuelo;
    elsif (pais is null and fechaf is null and fechai is not null) then
        --SIN FechaF y SIN Pais         AQUI
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia",to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar 
            and l5.id_lugar_lugar = l6.id_lugar 
            and v.fechai_vuelo >= fechai
        order by v.fechai_vuelo;
    elsif (fechai is null and fechaf is null and pais is not null) then
        --Por Pais
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia", to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = pais
        order by v.fechai_vuelo;
    elsif (fechaf is null and pais is not null and fechai is not null) then
        --Por Pais sin FechF   
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia", to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = pais 
            and v.fechai_vuelo >= fechai
        order by v.fechai_vuelo;
    elsif (fechai is null and pais is not null and fechaf is not null) then
        --Por Pais sin FechaI
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia", to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = pais 
            and v.fechaf_vuelo <= fechaf
        order by v.fechai_vuelo;
    elsif (pais is not null and fechai is not null and fechaf is not null) then
        --TODOS LOS PARAMETROS
        OPEN ret_cursor FOR
        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia", to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
            p.apellido2_persona"Segundo Apellido"
        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = pais and v.fechai_vuelo >= fechai
            and v.fechaf_vuelo <= fechaf
        order by v.fechai_vuelo;
    end if;
end;

--pruebas
--select * from per_vue;
--select * from vuelo;

-- select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", 
--        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
--        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia",            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
--            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
--            p.apellido2_persona"Segundo Apellido"
--        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
--        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
--            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
--            l5.id_lugar_lugar = l6.id_lugar and l3.identificacion_lugar.nombre = 'Venezuela' 
--            and v.fechai_vuelo >= '29-FEB-20 08.00.00 AM' 
--            and v.fechaf_vuelo <= '29-FEB-20 01.00.00 PM' 


--TO_DATE( fechai, 'DD/MM/YYYY HH24:MI:SS')
----
-- select v.identificacion_aerolinea.imagen"Aerolinea", pv.numero_vuelo_pv"N° Vuelo", 
--        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
--        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia",to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
--            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
--            p.apellido2_persona"Segundo Apellido"
--        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
--        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
--            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar 
--            and l5.id_lugar_lugar = l6.id_lugar 
--            and v.fechai_vuelo >= TO_DATE('12/18/19 3:00:00 PM','MM/DD/YY HH:MI:SS AM')
--        order by v.fechai_vuelo;
--        
--        
--        
--        select v.identificacion_aerolinea.imagen"Aerolinea", v.identificacion_aerolinea.nombre"NAerolinea", pv.numero_vuelo_pv"N° Vuelo", 
--        l3.identificacion_lugar.nombre"Edo Origen", l3.identificacion_lugar.imagen"Desde", 
--        l6.identificacion_lugar.nombre"Edo Dest", l6.identificacion_lugar.imagen"Hacia",
--            to_char(v.fechai_vuelo,'DD/MM/YYYY')"Fecha de Inicio", to_char(v.fechaf_vuelo,'DD/MM/YYYY')"Fecha de Fin", p.pasaporte_persona"N° ID pasajero", 
--            p.foto_persona"Foto", p.nombre1_persona"Primer Nombre", COALESCE(p.nombre2_persona, ' ')"Segundo Nombre", p.apellido1_persona"Primer Apellido", 
--            p.apellido2_persona"Segundo Apellido"
--        from persona p, per_vue pv, vuelo v, lugar l, lugar l2, lugar l3, lugar l4, lugar l5, lugar l6
--        where p.pasaporte_persona = pv.pasaporte_persona_pv and pv.numero_vuelo_pv = v.numero_vuelo and pv.id_lugar_salida_vuelo_pv = l.id_lugar and 
--            pv.id_lugar_llegada_vuelo_pv = l4.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l4.id_lugar_lugar = l5.id_lugar and 
--            l5.id_lugar_lugar = l6.id_lugar
--        order by v.fechai_vuelo;
--        
        