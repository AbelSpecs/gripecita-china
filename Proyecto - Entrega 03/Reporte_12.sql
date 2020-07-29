create or replace procedure caida_wifi(pais lugar.identificacion_lugar.nombre%type, fecha date, ret_cursor OUT sys_refcursor)is
begin 

    delete from tmp_reporte_12;

    -- Sin parametros 
    if (pais is null and fecha is null) then
        insert into tmp_reporte_12 (id_pais, id_proveedor, fecha, prom_subida, prom_bajada, horas_int)
        select l3.id_lugar, d.id_proveedor_ds, d.fecha_ds"Fecha", ROUND(AVG(d.velocidad_subida_ds),2)"Velocidad de Subida", 
        ROUND(AVG(d.velocidad_bajada_ds),2)"Velocidad de Descarga", COALESCE(ROUND(SUM(d.horas_interrupcion_ds),2),0)"Horas de Int"
        from proveedor p, detalle_servicio d, lugar l, lugar l2, lugar l3
        where p.id_proveedor = d.id_proveedor_ds
        and d.id_lugar_ds = l.id_lugar
        and l.id_lugar_lugar = l2.id_lugar
        and l2.id_lugar_lugar = l3.id_lugar
        group by d.fecha_ds, l3.id_lugar, d.id_proveedor_ds;
    -- Con pais , sin fecha
    elsif (pais is not null and fecha is null) then
        insert into tmp_reporte_12 (id_pais, id_proveedor, fecha, prom_subida, prom_bajada, horas_int)
        select l3.id_lugar, d.id_proveedor_ds, d.fecha_ds"Fecha", ROUND(AVG(d.velocidad_subida_ds),2)"Velocidad de Subida", 
        ROUND(AVG(d.velocidad_bajada_ds),2)"Velocidad de Descarga", COALESCE(ROUND(SUM(d.horas_interrupcion_ds),2),0)"Horas de Int"
        from proveedor p, detalle_servicio d, lugar l, lugar l2, lugar l3
        where p.id_proveedor = d.id_proveedor_ds
        and d.id_lugar_ds = l.id_lugar
        and l.id_lugar_lugar = l2.id_lugar
        and l2.id_lugar_lugar = l3.id_lugar
        and l3.identificacion_lugar.nombre = pais
        group by d.fecha_ds, l3.id_lugar, d.id_proveedor_ds;
    -- Por fecha
    elsif (pais is null and fecha is not null) then
        insert into tmp_reporte_12 (id_pais, id_proveedor, fecha, prom_subida, prom_bajada, horas_int)
        select l3.id_lugar, d.id_proveedor_ds, d.fecha_ds"Fecha", ROUND(AVG(d.velocidad_subida_ds),2)"Velocidad de Subida", 
        ROUND(AVG(d.velocidad_bajada_ds),2)"Velocidad de Descarga", COALESCE(ROUND(SUM(d.horas_interrupcion_ds),2),0)"Horas de Int"
        from proveedor p, detalle_servicio d, lugar l, lugar l2, lugar l3
        where p.id_proveedor = d.id_proveedor_ds
        and d.id_lugar_ds = l.id_lugar
        and l.id_lugar_lugar = l2.id_lugar
        and l2.id_lugar_lugar = l3.id_lugar
        and to_char(d.fecha_ds, 'DD/MM/YYYY') = to_char(fecha, 'DD/MM/YYYY')
        group by d.fecha_ds, l3.id_lugar, d.id_proveedor_ds;
    -- Por pais y fecha
    elsif (pais is not null and fecha is not null) then 
        insert into tmp_reporte_12 (id_pais, id_proveedor, fecha, prom_subida, prom_bajada, horas_int)
        select l3.id_lugar, d.id_proveedor_ds, d.fecha_ds"Fecha", ROUND(AVG(d.velocidad_subida_ds),2)"Velocidad de Subida", 
        ROUND(AVG(d.velocidad_bajada_ds),2)"Velocidad de Descarga", COALESCE(ROUND(SUM(d.horas_interrupcion_ds),2),0)"Horas de Int"
        from proveedor p, detalle_servicio d, lugar l, lugar l2, lugar l3
        where p.id_proveedor = d.id_proveedor_ds
        and d.id_lugar_ds = l.id_lugar
        and to_char(d.fecha_ds, 'DD/MM/YYYY') = to_char(fecha, 'DD/MM/YYYY')
        and l.id_lugar_lugar = l2.id_lugar
        and l2.id_lugar_lugar = l3.id_lugar
        and l3.identificacion_lugar.nombre = pais
        group by d.fecha_ds, l3.id_lugar, d.id_proveedor_ds;
    end if;

    update tmp_reporte_12 set foto_pais = (select l.identificacion_lugar.imagen from lugar l where l.id_lugar = id_pais),
    foto_proveedor = (select p.identificacion_proveedor.imagen from proveedor p where p.id_proveedor = tmp_reporte_12.id_proveedor);

    OPEN ret_cursor FOR
    select foto_pais"Foto pais", foto_proveedor"Foto In", to_char(fecha, 'DD/MM/YYYY')"Fecha", 
    concat(prom_subida,' MB')"Subida" , concat(prom_bajada,' MB')"Descarga", concat(horas_int,' horas')"Horas"
    from tmp_reporte_12
    order by fecha;
    
end;