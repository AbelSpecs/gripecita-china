create or replace procedure modulo_infeccion (id_persona persona.pasaporte_persona%type) is
cant_sintomas number;
cont number := 1;
sintoma_insertar per_sin.id_sintoma_ps%type;
CURSOR sintomas_persona IS select id_sintoma_ps from per_sin where pasaporte_persona_ps = id_persona;
sintoma per_sin.id_sintoma_ps%type;
begin
dbms_output.put_line('----------Modulo infeccion------------');
    select round(dbms_random.value(1,8),0) into cant_sintomas from dual;
    dbms_output.put_line('cantidad de sintomas a insertar '|| cant_sintomas);
    while cont <= cant_sintomas loop
        select round(dbms_random.value(1,8),0) into sintoma from dual;
        
        --comprobar que el sintoma no lo tiene la persona en la misma fecha
        while (comprobar_sintoma(id_persona, sintoma)) loop
            select round(dbms_random.value(1,8),0) into sintoma from dual;
        end loop;
        
        --insertar sintoma
        dbms_output.put_line('sintoma a insertar '|| sintoma);
        insert into per_sin values (sysdate, 'Si', id_persona, sintoma);
        dbms_output.put_line('inserto sintoma ' || sintoma);
        cont := cont + 1;
    end loop;
end;
/
--create or replace procedure modulo_centro_salud (csalud centro_salud.id_csalud%type, persona persona.pasaporte_persona%type) is
declare
cursor insumos_csalud is select * from inventario where id_csalud_inventario = 7;
registro_insumos inventario%rowtype;
cant_camas number;
camas_dis number;
camas_ocu number;
begin
--comprobar insumos del centro de salud
    open insumos_csalud;
    fetch insumos_csalud into registro_insumos;
    while(insumos_csalud%found)loop
        if (registro_insumos.cantidad_inventario < 100) then
            update inventario set cantidad_inventario = registro_insumos.cantidad_inventario + 1000 where id_csalud_inventario = 7;
        end if;    
        fetch insumos_csalud into registro_insumos;
    end loop;
    
--comprobar disponibilidad de camas
    select camas_csalud into cant_camas from centro_salud where id_csalud = 7;
    select count(*) into camas_ocu from his_medico where id_csalud_histm = 7 and fecfinalingreso_histm is null;
    camas_dis := cant_camas - camas_ocu;
    
    if( camas_dis > 0) then
        dbms_output.put_line('hay camas disponibles '|| camas_dis);
        insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm, feciinicialingreso_histm) values
            (600, 7, sysdate, sysdate);
        update centro_salud set camas_csalud = camas_dis - 1 where id_csalud = 7;
    else
    --no hay camas disponibles, reasignar a otro csalud
    --insertar otro csalud por estado
        dbms_output.put_line('NO hay camas disponibles');
    end if;
end;
/
--------------------------------------------------------MODULO DE Supervivencia------------------------------------------------------------------------
---funcion porque el modulo pide retornar la fecha
create or replace function modulo_supervivencia(id_p persona.pasaporte_persona%type) return date
is  
    fechad date;
    contp number:=0;
    numeroR number;
    cursor c1 is select pt.nombre_patologia as patologia from patologia pt, per_pat pp, persona p where p.pasaporte_persona = pp.pasaporte_persona_pp 
    and pp.id_patologia_pp = pt.id_patologia and p.pasaporte_persona = id_p and p.status_persona = 'Infectado';
begin
    for i in c1 loop
        if(i.patologia = 'Asma' or i.patologia = 'Neumonia' or i.patologia = 'Riesgo cardiovascular' 
        or  i.patologia = 'Diabetes' or i.patologia = 'Insuficiencia cardiaca') then------- Verificacion de patologias
            contp:= contp + 1;   
        end if;
    end loop;
    
    if(contp > 0) then
        numeroR:= round(DBMS_RANDOM.value(0,1),0); -------numero aleatorio
            if(numeroR = 1) then
                update persona set fechadef_persona = sysdate where pasaporte_persona = id_p;
                select fechadef_persona into fechad from persona where pasaporte_persona = id_p;
                return fechad;
            else 
                return null;
            end if;    
    else 
        return null;    
    end if;            
end modulo_supervivencia;
/                                 
-------------------------------------------------------------------------------------------------------------------                                                                                                  
SET SERVEROUTPUT ON;

select * from his_medico where id_csalud_histm = 7 and fecfinalingreso_histm is null;
select * from centro_salud where id_csalud = 7;
rollback;
commit;


