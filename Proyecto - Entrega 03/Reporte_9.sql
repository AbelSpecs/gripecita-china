create or replace procedure ayuda_humanitaria(pais lugar.identificacion_lugar.nombre%type, ret_cursor OUT sys_refcursor) is
begin 
    
    delete from tmp_reporte_9;
    
    if (pais is not null) then
        INSERT INTO tmp_reporte_9 (fecha, origne_name, destino_name, origen, destino, monto) 
        select d.fecha_donacion"Fecha",l2.identificacion_lugar.nombre"PaisO", l3.identificacion_lugar.nombre"PaisD", 
        d.id_lugar_ofrece_donacion"Origen", d.id_lugar_recibe_donacion"Destino", SUM(d.monto_donacion)"CantDonado"
        from donacion d, lugar l2, lugar l3
        where d.id_lugar_ofrece_donacion = l2.id_lugar
        and d.id_lugar_recibe_donacion = l3.id_lugar
        and l3.identificacion_lugar.nombre = pais
        group by l2.identificacion_lugar.nombre, l3.identificacion_lugar.nombre, d.fecha_donacion, 
                d.id_lugar_ofrece_donacion, d.id_lugar_recibe_donacion;
    elsif (pais is null) then
        INSERT INTO tmp_reporte_9 (fecha, origne_name, destino_name, origen, destino, monto) 
        select d.fecha_donacion"Fecha",l2.identificacion_lugar.nombre"PaisO", l3.identificacion_lugar.nombre"PaisD", 
        d.id_lugar_ofrece_donacion"Origen", d.id_lugar_recibe_donacion"Destino", SUM(d.monto_donacion)"CantDonado"
        from donacion d, lugar l2, lugar l3
        where d.id_lugar_ofrece_donacion = l2.id_lugar
        and d.id_lugar_recibe_donacion = l3.id_lugar
        group by l2.identificacion_lugar.nombre, l3.identificacion_lugar.nombre, d.fecha_donacion, 
                d.id_lugar_ofrece_donacion, d.id_lugar_recibe_donacion;
    end if;
    
    UPDATE tmp_reporte_9 SET insumos = getInsumos(origen, destino, fecha), 
    origen_foto = (SELECT l.identificacion_lugar.imagen FROM lugar l WHERE l.id_lugar = origen), 
    destino_foto = (SELECT l.identificacion_lugar.imagen FROM lugar l WHERE l.id_lugar = destino);   

    OPEN ret_cursor FOR
    SELECT origen_foto, destino_foto, to_char(fecha,'DD/MM/YYYY')"Fehca", insumos, '$ '||monto FROM tmp_reporte_9;
end;