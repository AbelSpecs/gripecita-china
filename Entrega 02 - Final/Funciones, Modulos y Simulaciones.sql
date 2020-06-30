-----------------------------------------------------------------------------------------------------------------------------
-- Funciones
-----------------------------------------------------------------------------------------------------------------------------
create or replace function edad_a (fecha_nac date) return number is
begin
    return (round(((sysdate - fecha_nac)/365),0));
end;
/
--devuleve true si lo tiene
create or replace function comprobar_sintoma (persona per_sin.pasaporte_persona_ps%type, sintoma per_sin.id_sintoma_ps%type) return boolean is
CURSOR sintoma_persona IS select * from per_sin where pasaporte_persona_ps = persona and id_sintoma_ps = sintoma;
registro per_sin%rowtype;
presencia boolean := false;
begin
    open sintoma_persona;
    fetch sintoma_persona into registro;
    if (sintoma_persona%found) then
        presencia := true;
        fetch sintoma_persona into registro;
    end if;
    close sintoma_persona;
    return presencia;
end;
/
--devuleve true si lo tiene
create or replace function comprobar_patologia (persona per_sin.pasaporte_persona_ps%type, patologia per_pat.id_patologia_pp%type) return boolean is
CURSOR patologia_persona IS select * from per_pat where pasaporte_persona_pp = persona and id_patologia_pp = patologia;
registro per_pat%rowtype;
presencia boolean := false;
begin
    open patologia_persona;
    fetch patologia_persona into registro;
    if (patologia_persona%found) then
        presencia := true;
        fetch patologia_persona into registro;
    end if;
    close patologia_persona;
    return presencia;
end;
/
create or replace function cantidad_sintomas (persona per_sin.pasaporte_persona_ps%type) return number is
cantidad number := 0;
begin
    select count(*) into cantidad from per_sin where pasaporte_persona_ps = persona;
    return cantidad;
end;
/
create or replace function cantidad_patologias (persona per_sin.pasaporte_persona_ps%type) return number is
cantidad number := 0;
begin
    select count(*) into cantidad from per_pat where pasaporte_persona_pp = persona;
    return cantidad;
end;
/
-----------------------------------------------------------------------------------------------------------------------------
-- Procedimiento de Infeccion
-----------------------------------------------------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------------------------------------
-- Procedimiento de comprobacion de Sintomas y Patologias
-----------------------------------------------------------------------------------------------------------------------------
create or replace function comprobar_sintoma (persona per_sin.pasaporte_persona_ps%type, sintoma per_sin.id_sintoma_ps%type) return boolean is
CURSOR sintoma_persona IS select * from per_sin where pasaporte_persona_ps = persona and id_sintoma_ps = sintoma;
registro per_sin%rowtype;
presencia boolean := false;
begin
    open sintoma_persona;
    fetch sintoma_persona into registro;
    if (sintoma_persona%found) then
        presencia := true;
        fetch sintoma_persona into registro;
    end if;
    close sintoma_persona;
    return presencia;
end;
/
create or replace function comprobar_patologia (persona per_sin.pasaporte_persona_ps%type, patologia per_pat.id_patologia_pp%type) return boolean is
CURSOR patologia_persona IS select * from per_pat where pasaporte_persona_pp = persona and id_patologia_pp = patologia;
registro per_pat%rowtype;
presencia boolean := false;
begin
    open patologia_persona;
    fetch patologia_persona into registro;
    if (patologia_persona%found) then
        presencia := true;
        fetch patologia_persona into registro;
    end if;
    close patologia_persona;
    return presencia;
end;
-----------------------------------------------------------------------------------------------------------------------------
-- Procedimiento Centro Salud
-----------------------------------------------------------------------------------------------------------------------------
create or replace procedure modulo_centro_salud (csalud centro_salud.id_csalud%type, persona persona.pasaporte_persona%type, inserto OUT number) is
cursor insumos_csalud is select * from inventario where id_csalud_inventario = csalud;
registro_insumos inventario%rowtype;
cant_camas number;
camas_dis number;
camas_ocu number;
temporal number := 0;
begin
    dbms_output.put_line('Iniciando el modulo Centro de Salud . . .');
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
-----------------------------------------------------------------------------------------------------------------------------
-- Procedimiento de Supervivencia
-----------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
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
    dbms_output.put_line('Iniciando el modulo de Supervivencia . . .');
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
    dbms_output.put_line('Iniciando el modulo de Alteracion de Sintomas . . .');
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
            dbms_output.put_line('Cantidad de patoligias a agregar: '|| cant_patologias);
            while patologia_insertar <= cant_patologias loop            
                --comprobar que la persona no tenga el sintoma
                if (comprobar_patologia(pasaporte, patologia_insertar) = false) then
                    insert into per_pat values (pasaporte, patologia_insertar);
                end if;
                dbms_output.put_line('Patologia a insertar = '||patologia_insertar);
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

-- execute alteracionSintomas(15);

-- SELECT * FROM persona WHERE pasaporte_persona not in (SELECT pasaporte_persona_ps FROM per_sin);

-- SELECT * FROM per_sin WHERE pasaporte_persona_ps = 15;

-----------------------------------------------------------------------------------------------------------------------------
-- Simulacion de Infectar Poblacion
-----------------------------------------------------------------------------------------------------------------------------
create or replace procedure inicia_simulacion (modelo aislamiento.tipo_aislamiento%type)is
lugar_infectar lugar.id_lugar%type := 0;
cantper_Sanos number;
cantper_infectar number;
usuario_random persona.pasaporte_persona%type;
centro_medico centro_salud.id_csalud%type;
cant_sintomas number;
fecha_def date;
cont number;
csalud_ret number;
min_ciudad lugar.id_lugar%type := 0;
max_ciudad lugar.id_lugar%type := 0;
begin 
dbms_output.put_line('----------Simulacion Infectar Poblacion------------');
    select min(id_lugar) into min_ciudad from lugar where tipo_lugar = 'Ciudad';
    select max(id_lugar) into max_ciudad from lugar where tipo_lugar = 'Ciudad';
    
    for lugar_infectar in min_ciudad..max_ciudad loop
        dbms_output.put_line('');
        dbms_output.put_line('--------------------------Ciudad a infecatar '||lugar_infectar||'------------------------------');
        select count(*) into cantper_Sanos from persona where id_lugar_persona = lugar_infectar and status_persona = 'Sano';
        dbms_output.put_line('cantidad de personas sanas '||cantper_sanos||' en la ciudad '||lugar_infectar);
        
        if modelo = 3 then
            cantper_infectar := round(cantper_sanos * 0.25,0);
            dbms_output.put_line('cantidad de personas a infectar '||cantper_infectar||' en la ciudad '||lugar_infectar);
            for cont in 1..cantper_infectar loop
                --selecciono persona random a infectar
                    SELECT pasaporte_persona INTO usuario_random
                    FROM (select * from persona where id_lugar_persona = lugar_infectar and status_persona = 'Sano' order by DBMS_RANDOM.VALUE) where rownum = 1;
                    dbms_output.put_line('');
                    dbms_output.put_line('--------------------------Persona #'||usuario_random||'-----------------------------');
                    modulo_infeccion(usuario_random);
                    
                    if (cantidad_sintomas(usuario_random) >= 6) then
                    --presenta mï¿½s de 6 sintomas
                    --actualizo persona a infectada
                        select id_csalud into centro_medico from centro_salud where id_lugar_csalud = lugar_infectar;
                        dbms_output.put_line('---------------Persona #'||usuario_random||' asignada al Centro de salud '|| centro_medico ||'---------------');
                        update persona set status_persona = 'Infectado' where pasaporte_persona = usuario_random;
                    --empiezo modulo centro salud
                       modulo_centro_salud(centro_medico,usuario_random, csalud_ret);
                        
                        if (cantidad_sintomas(usuario_random) = 8) then 
                        --empiezo modulo alteracion de sintomas
                            alteracionSintomas(usuario_random, cant_sintomas);
                            
                            if (cant_sintomas = 8) then 
                                fecha_def := modulo_supervivencia(usuario_random);
                               
                                if(fecha_def is not null) then 
                                    update persona set fechadef_persona = fecha_def where pasaporte_persona = usuario_random;
                                end if;
                            elsif (cant_sintomas < 4) then 
                            --asigno recuperado y asigno fecha final ingreso
                                update persona set status_persona = 'Recuperado' where pasaporte_persona = usuario_random;
                                update his_medico set fecfinalingreso_histm = sysdate where pasaporte_persona_histm = usuario_random;
                            end if;
                        end if;
                    else
                    --presenta menos de 6 sintomas
                    --Aislo a la persona
                        update persona set status_persona = 'Aislado' where pasaporte_persona = usuario_random;
                    end if;
            end loop;
        ELSE
        --cuando modelo <> 3
            cantper_infectar := round(cantper_sanos * DBMS_RANDOM.VALUE,0);
            dbms_output.put_line('cantidad de personas a infectar '||cantper_infectar||' en la ciudad '||lugar_infectar);
            
            for cont in 1..cantper_infectar loop
                --selecciono persona random a infectar
                    SELECT pasaporte_persona INTO usuario_random
                    FROM (select * from persona where id_lugar_persona = lugar_infectar and status_persona = 'Sano' order by DBMS_RANDOM.VALUE) where rownum = 1;
                    dbms_output.put_line('');
                    dbms_output.put_line('--------------------------Persona #'||usuario_random||'-----------------------------');
                    modulo_infeccion(usuario_random);
                    
                    if (cantidad_sintomas(usuario_random) >= 6) then
                    --presenta mï¿½s de 6 sintomas
                    --actualizo persona a infectada
                        select id_csalud into centro_medico from centro_salud where id_lugar_csalud = lugar_infectar;
                        dbms_output.put_line('---------------Persona #'||usuario_random||' asignada al Centro de salud '|| centro_medico ||'---------------');
                        update persona set status_persona = 'Infectado' where pasaporte_persona = usuario_random;
                    --empiezo modulo centro salud
                       modulo_centro_salud(centro_medico,usuario_random, csalud_ret);
                        
                        if (cantidad_sintomas(usuario_random) = 8) then 
                        --empiezo modulo alteracion de sintomas
                            alteracionSintomas(usuario_random, cant_sintomas);
                            
                            if (cant_sintomas = 8) then 
                                fecha_def := modulo_supervivencia(usuario_random);
                                --aqui falta algo 
                                if(fecha_def is not null) then 
                                    update persona set fechadef_persona = fecha_def where pasaporte_persona = usuario_random;
                                end if;
                            elsif (cant_sintomas < 4) then 
                            --asigno recuperado y asigno fecha final ingreso
                                update persona set status_persona = 'Recuperado' where pasaporte_persona = usuario_random;
                                update his_medico set fecfinalingreso_histm = sysdate where pasaporte_persona_histm = usuario_random;
                            end if;
                        end if;
                    else
                    --presenta menos de 6 sintomas
                    --Aislo a la persona
                        update persona set status_persona = 'Aislado' where pasaporte_persona = usuario_random;
                    end if;
            end loop;
        end if;
    end loop;
    for i in 1..5 loop
        Frontera(i);
    end loop; 
end;
/
SET SERVEROUTPUT ON;
execute inicia_simulacion(3);
commit;
/
-----------------------------------------------------------------------------------------------------------------------------
-- Simulacion de Aislamiento de Poblacion que Viajo
-----------------------------------------------------------------------------------------------------------------------------
SET SERVEROUTPUT ON;
-----------------------------------------------------------------------------------------------------------------------------
-- Simulacion de Aislamiento de Poblacion que Viajo
-----------------------------------------------------------------------------------------------------------------------------
create or replace procedure simulacionAislarPoblacionViajo
is
viajeros SYS_REFCURSOR;
fecha_def timestamp;
inserto_en_csalud number := -2;
centro number := 0;
cant_sintomas number := 0;
pasaporte persona.pasaporte_persona%type := 0;
status persona.status_persona%type;
fechaiviaje vuelo.fechai_vuelo%type;
ciudad lugar.id_lugar%type := 0;
min_ciudad lugar.id_lugar%type := 0;
max_ciudad lugar.id_lugar%type := 0;
fechaDef timestamp;
begin

    dbms_output.put_line('----------Simulacion Aislamiento de Poblacion que Viajo------------');
    select min(id_lugar) into min_ciudad from lugar where tipo_lugar = 'Ciudad';
    select max(id_lugar) into max_ciudad from lugar where tipo_lugar = 'Ciudad';
    
    for ciudad in min_ciudad..max_ciudad
    loop
        dbms_output.put_line('--------------------------Ciudad #'||ciudad||'------------------------------');
        open viajeros for select pasaporte_persona, status_persona, max(vuelo.fechai_vuelo)  from persona, vuelo, per_vue
            where pasaporte_persona = pasaporte_persona_pv
                and numero_vuelo = numero_vuelo_pv and fechadef_persona is null
                and id_lugar_persona = ciudad
                group by pasaporte_persona, status_persona;
        fetch viajeros into pasaporte, status, fechaiviaje;
        
        while(viajeros%found)loop
            dbms_output.put_line('--------------------------Persona #'||pasaporte||'-----------------------------');
            select fechadef_persona into fechaDef from persona where pasaporte_persona = pasaporte;
            
            if (fechaDef is null) then
                select id_csalud into centro from centro_salud where id_lugar_csalud = ciudad order by camas_csalud desc fetch first 1 rows only ;
                dbms_output.put_line('Persona #'||pasaporte||' asignada al Centro de Salud '|| centro);

                modulo_centro_salud(centro, pasaporte, inserto_en_csalud);
                if (inserto_en_csalud = 1) then
                    update persona set status_persona = 'Aislado' where pasaporte_persona = pasaporte;
                    dbms_output.put_line('Persona '||pasaporte||' Aislada');
                    --  Llamo a Modulo de Alteracion de Sintomas
                    alteracionSintomas(pasaporte,cant_sintomas);
                    
                    if (cant_sintomas = 8) then
                        fecha_def := modulo_supervivencia(pasaporte);
                        if (fecha_def is null) then
                            update persona set status_persona = 'Infectado' where pasaporte_persona = pasaporte;
                            dbms_output.put_line('Persona '||pasaporte||' Infectada');
                        end if;
                    elsif (cant_sintomas < 4)then 
                        update persona set status_persona = 'Sano' where pasaporte_persona = pasaporte;
                        update his_medico set fecfinalingreso_histm = sysdate where pasaporte_persona_histm = pasaporte;
                        dbms_output.put_line('Persona '||pasaporte||' Sana');
                    else
                        update persona set status_persona = 'Infectado' where pasaporte_persona = pasaporte;
                         dbms_output.put_line('Persona '||pasaporte||' Infectada');
                    end if;
                end if;
            end if;
            dbms_output.put_line('-------------------------------------------------------------------');
            fetch viajeros into pasaporte, status, fechaiviaje;
        end loop;
        dbms_output.put_line('-------------------------------------------------------------------');
    end loop;
    commit;
end;
/
SET SERVEROUTPUT ON;
    
-- Llamada para ejecutar la Simulacion
execute simulacionAislarPoblacionViajo;
