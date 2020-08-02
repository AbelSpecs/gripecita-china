---REPORTE 11 
----FUNCION INFECTADOS
create or replace function Contagiados(fechaI date) return number
is
    infec number;
begin
    select count(p.pasaporte_persona) into infec from persona p, his_medico hm 
    where p.status_persona = 'Infectado' 
    and p.pasaporte_persona = hm.pasaporte_persona_histm 
    and hm.feciinicialingreso_histm <= fechaI;
    
    return infec; 
end Contagiados;
/
------FUNCION PARA FALLECIDOS
create or replace function Muertos(fechaFn date) return number
is
    fac number;
begin
    select count(p.pasaporte_persona) into fac from persona p 
    where p.fechadef_persona <= fechaFn;
    
    return fac;
end Muertos;
/
-----FUNCION PARA RECUPERADOS
create or replace function Curados(fechaR date) return number
is
    rec number;
begin
    select count(p.pasaporte_persona) into rec from persona p, his_medico hm 
    where p.status_persona = 'Recuperado'
    and p.pasaporte_persona = hm.pasaporte_persona_histm 
    and hm.fecfinalingreso_histm <= fechaR;
    
    return rec;
end Curados;
/
-------PORCENTAJE INFECTADOS
create or replace function PorcentajeI(fechapi date) return varchar2
is
    infec number;
    ptotal number;
    pinfec number;
    pinfec2 varchar2(20);
begin
    select count(p.pasaporte_persona) into infec from persona p, his_medico hm 
    where p.status_persona = 'Infectado' 
    and p.pasaporte_persona = hm.pasaporte_persona_histm 
    and hm.feciinicialingreso_histm <= fechapi;
    
    select count(p.pasaporte_persona) into ptotal from persona p;
    
    pinfec:= round(((infec * 100) / ptotal),2);
    if(pinfec < 1) then
        pinfec2:= to_char(pinfec,'0.99')||'%';
    else 
         pinfec2:= to_char(pinfec,'999.99')||'%';
    end if;
    
    return pinfec2;
end PorcentajeI;
/
-----PORCENTAJE FALLECIDOS
create or replace function PorcentajeF(fechafa date) return varchar2
is
    fac number;
    ptotal number;
    pfac number;
    pfac2 varchar2(20);
begin   
    select count(p.pasaporte_persona) into fac from persona p 
    where p.fechadef_persona <= fechafa;
    
    select count(p.pasaporte_persona) into ptotal from persona p;
    
    pfac:= round(((fac * 100) / ptotal),2);
    if(pfac < 1) then
        pfac2:= to_char(pfac,'0.99')||'%';
    else 
         pfac2:= to_char(pfac,'999.99')||'%';
    end if;
    
    return pfac2;
end PorcentajeF;
/
----PORCENTAJE RECUPERADOS
create or replace function PorcentajeR(fechare date) return varchar2
is
    rec number;
    ptotal number;
    prec number;
    prec2 varchar2(20);
begin
    select count(p.pasaporte_persona) into rec from persona p, his_medico hm 
    where p.status_persona = 'Recuperado'
    and p.pasaporte_persona = hm.pasaporte_persona_histm 
    and hm.fecfinalingreso_histm <= fechare;
    
    select count(p.pasaporte_persona) into ptotal from persona p;
    
    prec:= round(((rec * 100) / ptotal),2);
    if(prec < 1) then
        prec2:= to_char(prec,'0.99')||'%';
    else 
         prec2:= to_char(prec,'999.99')||'%';
    end if;
    
    return prec2;
end PorcentajeR;
/
---PROCEDIMIENTO QUE CONECTA CON JASPER
create or replace procedure Estadistica(rep_cursor OUT sys_refcursor,fechai date)
is

begin
        open rep_cursor
        
        for select count(p.pasaporte_persona) as "Poblacion Mundial", Contagiados(fechai) "Infectados", 
                    Muertos(fechai) "Fallecidos", Curados(fechai) "Recuperados", 
                    PorcentajeI(fechai) "Porcentaje Infectados",
                    PorcentajeF(fechai) "Porcentaje Fallecidos", PorcentajeR(fechai) "Porcentaje Recuperados"
        from persona p
        group by Contagiados(fechai),Muertos(fechai), Curados(fechai),
                    PorcentajeI(fechai),PorcentajeF(fechai),PorcentajeR(fechai);

end Estadistica;