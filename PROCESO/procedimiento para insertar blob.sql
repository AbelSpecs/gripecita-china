--PROCEDIMIENTO PARA INSERTAR PERSONAS
CREATE OR REPLACE DIRECTORY BASE_IMAGENES AS 'C:\Users\Abel\Pictures\FGO';--- DIRECTORIO A MODIFICAR POR CADA UNO
GRANT ALL ON DIRECTORY BASE_IMAGENES TO PUBLIC;
GRANT READ, WRITE ON DIRECTORY BASE_IMAGENES TO PUBLIC;

CREATE OR REPLACE PROCEDURE INSERCION_PERSONAS(pasaporte persona.pasaporte_persona%type,nombre1 persona.nombre1_persona%type,nombre2 persona.nombre2_persona%type,
apellido1 persona.apellido1_persona%type, apellido2 persona.apellido2_persona%type, fechanac persona.fechanac_persona%type, genero persona.genero_persona%type,
status persona.status_persona%type, fechadef persona.fechadef_persona%type, status2 persona.status_aislado_persona%type,
foranea persona.id_lugar_persona%type, imagen Varchar2) 
IS
l_bfile BFILE;
l_blob BLOB;
BEGIN
    insert into persona(pasaporte_persona,nombre1_persona,nombre2_persona,apellido1_persona,apellido2_persona,fechanac_persona,genero_persona,
    foto_persona,status_persona,fechadef_persona,status_aislado_persona,id_lugar_persona)
    values(pasaporte,nombre1,nombre2,apellido1,apellido2,fechanac,genero,EMPTY_BLOB(),status,fechadef,status2,foranea)
    RETURN foto_persona into l_blob;
    
    l_bfile:= BFILENAME('BASE_IMAGENES',imagen);
    DBMS_LOB.fileopen(l_bfile,Dbms_Lob.File_Readonly);
    DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
    DBMS_LOB.fileclose(l_bfile);
    COMMIT;
    
EXCEPTION WHEN OTHERS THEN
    ROLLBACK;
    RAISE;

END;

