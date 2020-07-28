create or replace procedure modulo_infeccion (id_persona persona.pasaporte_persona%type) is
cant_sintomas number;
sintoma_agregar per_sin.id_sintoma_ps%type := 1;
begin
dbms_output.put_line('Iniciando el modulo de Infeccion . . .');
    select round(dbms_random.value(1,8),0) into cant_sintomas from dual;
    dbms_output.put_line('cantidad de sintomas a insertar '|| cant_sintomas);
    while sintoma_agregar <= cant_sintomas loop
        --comprobar que el sintoma no lo tiene la persona en la misma fecha
        if (comprobar_sintoma(id_persona, sintoma_agregar) = false) then
            insert into per_sin values (sysdate, 'Si', id_persona, sintoma_agregar);
        end if;
        
        dbms_output.put_line('inserto sintoma ' || sintoma_agregar);
        sintoma_agregar := sintoma_agregar + 1; 
    end loop;
end;
/
create or replace procedure modulo_centro_salud (csalud centro_salud.id_csalud%type, persona persona.pasaporte_persona%type, inserto OUT number) is
cursor insumos_csalud is select * from inventario where id_csalud_inventario = csalud;
registro_insumos inventario%rowtype;
cant_camas number;
camas_dis number;
camas_ocu number;
temporal number := 0;
begin
dbms_output.put_line('----------Modulo Centro de Salud------------');
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
        dbms_output.put_line('Hay camas disponibles '|| camas_dis);
        begin
            select coalesce(pasaporte_persona_histm, 0) into temporal from his_medico where pasaporte_persona_histm = persona and id_csalud_histm = csalud;
        EXCEPTION
            WHEN no_data_found THEN
            temporal := null;
        end; 
        
        if (temporal is null) then
            insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm, feciinicialingreso_histm) values
                (persona, csalud, sysdate, sysdate);
            update centro_salud set camas_csalud = camas_dis - 1 where id_csalud = csalud;
        end if;
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
-- Procedimiento para Alterar Sintomas de una Persona
-----------------------------------------------------------------------------------------------------------------------------
create or replace procedure alteracionSintomas (pasaporte persona.pasaporte_persona%type, cant_sintomas_ret OUT number) is
cant_sintomas number;
cant_patologias number;
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
            dbms_output.put_line('inseto sintoma alterado '||sintoma_agregar);
            sintoma_agregar := sintoma_agregar + 1; 
        end loop;
        
        if (cant_sintomas > 5) then
        --Genero patologias a la persona
            cant_patologias := round(dbms_random.value(1,15),0);
            --Comprobar si la persona tiene la patologia a insertar
            dbms_output.put_line('Cantidad de patologias a agregar: '|| cant_patologias);
            while patologia_insertar <= cant_patologias loop            
                --comprobar que la persona no tenga el sintoma
                if (comprobar_patologia(pasaporte, patologia_insertar) = false) then
                    insert into per_pat values (pasaporte, patologia_insertar);
                end if;
                dbms_output.put_line('patologia a insertar '||patologia_insertar);
                patologia_insertar := patologia_insertar + 1; 
            end loop;
        end if;
    else
        --Elimino los sintomas y asigno fechaFinalIngreso a la persona
        dbms_output.put_line('Se todos eliminaran los sintomas');
        dbms_output.put_line('Se curo la persona '||pasaporte);
        delete from per_sin where pasaporte_persona_ps = pasaporte;
        update his_medico set fecfinalingreso_histm = sysdate where pasaporte_persona_histm = pasaporte;
    end if;
end;
/
rollback;
-----------------------------------------------------------------------------------------------------------------------------
-- Funcion porque el modulo pide retornar la fecha
-----------------------------------------------------------------------------------------------------------------------------
-- Funcion de Supervivencia
-----------------------------------------------------------------------------------------------------------------------------
create or replace function modulo_supervivencia(id_p persona.pasaporte_persona%type) return date
is  
    fechad date;
    contp number:=0;
    numeroR number;
    fechaDead timestamp;
    i patologia.nombre_patologia%type;
    cursor c1 is select pt.nombre_patologia as patologia from patologia pt, per_pat pp, persona p where p.pasaporte_persona = pp.pasaporte_persona_pp 
    and pp.id_patologia_pp = pt.id_patologia and p.pasaporte_persona = id_p;
begin
    dbms_output.put_line('----------Modulo de Supervivencia------------');
    dbms_output.put_line('La persona '|| id_p ||' morira?');
    open c1;
    fetch c1 into i;
    while(c1%found)loop
        if(i = 'Asma' or i = 'Neumonia' or i = 'Riesgo cardiovascular' 
        or  i = 'Diabetes' or i = 'Insuficiencia cardiaca') then------- Verificacion de patologias
            contp:= contp + 1;   
        end if;
        fetch c1 into i;
    end loop;
    close c1;
    
    -- Aqui devuelve si ya habia fallecido previamente
    select fechadef_persona into fechaDead from persona where pasaporte_persona = id_p;
    
    if (fechaDead is null) then 
        if(contp > 0) then
            numeroR:= round(DBMS_RANDOM.value(0,1),0); -------numero aleatorio
            if(numeroR = 1) then
                dbms_output.put_line('Detition: '|| numeroR);
                update persona set fechadef_persona = sysdate where pasaporte_persona = id_p;
                -- Aqui devuelve si fallecio en el update
                select fechadef_persona into fechad from persona where pasaporte_persona = id_p;
                dbms_output.put_line('1. La persona '||id_p||' fallecio el '||fechad);
                return fechad;
            else
                dbms_output.put_line('Detition: '|| numeroR);
                return null;
            end if;    
        else
            dbms_output.put_line('0. La persona '||id_p||' no tiene las patologias');
            return null;    
        end if; 
    else
        dbms_output.put_line('0. La persona '||id_p||' fallecio el '||fechaDead);
        return null; 
    end if;
end modulo_supervivencia;
