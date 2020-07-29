-------FUNCIONES DE REPORTE 8
---FUNCION INSUMOS
create or replace function Insumos(id_cs centro_salud.id_csalud%type) return varchar2
is
    cursor c1 is (Select ins.nombre_insumo as insumos, inv.cantidad_inventario as cantidad from insumo ins, centro_salud ce, inventario inv 
                    where ce.id_csalud = id_cs and ce.id_csalud = inv.id_csalud_inventario 
                    and inv.id_insumo_inventario = ins.id_insumo);
    insu varchar2(200);
    ft boolean:= true;                
begin
     for i in c1 loop
        if(i.cantidad > 0) then 
            if(ft) then
                insu:= i.insumos;
                ft:= false;
            else
                insu:= concat(insu,concat(',',i.insumos));
            end if;
        end if;    
     end loop;
     
     return insu;
     
end Insumos;
/
---FUNCION CASOS TRATADOS
create or replace function Casos(id_cs centro_salud.id_csalud%type) return number
is
    infectados number;
begin
    select count(p.pasaporte_persona) into infectados from persona p, his_medico hm, centro_salud ce
    where ce.id_csalud = hm.id_csalud_histm and hm.pasaporte_persona_histm = p.pasaporte_persona 
    and p.status_persona = 'Infectado' and hm.feciinicialingreso_histm is not null and ce.id_csalud = id_cs;
    
    return infectados;
    
end Casos;
/
---FUNCION FALLECIDOS
create or replace function Fallecidos(id_cs centro_salud.id_csalud%type) return number
is
    muertos number;
begin
    select count(p.pasaporte_persona) into muertos from persona p, his_medico hm, centro_salud ce
    where ce.id_csalud = hm.id_csalud_histm and hm.pasaporte_persona_histm = p.pasaporte_persona 
    and p.fechadef_persona is not null and hm.feciinicialingreso_histm is not null and hm.fecfinalingreso_histm is not null
    and ce.id_csalud = id_cs;
    
    return muertos;
    
end Fallecidos;
/
--------FUNCION RECUPERADOS
create or replace function Recuperados(id_cs centro_salud.id_csalud%type) return number
is
    recuperados number;
begin
    select count(p.pasaporte_persona) into recuperados from persona p, his_medico hm, centro_salud ce
    where ce.id_csalud = hm.id_csalud_histm and hm.pasaporte_persona_histm = p.pasaporte_persona 
    and p.fechadef_persona is null and hm.feciinicialingreso_histm is not null and hm.fecfinalingreso_histm is not null
    and p.status_persona = 'Recuperado' and ce.id_csalud = id_cs;
    
    return recuperados;
    
end Recuperados;
/
-----FUNCION DIRECCION
create or replace function direc(id_cs centro_salud.id_csalud%type) return varchar2
is
    av1 varchar2(100); 
    av2 varchar2(100);
    urb varchar2(100);
    city varchar2(100);
    dir varchar2(500);
    ft boolean:= true;
    
begin
    select ce.direccion_csalud.avenida1 as "Avenida 1", ce.direccion_csalud.avenida2 as "Avenida 2",
        ce.direccion_csalud.urbanizacion as "Urbanizacion", l3.identificacion_lugar.nombre as "Ciudad"
        into av1, av2, urb, city
        from centro_salud ce, lugar l, lugar l2, lugar l3
        where ce.id_csalud = id_cs and ce.id_lugar_csalud = l3.id_lugar and l3.id_lugar_lugar = l2.id_lugar 
        and l2.id_lugar_lugar = l.id_lugar;
    
    for i in 1..4 loop
        if(i = 1) then
            if(av1 is not null) then
                if(ft) then
                    dir:= av1;
                    ft:=false;
                else    
                    dir:= dir || ', ' || av1;
                end if; 
            end if;
            
        elsif(i = 2) then
            if(av2 is not null) then
                dir:= dir || ', ' || av2;
            end if;
            
        elsif(i = 3) then
            if(urb is not null) then
                dir:= dir || ', ' || urb;
            end if;
            
        elsif(i = 4) then
            if(city is not null) then
                dir:= dir || ', ' || city;
            end if;    
        end if; 
        
    end loop;
   
    return dir;  
    
end direc;
/
--PROCEDIMIENTO PARA CONECTAR A JASPER
create or replace procedure Centros(rep_cursor OUT sys_refcursor)
is

begin
    open rep_cursor
    
        for select direc(ce.id_csalud) as "Direccion",ce.nombre_csalud as "Nombre",
                    ce.camas_csalud as "Camas", Insumos(ce.id_csalud) as "Insumos", Casos(ce.id_csalud) as "Casos tratados", 
                    Fallecidos(ce.id_csalud) as "Fallecidos", Recuperados(ce.id_csalud) as "Recuperados"
        from centro_salud ce
        group by ce.nombre_csalud, ce.camas_csalud,Insumos(ce.id_csalud), Casos(ce.id_csalud), 
                    Fallecidos(ce.id_csalud),Recuperados(ce.id_csalud),direc(ce.id_csalud); 

end Centros;