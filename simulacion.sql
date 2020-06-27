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
            dbms_output.put_line('centro medico ' || centro_medico);
            
            if (cantidad_sintomas(usuario_random) >= 6) then
            --presenta más de 6 sintomas
            --actualizo persona a infectada
                DBMS_OUTPUT.PUT('sigo a comprobar 8 sintomas ');
                update persona set status_persona = 'Infectado' where pasaporte_persona = usuario_random;
                
                if (cantidad_sintomas(usuario_random) = 8) then 
                --empiezo modulo centro salud
                    modulo_centro_salud(centro_medico,usuario_random);
                --empiezo modulo alteracion de sintomas
                else
                --presenta menos de 8 sintomas
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
    --cuando modelo <> 3
        cantper_infectar := round(cantper_sanos * DBMS_RANDOM.VALUE,0);
        dbms_output.put_line('% '|| DBMS_RANDOM.VALUE);
        dbms_output.put_line('cant personas a infectar '||cantper_infectar);
    end if;
end;
/
SET SERVEROUTPUT ON;
execute inicia_simulacion(3);
rollback;
commit;
execute modulo_infeccion(600);

select * from per_sin where pasaporte_persona_ps = 411;
select * from persona where pasaporte_persona = 74;
select round(dbms_random.value(1,8),0) from dual;
select * from persona where id_lugar_persona = 27 and status_persona = 'Sano';
select l.id_lugar,l.identificacion_lugar.nombre from lugar l;
select * from his_medico where id_csalud_histm = 7 and fecfinalingreso_histm is null;
select * from centro_salud where id_csalud = 7;
select * from inventario where id_csalud_inventario = 7;