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
 
-- (select count(*)"cantidad" from persona p where 
  --  p.fechadef_persona <> null)y;

--REPORTE5
select l.identificacion_lugar.imagen"Pais", la.fechai_la"Fecha de Inicio", la.fechaf_la"Fecha de fin", a.nombre_aislamiento"Modelo aplicado"
from lugar l, lu_ais la, aislamiento a
where la.id_lugar_la = l.id_lugar and la.id_aislamiento_la = a.id_aislamiento and l.identificacion_lugar.nombre = 'España' and a.tipo_aislamiento = 4;


--Procedimientos
set serveroutput on; 

create or replace procedure personasInfectada (pais lugar.identificacion_lugar.nombre%type, estado lugar.identificacion_lugar.nombre%type, edad number,
patolgoia patologia.nombre_patologia%type) 
is 
begin
    declare 
        CURSOR RECORRIDO IS select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
            p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País", 
            p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia"
        from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
        where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
            and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = pais
            and l2.identificacion_lugar.nombre = estado and round(((TO_DATE(sysdate,'dd/mm/yyyy') - to_date(p.fechanac_persona,'dd/mm/yyyy'))/365),0) > edad 
            and pt.nombre_patologia = patolgoia
        order by p.fechanac_persona;
        REGISTRO_TABLA RECORRIDO%ROWTYPE;
    begin
        OPEN RECORRIDO;
        fetch recorrido into registro_tabla;
            WHILE RECORRIDO%FOUND LOOP
                DBMS_OUTPUT.put_line ('REGISTRO: '||);
                fetch recorrido into registro_tabla;
            END LOOP;
        CLOSE RECORRIDO;
    end;--declare
end;
/
create or replace procedure PruebapersonasInfectada is 
begin
    declare 
        CURSOR RECORRIDO IS select p.nombre1_persona "nombre1_persona", p.pasaporte_persona"pasaporte_persona" from persona where pasaporte_persona > 730;
        REGISTRO_TABLA recorrido%ROWTYPE;
    begin
        OPEN RECORRIDO;
        fetch recorrido into registro_tabla;
            WHILE RECORRIDO%FOUND LOOP
                DBMS_OUTPUT.put_line ('REGISTRO: '||REGISTRO_TABLA.nombre1_persona || ', '|| REGISTRO_TABLA.pasaporte_persona);
                fetch recorrido into registro_tabla;
            END LOOP;
        CLOSE RECORRIDO;
    end;--declare
end;
/
execute PruebapersonasInfectada;

--pruebas
SELECT
    *
FROM aislamiento;

select l.id_lugar, l2.identificacion_lugar.nombre "Estado", l3.identificacion_lugar.nombre "Pais", l3.identificacion_lugar.imagen "Foto"
from lugar l, lugar l2, lugar l3
where l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l3.identificacion_lugar.nombre = 'Brasil';

select p.pasaporte_persona, p.nombre1_persona, pt.nombre_patologia
from persona p, patologia pt, per_pat pp
where p.pasaporte_persona = pp.pasaporte_persona_pp and pp.id_patologia_pp = pt.id_patologia;

select p.pasaporte_persona, p.nombre1_persona, to_char(p.fechanac_persona, 'DD/MM/YYYY') "fechaNac"
from persona p 
where p.pasaporte_persona <= 10 and edad(p.fechanac_persona) < 21
order by p.fechanac_persona;
