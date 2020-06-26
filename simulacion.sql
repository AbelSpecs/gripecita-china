create or replace procedure inicia_simulacion (modelo aislamiento.tipo_aislamiento%type)is
lugar_infectar lugar.id_lugar%type := 0;
cantper_Sanos number;
cantper_infectar number;
usuario_random persona.pasaporte_persona%type;
status persona.status_persona%type := 'Infectado';
centro_medico centro_salud.id_csalud%type;
begin 
    while lugar_infectar < 21 loop
        select id_lugar into lugar_infectar from (select * from lugar order by DBMS_RANDOM.VALUE)where rownum = 1;
    end loop;
    
    dbms_output.put_line('lugar a infectar '||lugar_infectar);
    select count(*) into cantper_Sanos from persona where id_lugar_persona = lugar_infectar and status_persona = 'Sano';
    dbms_output.put_line('cant personas a sanas '||cantper_sanos);
    
    if modelo = 3 then
        cantper_infectar := round(cantper_sanos * 0.25,0);
        dbms_output.put_line('cant personas a infectar '||cantper_infectar);
        while status <> 'Sano'  loop
        --selecciono persona random a infectar
            SELECT pasaporte_persona, status_persona INTO usuario_random, status
            FROM (select * from persona where id_lugar_persona = lugar_infectar and status_persona = 'Sano' order by DBMS_RANDOM.VALUE) where rownum = 1;
            dbms_output.put_line('uaurio random '||usuario_random);
            dbms_output.put_line('status persona '||status);
            modulo_infeccion(usuario_random);
            select id_csalud into centro_medico from centro_salud where id_lugar_csalud = lugar_infectar;
            DBMS_OUTPUT.PUT('centro medico ' || centro_medico);
--comprobar desde aqui            
            if ((select count(*) from per_sin where pasaporte_persona_ps = usuario_random) >= 6) then
            --presenta más de 6 sintomas
            --actualizo persona a infectada
                update persona set status_persona = 'Infectado' where pasaporte_persona = usuario_random;
                
                if ((select count(*) from per_sin where pasaporte_persona_ps = usuario_random) = 8) then 
                --empiezo modulo centro salud
                    dbms_output.put_line('modulo centro salud');
                else
                --presenta menos e 8 sintomas
                --mando de cuarentena a la persona
                    dbms_output.put_line('cuarentena');
                end if;
            else
            --presenta menos de 6 sintomas
            --mando de cuarentena a la persona
                dbms_output.put_line('cuarentena');
            end if;
            
        end loop;
    ELSE
        cantper_infectar := round(cantper_sanos * DBMS_RANDOM.VALUE,0);
        dbms_output.put_line('% '|| DBMS_RANDOM.VALUE);
        dbms_output.put_line('cant personas a infectar '||cantper_infectar);
    end if;
end;
/
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
SET SERVEROUTPUT ON;
execute inicia_simulacion(3);
rollback;
execute modulo_infeccion(600);

select * from per_sin where pasaporte_persona_ps = 600;
select round(dbms_random.value(1,8),0) from dual;
select * from persona where id_lugar_persona = 33 and status_persona = 'Sano';
select l.id_lugar,l.identificacion_lugar.nombre from lugar l;
select * from centro_salud;