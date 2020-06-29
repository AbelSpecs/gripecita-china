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
begin 
    select round(dbms_random.value(21,35),0) into lugar_infectar from dual;
    
    dbms_output.put_line('lugar a infectar '||lugar_infectar);
    select count(*) into cantper_Sanos from persona where id_lugar_persona = lugar_infectar and status_persona = 'Sano';
    dbms_output.put_line('cant personas a sanas '||cantper_sanos);
    
    if modelo = 3 then
        cantper_infectar := round(cantper_sanos * 0.25,0);
        dbms_output.put_line('cant personas a infectar '||cantper_infectar);
        for cont in 1..cantper_infectar loop
            --selecciono persona random a infectar
                SELECT pasaporte_persona INTO usuario_random
                FROM (select * from persona where id_lugar_persona = lugar_infectar and status_persona = 'Sano' order by DBMS_RANDOM.VALUE) where rownum = 1;
                dbms_output.put_line('uaurio random '||usuario_random);
                modulo_infeccion(usuario_random);
                
                if (cantidad_sintomas(usuario_random) >= 6) then
                --presenta m�s de 6 sintomas
                --actualizo persona a infectada
                    select id_csalud into centro_medico from centro_salud where id_lugar_csalud = lugar_infectar;
                    dbms_output.put_line('centro medico ' || centro_medico);
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
        dbms_output.put_line('cant personas a infectar '||cantper_infectar);
        
        for cont in 1..cantper_infectar loop
            --selecciono persona random a infectar
                SELECT pasaporte_persona INTO usuario_random
                FROM (select * from persona where id_lugar_persona = lugar_infectar and status_persona = 'Sano' order by DBMS_RANDOM.VALUE) where rownum = 1;
                dbms_output.put_line('uaurio random '||usuario_random);
                modulo_infeccion(usuario_random);
                
                if (cantidad_sintomas(usuario_random) >= 6) then
                --presenta m�s de 6 sintomas
                --actualizo persona a infectada
                    select id_csalud into centro_medico from centro_salud where id_lugar_csalud = lugar_infectar;
                    dbms_output.put_line('centro medico ' || centro_medico);
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
end;
/
SET SERVEROUTPUT ON;
execute inicia_simulacion(1);
rollback;
commit;
