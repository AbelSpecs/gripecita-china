--REPORTE 3
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
    
    for select p.pasaporte_persona"N° Pasaporte", p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre",
            p.apellido1_persona"Primer Apellido", p.apellido2_persona"Segundo Apellido", Covid.calculo_edad(p.fechanac_persona)"Edad", l3.identificacion_lugar.imagen"Pais Residencia",
            l6.identificacion_lugar.imagen"Pais que visitó",to_char(v.fechai_vuelo,'dd/mm/yyyy')"Fecha inicio del viaje",to_char(v.fechai_vuelo,'dd/mm/yyyy')"Fecha fin del viaje",
            Covid.Lugares(l6.identificacion_lugar.nombre)"Lugares donde visitó"
        from persona p, lugar l, lugar l2, lugar l3,lugar l4,lugar l5, lugar l6, per_vue pv, vuelo v
        where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and p.id_lugar_persona = l.id_lugar and p.pasaporte_persona = pv.pasaporte_persona_pv
            and pv.numero_vuelo_pv = v.numero_vuelo and v.id_lugar_llegada_vuelo = l4.id_lugar and l4.id_lugar_lugar = l5.id_lugar
            and l5.id_lugar_lugar = l6.id_lugar 
            and v.fechai_vuelo >= fechai and v.fechaf_vuelo <= fechaf;
end;