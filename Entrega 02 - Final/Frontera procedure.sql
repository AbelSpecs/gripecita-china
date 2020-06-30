create or replace procedure Frontera(id_p number)
is
    poblacion number;
    poblacionI number;
    nivel1 number;
    nivel2 number;
    nivel3 number;
    fronteraF date;
    aislamientoF date;
    nombreP varchar2(30);
begin
    dbms_output.put_line(' ');
    dbms_output.put_line('Iniciando Modulo Fronterizo . . .');
    select count(p.pasaporte_persona), l3.identificacion_lugar.nombre into poblacion, nombreP from persona p, lugar l, lugar l2, lugar l3 where id_lugar_persona = l.id_lugar 
    and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l3.id_lugar = id_p
    group by l3.identificacion_lugar.nombre;
    
    nivel1:= poblacion*0.50;
    
    select count(p.pasaporte_persona) into poblacionI from persona p, lugar l, lugar l2, lugar l3 where id_lugar_persona = l.id_lugar 
    and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar and l3.id_lugar = id_p and p.status_persona = 'Infectado';
    
    if(poblacionI >= nivel1) then
    
        select add_months(sysdate,5) into fronteraF from dual;
        select add_months(sysdate,2) into aislamientoF from dual;
        insert into hist_fronterizo values(sysdate,fronteraF,id_p);
        dbms_output.put_line('ALERTA SE CERRARAN TODOS LAS FRONTERAS EN '|| nombreP || ' HASTA '|| fronteraF);
        insert into lu_ais values(sysdate,aislamientoF,id_p,2);
        dbms_output.put_line('SE APLICARA AISLAMIENTO NIVEL 3 HASTA ' ||aislamientoF);
        
    else
    
        select add_months(sysdate,1) into aislamientoF from dual;
        insert into lu_ais values(sysdate,aislamientoF,id_p,1);
        dbms_output.put_line('LIBRE MOVILIDAD EN '|| nombreP ||' HASTA EL PROXIMO CHEQUEO EL ' ||aislamientoF);
        
    end if;    
    
end;