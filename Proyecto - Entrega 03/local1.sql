-- Sin parametros
select l.identificacion_lugar.imagen"Pais", p.identificacion_proveedor.imagen"Proveedor de I",
d.fecha_ds"Fecha", d.velocidad_subida_ds"Velocidad de Subida", d.velocidad_bajada_ds"Velocidad de Descarga",
d.horas_interrupcion_ds"Horas de Int"
from proveedor p, detalle_servicio d, lugar l
where p.id_proveedor = d.id_proveedor_ds
and d.id_lugar_ds = l.id_lugar;

-- Por pais
select l3.identificacion_lugar.imagen"Pais", p.identificacion_proveedor.imagen"Proveedor de I",
to_char(d.fecha_ds)"Fecha", AVG(d.velocidad_subida_ds)"Velocidad de Subida", AVG(d.velocidad_bajada_ds)"Velocidad de Descarga",
SUM(d.horas_interrupcion_ds)"Horas de Int"
from proveedor p, detalle_servicio d, lugar l, lugar l2, lugar l3
where p.id_proveedor = d.id_proveedor_ds
and d.id_lugar_ds = l.id_lugar
and l.id_lugar_lugar = l2.id_lugar
and l2.id_lugar_lugar = l3.id_lugar
and l3.identificacion_lugar.nombre = 'Venezuela'
group by d.fecha_ds;

-- Por fecha
select l.identificacion_lugar.imagen"Pais", p.identificacion_proveedor.imagen"Proveedor de I",
d.fecha_ds"Fecha", d.velocidad_subida_ds"Velocidad de Subida", d.velocidad_bajada_ds"Velocidad de Descarga",
d.horas_interrupcion_ds"Horas de Int"
from proveedor p, detalle_servicio d, lugar l
where p.id_proveedor = d.id_proveedor_ds
and d.id_lugar_ds = l.id_lugar
and to_char(d.fecha_ds, 'DD/MM/YYYY') = '01/06/2020';
--and d.fecha_ds BETWEEN to_date('01/06/2020', 'DD/MM/YYYY') and to_date('01/06/2020', 'DD/MM/YYYY') + 1; 

-- Por pais y fecha
select d.id_proveedor_ds, l3.identificacion_lugar.imagen"Pais", p.identificacion_proveedor.imagen"Proveedor de I",
d.fecha_ds"Fecha", d.velocidad_subida_ds"Velocidad de Subida", d.velocidad_bajada_ds"Velocidad de Descarga",
d.horas_interrupcion_ds"Horas de Int"
from proveedor p, detalle_servicio d, lugar l, lugar l2, lugar l3
where p.id_proveedor = d.id_proveedor_ds
and d.id_lugar_ds = l.id_lugar
and to_char(d.fecha_ds, 'DD/MM/YYYY') = '01/06/2020'
and l.id_lugar_lugar = l2.id_lugar
and l2.id_lugar_lugar = l3.id_lugar
and l3.identificacion_lugar.nombre = 'Venezuela';



select l.id_lugar
from lugar l, lugar l2, lugar l3
where l.id_lugar_lugar = l2.id_lugar
and l2.id_lugar_lugar = l3.id_lugar
and l3.identificacion_lugar.nombre = 'Venezuela';


select * from detalle_servicio
where id_lugar_ds in (select l.id_lugar
from lugar l, lugar l2, lugar l3
where l.id_lugar_lugar = l2.id_lugar
and l2.id_lugar_lugar = l3.id_lugar
and l3.identificacion_lugar.nombre = 'Venezuela')
order by fecha_ds, id_lugar_ds;

select * from proveedor;


create table tmp_reporte_12 (
    foto_pais blob null,
    foto_proveedor blob null,
    fecha timestamp null,
    prom_bajada number null,
    prom_subida number null,
    horas_int number null,
    id_pais number null,
    id_proveedor number null
);
drop table tmp_reporte_12;



select l3.id_lugar, d.id_proveedor_ds, to_char(d.fecha_ds, 'DD/MM/YYYY')"Fecha", AVG(d.velocidad_subida_ds)"Velocidad de Subida", AVG(d.velocidad_bajada_ds)"Velocidad de Descarga",
COALESCE(SUM(d.horas_interrupcion_ds),0)"Horas de Int"
from proveedor p, detalle_servicio d, lugar l, lugar l2, lugar l3
where p.id_proveedor = d.id_proveedor_ds
and d.id_lugar_ds = l.id_lugar
and l.id_lugar_lugar = l2.id_lugar
and l2.id_lugar_lugar = l3.id_lugar
and l3.identificacion_lugar.nombre = 'Venezuela'
group by d.fecha_ds, l3.id_lugar, d.id_proveedor_ds;

select l3.id_lugar, d.id_proveedor_ds, to_char(d.fecha_ds, 'DD/MM/YYYY')"Fecha", ROUND(AVG(d.velocidad_subida_ds),2)"Velocidad de Subida", 
ROUND(AVG(d.velocidad_bajada_ds),2)"Velocidad de Descarga", COALESCE(ROUND(SUM(d.horas_interrupcion_ds),2),0)"Horas de Int"
from proveedor p, detalle_servicio d, lugar l, lugar l2, lugar l3
where p.id_proveedor = d.id_proveedor_ds
and d.id_lugar_ds = l.id_lugar
and l.id_lugar_lugar = l2.id_lugar
and l2.id_lugar_lugar = l3.id_lugar
group by d.fecha_ds, l3.id_lugar, d.id_proveedor_ds;
