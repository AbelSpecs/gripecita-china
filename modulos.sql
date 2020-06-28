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
create or replace procedure modulo_centro_salud (csalud centro_salud.id_csalud%type, persona persona.pasaporte_persona%type, inserto OUT number) is
cursor insumos_csalud is select * from inventario where id_csalud_inventario = csalud;
registro_insumos inventario%rowtype;
cant_camas number;
camas_dis number;
camas_ocu number;
begin
--comprobar insumos del centro de salud
    inserto := -1;
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
        inserto := 1;
    else
    --no hay camas disponibles, reasignar a otro csalud
    --insertar otro csalud por estado
        dbms_output.put_line('NO hay camas disponibles');
        inserto := 0;
    end if;
end;
/
-----------------------------------------------------------------------------------------------------------------------------
declare
cant_sintomas number;
cant_patologias number;
cont number := 1;
cont2 number := 1;
sintoma_eliminar per_sin.id_sintoma_ps%type;
patologia_insertar per_pat.id_patologia_pp%type;
begin
--cuando entras al modulo implica que la persona tiene 8 sintomas
dbms_output.put_line('----------Modulo Alteraci�n de Sintomas------------');
    select round(dbms_ran dom.value(1,8),0) into cant_sintomas from dual;
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
-----------------------------------------------------------------------------------------------------------------------------
-- Procedimiento para Alterar Sintomas de una Persona
-----------------------------------------------------------------------------------------------------------------------------
create or replace procedure alteracionSintomas (pasaporte persona.pasaporte_persona%type, cant_sintomas_ret OUT number) 
is
cant_sintomas number;
cant_patologias number;
cont number := 1;
cont2 number := 1;
sintoma_agregar per_sin.id_sintoma_ps%type := 1;
patologia_insertar per_pat.id_patologia_pp%type := 1;
begin
    dbms_output.put_line('----------Modulo Alteracion de Sintomas------------');
    cant_sintomas := round(dbms_random.value(0,8),0);
    cant_sintomas_ret := cant_sintomas;
    dbms_output.put_line('Cantidad de sintomas a agregar: '|| cant_sintomas);
    if (cant_sintomas <> 0)then
        --Agregar la cantidad de sintomas 
        while sintoma_agregar <= cant_sintomas loop            
            --Comprobar que la persona no tenga el sintoma
            if (comprobar_sintoma(pasaporte, sintoma_agregar) = false) then
                insert into per_sin values(sysdate,'No',pasaporte,sintoma_agregar);
            end if;
    
            sintoma_agregar := sintoma_agregar + 1; 
        end loop;
        
        if (cant_sintomas > 5) then
        --Genero patologias a la persona
            cant_patologias := round(dbms_random.value(1,15),0);
            --Comprobar si la persona tiene la patologia a insertar
            while patologia_insertar <= cant_patologias loop            
                --comprobar que la persona no tenga el sintoma
                if (comprobar_patologia(pasaporte, patologia_insertar) = false) then
                    insert into per_pat values (pasaporte, patologia_insertar);
                end if;
                
                patologia_insertar := patologia_insertar + 1; 
            end loop;
        end if;
    else
        --Elimino los sintomas y asigno fechaFinalIngreso a la persona
        dbms_output.put_line('Se todos eliminaran los sintomas');
        delete from per_sin where pasaporte_persona_ps = pasaporte;
        update his_medico set fecfinalingreso_histm = sysdate where pasaporte_persona_histm = pasaporte;
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

SET SERVEROUTPUT ON;

select * from his_medico where id_csalud_histm = 7 and fecfinalingreso_histm is null;
select * from centro_salud where id_csalud = 7;
select * from per_sin where pasaporte_persona_ps = 600;

rollback;
commit;


