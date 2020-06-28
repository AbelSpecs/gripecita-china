create or replace procedure modulo_infeccion (id_persona persona.pasaporte_persona%type) is
cant_sintomas number;
cont number := 1;
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
create or replace procedure modulo_centro_salud (csalud centro_salud.id_csalud%type, persona persona.pasaporte_persona%type) is
cursor insumos_csalud is select * from inventario where id_csalud_inventario = csalud;
registro_insumos inventario%rowtype;
cant_camas number;
camas_dis number;
camas_ocu number;
begin
dbms_output.put_line('----------Modulo Centro Salud------------');
--comprobar insumos del centro de salud
    open insumos_csalud;
    fetch insumos_csalud into registro_insumos;
    while(insumos_csalud%found)loop
        if (registro_insumos.cantidad_inventario < 100) then
            update inventario set cantidad_inventario = registro_insumos.cantidad_inventario + 1000 where id_csalud_inventario = csalud;
        end if;    
        fetch insumos_csalud into registro_insumos;
    end loop;
    
--comprobar disponibilidad de camas
    select camas_csalud into cant_camas from centro_salud where id_csalud = csalud;
    select count(*) into camas_ocu from his_medico where id_csalud_histm = csalud and fecfinalingreso_histm is null;
    camas_dis := cant_camas - camas_ocu;
    
    if( camas_dis > 0) then
        dbms_output.put_line('hay camas disponibles '|| camas_dis);
        insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm, feciinicialingreso_histm) values
            (persona, csalud, sysdate, sysdate);
        update centro_salud set camas_csalud = camas_dis - 1 where id_csalud = csalud;
    else
    --no hay camas disponibles, reasignar a otro csalud
    --insertar otro csalud por estado
        dbms_output.put_line('NO hay camas disponibles');
    end if;
end;
/
--create or replace procedure modulo_alteracion_sintomas (persona persona.pasaporte_persona%type) is
declare
cant_sintomas number := 1;
cant_patologias number;
cont number := 1;
cont2 number := 1;
sintoma_eliminar number;
patologia_insertar per_pat.id_patologia_pp%type;
tiene_patologia number;
begin
--cuando entras al modulo implica que la persona tiene 8 sintomas
dbms_output.put_line('----------Modulo Alteracion de Sintomas------------');
/*
    select round(dbms_random.value(1,8),0) into cant_sintomas from dual;
    
    while (cant_sintomas > cantidad_sintomas(600)) loop
        select round(dbms_random.value(1,8),0) into cant_sintomas from dual;
    end loop;
*/    
    dbms_output.put_line('cantidad sintomas a eliminar '|| cant_sintomas);
    
    if (cant_sintomas < 8)then
    --elimino la cantidad de sintomas
        while cont <= cant_sintomas loop
            select id_sintoma_ps into sintoma_eliminar from (select * from per_sin where pasaporte_persona_ps = 600 
                order by DBMS_RANDOM.VALUE) where rownum = 1;
            dbms_output.put_line('sintoma eliminar '|| sintoma_eliminar);
            delete from per_sin where pasaporte_persona_ps = 600 and id_sintoma_ps = sintoma_eliminar;
            cont := cont + 1; 
        end loop;
        
        if (cant_sintomas <= 2) then
        --genero patologias a la persona
            select round(dbms_random.value(1,15),0) into cant_patologias from dual;
            while (cant_patologias + cantidad_patologias(600) > 15 ) loop
                    select round(dbms_random.value(1,15),0) into cant_patologias from dual;
            end loop;
            
            dbms_output.put_line('cantidad de patologias a insertar '|| cant_patologias);
            
            while cont2 <= cant_patologias loop
                begin
                    select round(dbms_random.value(1,15),0) into patologia_insertar from dual;
                    select id_patologia_pp into tiene_patologia from per_pat where pasaporte_persona_pp = 600 and id_patologia_pp = patologia_insertar;
                    
                    while (patologia_insertar = tiene_patologia )loop
                        select round(dbms_random.value(1,15),0) into patologia_insertar from dual;
                    end loop;
                    
                    dbms_output.put_line('patologia a insertar '|| patologia_insertar);
                    insert into per_pat values (600, patologia_insertar);
                exception       
                    when no_data_found then
                    --no tiene la patologia, inserto
                        dbms_output.put_line('patologia a insertar '|| patologia_insertar);
                        insert into per_pat values (600, patologia_insertar);
                end;
                cont2 := cont2 + 1;
            end loop;
        end if;
        
    else
    --elimino los sintomas y asigno fechaFinalIngreso a la persona
        dbms_output.put_line('se todos eliminaran los sintomas');
        delete from per_sin where pasaporte_persona_ps = 600;
        update his_medico set fecasistencia_histm = sysdate where pasaporte_persona_histm = 600;
    end if;
end;
/
rollback;
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
declare 
patologia_insertar number;
begin
    for i in 1 .. 15 loop
        select round(dbms_random.value(1,15),0) into patologia_insertar from dual;
        if (comprobar_patologia(600,patologia_insertar) = false) then
            dbms_output.put_line('NO tiene la patologia '|| patologia_insertar);
        else  
            dbms_output.put_line(' tiene la patologia '|| patologia_insertar);
        end if;
    end loop;
end;

/
SET SERVEROUTPUT ON;

select * from his_medico where id_csalud_histm = 7 and fecfinalingreso_histm is null;
select * from centro_salud where id_csalud = 7;
select * from per_pat where pasaporte_persona_pp = 600;
select * from per_sin where pasaporte_persona_ps =600;


insert into per_pat values (600,1);
insert into per_sin values (sysdate, 'No', 600, 3);


commit;


