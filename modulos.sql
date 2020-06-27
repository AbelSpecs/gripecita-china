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
declare
cant_sintomas number;
cant_patologias number;
cont number := 1;
cont2 number := 1;
sintoma_eliminar per_sin.id_sintoma_ps%type;
patologia_insertar per_pat.id_patologia_pp%type;
begin
--cuando entras al modulo implica que la persona tiene 8 sintomas
dbms_output.put_line('----------Modulo Alteración de Sintomas------------');
    select round(dbms_random.value(1,8),0) into cant_sintomas from dual;
   dbms_output.put_line('cantidad sintomas a eliminar '|| cant_sintomas);
    if (cant_sintomas < 8)then
    --elimino la cantidad de sintomas sintomas
        while cont <= cant_sintomas loop
            select round(dbms_random.value(1,8),0) into sintoma_eliminar from dual;
            
            --comprobar que la persona tenga el sintoma a eliminar
            --arreglar aqui
            while (comprobar_sintoma(600, sintoma_eliminar) = false) loop
                select round(dbms_random.value(1,8),0) into sintoma_eliminar from dual;
            end loop;
            
            dbms_output.put_line('sintoma a eliminar '|| sintoma_eliminar);
            --delete from per_sin where pasaporte_persona_ps = 600 and id_sintoma_ps = sintoma_eliminar;
            cont := cont + 1; 
        end loop;
        
        if (cant_sintomas <= 2) then
        --genero patologias a la persona
            select round(dbms_random.value(1,8),0) into cant_patologias from dual;
        --comprobar si la persona tiene la patologia a insertar
            while cont2 <= cant_patologias loop
                select round(dbms_random.value(1,15),0) into patologia_insertar from dual;
                insert into per_pat values (600, patologia_insertar);
            end loop;
        end if;
    else
    --elimino los sintomas y asigno fechaFinalIngreso a la persona
        dbms_output.put_line('se todos eliminaran los sintomas');
        --delete from per_sin where pasaporte_persona_ps = 600;
        --update his_medico set fecasistencia_histm = sysdate where pasaporte_persona_histm = 600;
    end if;
end;
/
SET SERVEROUTPUT ON;

select * from his_medico where id_csalud_histm = 7 and fecfinalingreso_histm is null;
select * from centro_salud where id_csalud = 7;
select * from per_sin where pasaporte_persona_ps = 600;

rollback;
commit;


