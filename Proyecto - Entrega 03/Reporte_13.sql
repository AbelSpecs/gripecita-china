create or replace procedure cierre_fronterizo (pais lugar.identificacion_lugar.nombre%type,fechai date, fechaf date, ret_cursor OUT sys_refcursor) is
begin 
    
    -- Solo con pais y los fechas en null
    if (pais is not null and fechai is null and fechaf is null) then
        OPEN ret_cursor FOR
        select l.identificacion_lugar.imagen"Foto" ,to_char(h.fechai_histf, 'DD/MM/YYYY')"Fecha Inicio", 
        to_char(h.fechaf_histf, 'DD/MM/YYYY')"Fecha Fin" 
        from hist_fronterizo h, lugar l
        where h.id_lugar_histf = l.id_lugar
        and l.identificacion_lugar.nombre = pais;
     -- Todos en null
    elsif (pais is null and fechai is null and fechaf is null) then 
        OPEN ret_cursor FOR
        select l.identificacion_lugar.imagen"Foto" ,to_char(h.fechai_histf, 'DD/MM/YYYY')"Fecha Inicio", 
        to_char(h.fechaf_histf, 'DD/MM/YYYY')"Fecha Fin"
        from hist_fronterizo h, lugar l
        where h.id_lugar_histf = l.id_lugar;
    -- Con todos los parametros
    elsif (pais is not null and fechai is not null and fechaf is not null) then 
        OPEN ret_cursor FOR
        select l.identificacion_lugar.imagen"Foto" ,to_char(h.fechai_histf, 'DD/MM/YYYY')"Fecha Inicio", 
        to_char(h.fechaf_histf, 'DD/MM/YYYY')"Fecha Fin" 
        from hist_fronterizo h, lugar l
        where h.id_lugar_histf = l.id_lugar
        and h.fechai_histf >= fechai
        and h.fechaf_histf <= fechaf
        and l.identificacion_lugar.nombre = pais;
    -- Solo fechas y pais en null
    elsif (pais is null and fechai is not null and fechaf is not null) then 
        OPEN ret_cursor FOR
        select l.identificacion_lugar.imagen"Foto" ,to_char(h.fechai_histf, 'DD/MM/YYYY')"Fecha Inicio", 
        to_char(h.fechaf_histf, 'DD/MM/YYYY')"Fecha Fin" 
        from hist_fronterizo h, lugar l
        where h.id_lugar_histf = l.id_lugar
        and h.fechai_histf >= fechai
        and h.fechaf_histf <= fechaf;
    -- Solo fecha Inicio y el resto en null
    elsif (pais is null and fechai is not null and fechaf is null) then 
        OPEN ret_cursor FOR
        select l.identificacion_lugar.imagen"Foto" ,to_char(h.fechai_histf, 'DD/MM/YYYY')"Fecha Inicio", 
        to_char(h.fechaf_histf, 'DD/MM/YYYY')"Fecha Fin" 
        from hist_fronterizo h, lugar l
        where h.id_lugar_histf = l.id_lugar
        and h.fechai_histf >= fechai;
    -- Solo fecha Final y el resto en null
    elsif (pais is null and fechai is null and fechaf is not null) then 
        OPEN ret_cursor FOR
        select l.identificacion_lugar.imagen"Foto" ,to_char(h.fechai_histf, 'DD/MM/YYYY')"Fecha Inicio", 
        to_char(h.fechaf_histf, 'DD/MM/YYYY')"Fecha Fin"
        from hist_fronterizo h, lugar l
        where h.id_lugar_histf = l.id_lugar
        and h.fechaf_histf <= fechaf;
    end if;
end;