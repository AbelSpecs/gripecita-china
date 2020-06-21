--REPORTE1
-- select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
--     p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País", 
--     p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia"
-- from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
-- where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
--     and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = 'Venezuela'
--     and l2.identificacion_lugar.nombre = 'Merida' and edad(p.fechanac_persona) > 30 and pt.nombre_patologia = 'Diabetes'
-- order by p.fechanac_persona;


create or replace procedure personasInfectada (pais lugar.identificacion_lugar.nombre%type, estado lugar.identificacion_lugar.nombre%type, edad number,
patolgoia patologia.nombre_patologia%type, ret_cursor OUT sys_refcursor) 
is 
--    foto_persona blob;
--    nombre1_persona VARCHAR2(50);
--    nombre2_persona VARCHAR2(50);
--    apellido1_persona VARCHAR2(50);
--    apellido2_persona VARCHAR2(50);
--    fnac_persona VARCHAR2(50);
--    ilugarPais blob;
--    genero_persona VARCHAR2(50);
--    ilugarEsrado VARCHAR2(50);
--    patologia VARCHAR2(50);
--    CURSOR RECORRIDO
--    IS 
--    SELECT p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
--        p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País", 
--        p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia"
--    from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
--    where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
--        and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = pais
--        and l2.identificacion_lugar.nombre = estado and round(EXTRACT(DAY FROM sysdate - p.fechanac_persona)/365,0) > edad 
--        and pt.nombre_patologia = patolgoia
--    order by p.fechanac_persona;
begin
    DBMS_OUTPUT.put_line ('Entro al proc');
    --OPEN RECORRIDO;
    OPEN ret_cursor FOR
    SELECT p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
        p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
        p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", getPatologias(p.pasaporte_persona) "Patologias"
    from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
    where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
        and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = pais
        and l2.identificacion_lugar.nombre = estado and round(EXTRACT(DAY FROM sysdate - p.fechanac_persona)/365,0) > edad 
        and pt.nombre_patologia = patolgoia
    order by p.fechanac_persona;
    --fetch RECORRIDO into foto_persona,nombre1_persona,nombre2_persona,apellido1_persona,apellido2_persona,fnac_persona,ilugarPais,genero_persona,ilugarEsrado,patologia;
      --  WHILE RECORRIDO%FOUND LOOP
        --    DBMS_OUTPUT.put_line ('Entro al while');
          --  DBMS_OUTPUT.put_line ('REGISTRO: '||nombre1_persona);
            --fetch RECORRIDO into foto_persona,nombre1_persona,nombre2_persona,apellido1_persona,apellido2_persona,fnac_persona,ilugarPais,genero_persona,ilugarEsrado,patologia;
        --END LOOP;
    --CLOSE RECORRIDO;
end;


exec personasInfectada('Venezuela', 'Merida', 15, 'Diabetes');
SELECT getPatologias(8) FROM dual; 




-- -- Prueba
-- SELECT p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
--         p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País",
--         p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", getPatologias(p.pasaporte_persona) "Patologias"
--     from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
--     where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
--         and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = 'Venezuela'
--         and l2.identificacion_lugar.nombre = 'Merida' and round(EXTRACT(DAY FROM sysdate - p.fechanac_persona)/365,0) > 20 
--         and pt.nombre_patologia = 'Diabetes'
--     order by p.fechanac_persona;
  
  
  
CREATE OR REPLACE FUNCTION getPatologias(pasaporte persona.pasaporte_persona%type) RETURN varchar2 
IS  
    patologias varchar2(2000);
    patologia VARCHAR2(100);
    CURSOR patologia_persona
    IS 
    SELECT pt.nombre_patologia
        FROM per_pat pp, patologia pt
        WHERE pp.pasaporte_persona_pp = pasaporte AND pt.id_patologia = pp.id_patologia_pp;
BEGIN
    patologias :=  '';
    OPEN patologia_persona;
    fetch patologia_persona into patologia;
        WHILE patologia_persona%FOUND LOOP
            patologias := patologias||' '||patologia;
            fetch patologia_persona into patologia;
        END LOOP;
    CLOSE patologia_persona;
    
    return patologias;
END;  

--    and pt.nombre_patologia = 'Diabetes'
    
-- select * from persona where nombre1_persona = 'Alyssa';

-- select * from per_pat where pasaporte_persona_pp = 8; 

-- SELECT EXTRACT(YEAR FROM sysdate - p.fechanac_persona) FROM dual;

-- and round(((TO_DATE(sysdate,'dd/mm/yyyy') - to_date(p.fechanac_persona,'dd-mm-yy'))/365),0) > 50



-- CREATE OR REPLACE PROCEDURE personasInfectada2 (rep1_cursor OUT sys_refcursor) IS
-- BEGIN
--     OPEN rep1_cursor
--     FOR select p.foto_persona"Foto", p.nombre1_persona"Primer nombre", p.nombre2_persona"Segundo nombre", p.apellido1_persona"Primer apellido", 
--         p.apellido2_persona "Segundo apellido", to_char(p.fechanac_persona, 'DD/MM/YYYY') "Fecha de nacimiento", l3.identificacion_lugar.imagen "País", 
--         p.genero_persona "Género", l2.identificacion_lugar.nombre "Estado", pt.nombre_patologia"Patologia"
--     from persona p, lugar l, lugar l2, lugar l3, per_pat pp, patologia pt
--     where p.id_lugar_persona = l.id_lugar and l.id_lugar_lugar = l2.id_lugar and l2.id_lugar_lugar = l3.id_lugar
--         and pp.pasaporte_persona_pp = p.pasaporte_persona and pp.id_patologia_pp = pt.id_patologia and l3.identificacion_lugar.nombre = 'Venezuela'
--         and l2.identificacion_lugar.nombre = 'Merida' and edad(p.fechanac_persona) > 30 and pt.nombre_patologia = 'Diabetes'
--     order by p.fechanac_persona;
-- END;