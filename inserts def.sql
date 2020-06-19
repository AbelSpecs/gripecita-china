--DIRECTORIO
CREATE OR REPLACE DIRECTORY DIR_IMAGENES as 'C:\banderas';
GRANT ALL ON DIRECTORY DIR_IMAGENES TO public;
GRANT READ, WRITE ON DIRECTORY DIR_IMAGENES TO public;

--LUGAR
--Paises
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into lugar values (1, identificacion(EMPTY_BLOB(), 'Venezuela'), 'Pais', 30000000, null);
  select l.identificacion_lugar.imagen INTO l_blob from lugar l where l.id_lugar = 1;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Venezuela.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into lugar values (2, identificacion(EMPTY_BLOB(), 'Estados Unidos'), 'Pais', 328000000, null);
  select l.identificacion_lugar.imagen INTO l_blob from lugar l where l.id_lugar = 2;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Estados Unidos.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into lugar values (3, identificacion(EMPTY_BLOB(), 'Brasil'), 'Pais', 209000000, null);
  select l.identificacion_lugar.imagen INTO l_blob from lugar l where l.id_lugar = 3;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Brasil.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into lugar values (4, identificacion(EMPTY_BLOB(), 'Mexico'), 'Pais', 126000000, null);
  select l.identificacion_lugar.imagen INTO l_blob from lugar l where l.id_lugar = 4;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Mexico.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into lugar values (5, identificacion(EMPTY_BLOB(), 'España'), 'Pais', 4177000000, null);
  select l.identificacion_lugar.imagen INTO l_blob from lugar l where l.id_lugar = 5;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Espana.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/

--Estados
insert into lugar values (6, identificacion(null, 'Miranda'), 'Estado', 3200000, 1);
insert into lugar values (7, identificacion(null, 'Merida'), 'Estado', 250000, 1);
insert into lugar values (8, identificacion(null, 'Dto. Capital'), 'Estado', 5000000, 1);
insert into lugar values (9, identificacion(null, 'California'), 'Estado', 39000000, 2);
insert into lugar values (10, identificacion(null, 'Nueva York'), 'Estado', 19500000, 2);
insert into lugar values (11, identificacion(null, 'Florida'), 'Estado', 21500000, 2);
insert into lugar values (12, identificacion(null, 'Rio de Janeiro'), 'Estado', 164000000, 3);
insert into lugar values (13, identificacion(null, 'Manaos'), 'Estado', 1790000, 3);
insert into lugar values (14, identificacion(null, 'Brasilia'), 'Estado', 2480000, 3);
insert into lugar values (15, identificacion(null, 'Tijuana'), 'Estado', 1300000, 4);
insert into lugar values (16, identificacion(null, 'DF'), 'Estado', 8900000, 4);
insert into lugar values (17, identificacion(null, 'Guadalajara'), 'Estado', 8200000, 4);
insert into lugar values (18, identificacion(null, 'Comunidad de Madrid'), 'Estado', 6600000, 5);
insert into lugar values (19, identificacion(null, 'Comunidad Valenciana'), 'Estado', 4975000, 5);
insert into lugar values (20, identificacion(null, 'Cataluña' ), 'Estado', 7560000, 5);
--Ciudades
insert into lugar values (21, identificacion(null, 'San Antonio de los Altos'), 'Ciudad', 1600000, 6);
insert into lugar values (22, identificacion(null, 'Merida'), 'Ciudad', 125000, 7);
insert into lugar values (23, identificacion(null, 'Caracas'), 'Ciudad', 1000000, 8);
insert into lugar values (24, identificacion(null, 'Pasadena'), 'Ciudad', 19500000, 9);
insert into lugar values (25, identificacion(null, 'Queens'), 'Ciudad', 9500000, 10);
insert into lugar values (26, identificacion(null, 'Miami'), 'Ciudad', 4000000, 11);
insert into lugar values (27, identificacion(null, 'Cabo Frio'), 'Ciudad', 8000000, 12);
insert into lugar values (28, identificacion(null, 'Belo Horizonte'), 'Ciudad', 250000, 13);
insert into lugar values (29, identificacion(null, 'Brasilia'), 'Ciudad', 350000, 14);
insert into lugar values (30, identificacion(null, 'Tijuana'), 'Ciudad', 890000, 15);
insert into lugar values (31, identificacion(null, 'DF'), 'Ciudad', 1000000, 16);
insert into lugar values (32, identificacion(null, 'Guadalajara'), 'Ciudad', 2000000, 17);
insert into lugar values (33, identificacion(null, 'Madrid'), 'Ciudad', 250000, 18);
insert into lugar values (34, identificacion(null, 'Valencia'), 'Ciudad', 1950000, 19);
insert into lugar values (35, identificacion(null, 'Barcelona' ), 'Ciudad', 2350000, 20);

--HIST_FRONTERIZO  
insert into hist_fronterizo values (to_date('10/01/2020', 'DD/MM/YYYY'), to_date('30/01/2020', 'DD/MM/YYYY'), 1);
insert into hist_fronterizo values (to_date('15/02/2020', 'DD/MM/YYYY'), to_date('28/02/2020', 'DD/MM/YYYY'), 1);
insert into hist_fronterizo values (to_date('01/03/2020', 'DD/MM/YYYY'), to_date('01/05/2020', 'DD/MM/YYYY'), 1);
insert into hist_fronterizo values (to_date('01/02/2020', 'DD/MM/YYYY'), to_date('15/02/2020', 'DD/MM/YYYY'), 2);
insert into hist_fronterizo values (to_date('01/03/2020', 'DD/MM/YYYY'), to_date('30/04/2020', 'DD/MM/YYYY'), 2);
insert into hist_fronterizo values (to_date('25/05/2020', 'DD/MM/YYYY'), to_date('01/07/2020', 'DD/MM/YYYY'), 2);
insert into hist_fronterizo values (to_date('10/01/2020', 'DD/MM/YYYY'), to_date('30/01/2020', 'DD/MM/YYYY'), 3);
insert into hist_fronterizo values (to_date('15/02/2020', 'DD/MM/YYYY'), to_date('28/02/2020', 'DD/MM/YYYY'), 3);
insert into hist_fronterizo values (to_date('01/03/2020', 'DD/MM/YYYY'), to_date('01/05/2020', 'DD/MM/YYYY'), 3);
insert into hist_fronterizo values (to_date('01/02/2020', 'DD/MM/YYYY'), to_date('15/02/2020', 'DD/MM/YYYY'), 4);
insert into hist_fronterizo values (to_date('01/03/2020', 'DD/MM/YYYY'), to_date('30/04/2020', 'DD/MM/YYYY'), 4);
insert into hist_fronterizo values (to_date('25/05/2020', 'DD/MM/YYYY'), to_date('01/07/2020', 'DD/MM/YYYY'), 4);
insert into hist_fronterizo values (to_date('01/02/2020', 'DD/MM/YYYY'), to_date('01/04/2020', 'DD/MM/YYYY'), 5);
insert into hist_fronterizo values (to_date('15/04/2020', 'DD/MM/YYYY'), to_date('15/05/2020', 'DD/MM/YYYY'), 5);
insert into hist_fronterizo values (to_date('01/06/2020', 'DD/MM/YYYY'), to_date('01/07/2020', 'DD/MM/YYYY'), 5);

--AISLAMIENTO
insert into aislamiento values (1, 'Modelo 1', 1);
insert into aislamiento values (2, 'Modelo 2', 2);
insert into aislamiento values (3, 'Modelo 3', 3);
insert into aislamiento values (4, 'Modelo 4', 4);

-- LU_AIS --
insert into lu_ais values (to_date('16/03/2020', 'DD/MM/YYYY'), null, 1,2); -- Venezuela ; Cuarentena
insert into lu_ais values (to_date('16/03/2020', 'DD/MM/YYYY'), null, 2,2); -- Estados Unidos  ; Cuarentena
insert into lu_ais values (to_date('24/03/2020', 'DD/MM/YYYY'), null, 3,2); -- Brasil ; Cuarentena
insert into lu_ais values (to_date('23/03/2020', 'DD/MM/YYYY'), null, 4,2); -- Mexico ; Cuarentena
insert into lu_ais values (to_date('01/06/2020', 'DD/MM/YYYY'), null, 4,4); -- Mexico ; Movilidad reducida = 1 de 8 se mueve
insert into lu_ais values (to_date('15/03/2020', 'DD/MM/YYYY'), null, 5,2); -- España ; Cuarentena
insert into lu_ais values (to_date('18/05/2020', 'DD/MM/YYYY'), to_date('25/05/2020', 'DD/MM/YYYY'), 5,3); -- España ; Movilidad reducida 1 de 4
insert into lu_ais values (to_date('25/05/2020', 'DD/MM/YYYY'), to_date('21/06/2020', 'DD/MM/YYYY'), 5,4); -- España ; Movilidad reducida 1 de 8
insert into lu_ais values (to_date('21/06/2020', 'DD/MM/YYYY'), null, 5,4); -- España ; Movilidad reducida 1 de 8


--PROVEEDOR
--1--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (1, identificacion(EMPTY_BLOB(), 'Cantv'), 2, 5);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor = 1;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Cantv.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--2--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (2, identificacion(EMPTY_BLOB(), 'Movistar'), 2, 7);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor = 2;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Movistar.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--3--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (3, identificacion(EMPTY_BLOB(), 'Digitel'), 2, 5);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor = 3;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Digitel.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--4--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (4, identificacion(EMPTY_BLOB(), 'Inter'), 2, 10);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=4;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Inter.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--5--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (5, identificacion(EMPTY_BLOB(), 'T-Online'), 5, 10);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=5;

  l_bfile := BFILENAME('DIR_IMAGENES', 'T-Online.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--6--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (6, identificacion(EMPTY_BLOB(), 'UOL'), 8, 8);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=6;

  l_bfile := BFILENAME('DIR_IMAGENES', 'UOL.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--7--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (7, identificacion(EMPTY_BLOB(), 'Unitel' ), 7, 7);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=7;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Unitel.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--8--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (8, identificacion(EMPTY_BLOB(), 'Earthlink' ), 100, 100);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=8;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Earthlink.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--9--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (9, identificacion(EMPTY_BLOB(), 'AT and T'), 50, 50);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=9;

  l_bfile := BFILENAME('DIR_IMAGENES', 'AT and T.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--10--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (10, identificacion(EMPTY_BLOB(), 'GTT'), 20, 50);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=10;

  l_bfile := BFILENAME('DIR_IMAGENES', 'GTT.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--11--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (11, identificacion(EMPTY_BLOB(), 'T-Mobile'), 30, 20);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=11;

  l_bfile := BFILENAME('DIR_IMAGENES', 'T-Mobile.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--12--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (12, identificacion(EMPTY_BLOB(), 'Global Telecom'), 20, 25);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=12;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Global Telecom.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--13--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (13, identificacion(EMPTY_BLOB(), 'Deutsche Telekom'), 50, 40);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=13;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Deutsche Telekom.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--14--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (14, identificacion(EMPTY_BLOB(), 'KPN International'), 70, 30);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=14;

  l_bfile := BFILENAME('DIR_IMAGENES', 'KPN International.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
--15--
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into proveedor (id_proveedor, identificacion_proveedor, velocidad_subida_proveedor, velocidad_bajada_proveedor) 
    values (15, identificacion(EMPTY_BLOB(), 'Orange'), 50, 50);
  select p.identificacion_proveedor.imagen INTO l_blob from proveedor p where p.id_proveedor=15;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Orange.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- DETALLE_SERVICIO -- 
-- 01/06/2020
-- Venezuela     
insert into detalle_servicio values (to_timestamp('01/06/2020 12:00', 'DD/MM/YYYY HH24:MI'), 0.75, 4.2, null, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('01/06/2020 12:00', 'DD/MM/YYYY HH24:MI'), 0, 0, 6, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('01/06/2020 6:45', 'DD/MM/YYYY HH24:MI'),  0, 0, 4, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('01/06/2020 6:45', 'DD/MM/YYYY HH24:MI'),  0, 0, 3.5, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('01/06/2020 16:25', 'DD/MM/YYYY HH24:MI'), 2.20, 5.24, null, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('01/06/2020 16:25', 'DD/MM/YYYY HH24:MI'), 2.35, 5.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('01/06/2020 17:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.25, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('01/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('01/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('01/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('01/06/2020 7:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 8, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('01/06/2020 9:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 2, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('01/06/2020 13:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('01/06/2020 14:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.24, 7.24, null, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 65.88, 28.81, null, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.12, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.25, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.55, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.27, 49.55, null, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('01/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.18, 49.55, null, 35, 15); -- 35 ; 15
-- 02/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('02/06/2020 12:00', 'DD/MM/YYYY HH24:MI'), 0, 0, 2, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('02/06/2020 12:36', 'DD/MM/YYYY HH24:MI'), 0.55, 2.5,  null, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('02/06/2020 4:45', 'DD/MM/YYYY HH24:MI'),  1.2, 2.1,   null, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('02/06/2020 2:45', 'DD/MM/YYYY HH24:MI'),  6.2, 1.4,   null, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('02/06/2020 14:25', 'DD/MM/YYYY HH24:MI'), 2.20, 5.24, null, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('02/06/2020 18:25', 'DD/MM/YYYY HH24:MI'), 2.35, 5.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('02/06/2020 19:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.25, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('02/06/2020 21:21', 'DD/MM/YYYY HH24:MI'), 1.58, 4.27, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('01/06/2020 13:21', 'DD/MM/YYYY HH24:MI'), 2.55, 5.25, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('01/06/2020 3:18', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('01/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 0.90, 1.5, null, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('01/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 2.4, 2.5, null, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.41, 19.12, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.90, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.34, 49.32, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('02/06/2020 9:35', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.05, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 65.88, 28.81, null, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('02/06/2020 2:48', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.25, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.25, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.55, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.27, 49.55, null, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('02/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.18, 49.55, null, 35, 15); -- 35 ; 15
-- 03/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('03/06/2020 2:31', 'DD/MM/YYYY HH24:MI'), 0.18, 2.1, null, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('03/06/2020 3:36', 'DD/MM/YYYY HH24:MI'), 0, 0, 3, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('03/06/2020 5:45', 'DD/MM/YYYY HH24:MI'),  1.2, 2.1, null, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('03/06/2020 13:45', 'DD/MM/YYYY HH24:MI'),  0, 0, 4, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('03/06/2020 12:25', 'DD/MM/YYYY HH24:MI'), 2.20, 5.24, null, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('03/06/2020 10:25', 'DD/MM/YYYY HH24:MI'), 2.35, 5.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('03/06/2020 9:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.25, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('03/06/2020 7:21', 'DD/MM/YYYY HH24:MI'), 1.58, 4.27, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('03/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 3.52, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('03/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 2.55, 3.25, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('03/06/2020 12:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 10, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('03/06/2020 18:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.15, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.29, 19.17, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('03/06/2020 1:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.50, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('03/06/2020 12:14', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.24, 7.24, null, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('03/06/2020 17:27', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.48, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('03/06/2020 21:41', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.27, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 65.32, 28.81, null, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.12, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.40, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.18, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.38, 49.55, null, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('03/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.18, 49.18, null, 35, 15); -- 35 ; 15
-- 04/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('04/06/2020 5:25', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('04/06/2020 4:36', 'DD/MM/YYYY HH24:MI'), 0.55, 3.5, null, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('04/06/2020 21:45', 'DD/MM/YYYY HH24:MI'),  0, 0, 2, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('04/06/2020 22:45', 'DD/MM/YYYY HH24:MI'),  5.4, 1.1, null, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('04/06/2020 15:25', 'DD/MM/YYYY HH24:MI'), 1.30, 4.8, null, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('04/06/2020 1:25', 'DD/MM/YYYY HH24:MI'), 1.11, 4.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('04/06/2020 00:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.25, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('04/06/2020 4:21', 'DD/MM/YYYY HH24:MI'), 1.40, 4.22, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('04/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('04/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('04/06/2020 21:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 2, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 0.90, 1.55, null, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('04/06/2020 9:34', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.30, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.12, 49.13, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.15, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.15, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.14, 49.32, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.41, 49.30, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.32, 7.12, null, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('04/06/2020 17:28', 'DD/MM/YYYY HH24:MI'), 0, 0, 2, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 65.88, 28.81, null, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.12, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.25, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('04/06/2020 6:20', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.27, 49.55, null, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('04/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.18, 49.55, null, 35, 15); -- 35 ; 15
-- 05/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('05/06/2020 2:13', 'DD/MM/YYYY HH24:MI'), 0, 0, 22, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('05/06/2020 3:36', 'DD/MM/YYYY HH24:MI'), 0.55, 2.5, null, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('05/06/2020 4:45', 'DD/MM/YYYY HH24:MI'),  0, 0, 20, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('05/06/2020 12:45', 'DD/MM/YYYY HH24:MI'),  6.2, 1.4, null, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('05/06/2020 14:25', 'DD/MM/YYYY HH24:MI'), 2.20, 5.24, null, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('05/06/2020 16:25', 'DD/MM/YYYY HH24:MI'), 2.35, 5.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('05/06/2020 19:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.25, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('05/06/2020 21:21', 'DD/MM/YYYY HH24:MI'), 1.58, 4.27, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('05/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('05/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('05/06/2020 18:17', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 1.99, 3.47, null, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.42, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.55, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.22, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('05/06/2020 22:53', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.20, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.78, 49.88, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.12, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.12, 6.21, null, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.24, 7.15, null, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('05/06/2020 6:25', 'DD/MM/YYYY HH24:MI'), 0, 0, 2, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('05/06/2020 2:33', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.10, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.71, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.14, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.33, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.27, 49.55, null, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('05/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.24, 49.55, null, 35, 15); -- 35 ; 15
-- 06/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('06/06/2020 12:12', 'DD/MM/YYYY HH24:MI'), 0.27, 2.5, null, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('06/06/2020 20:45', 'DD/MM/YYYY HH24:MI'), 0.55, 2.5, null, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('06/06/2020 2:12', 'DD/MM/YYYY HH24:MI'),  1.2, 2.1, null, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('06/06/2020 9:45', 'DD/MM/YYYY HH24:MI'),  6.2, 1.4, null, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('06/06/2020 14:13', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('06/06/2020 19:25', 'DD/MM/YYYY HH24:MI'), 2.35, 5.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('06/06/2020 21:14', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('06/06/2020 23:23', 'DD/MM/YYYY HH24:MI'), 1.58, 4.27, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('06/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 2.55, 3.25, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('06/06/2020 12:21', 'DD/MM/YYYY HH24:MI'), 1.25, 2.25, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('06/06/2020 19:24', 'DD/MM/YYYY HH24:MI'), 0, 0, 8, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 2.88, 4.50, null, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.15, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.15, 49.29, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.15, 49.88, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 5.44, 5.00, null, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.24, 7.24, null, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 65.88, 28.81, null, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.12, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.25, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.55, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.27, 49.55, null, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('06/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.18, 49.55, null, 35, 15); -- 35 ; 15
-- 07/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('07/06/2020 6:00', 'DD/MM/YYYY HH24:MI'), 1.2, 2.4, null, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('07/06/2020 8:36', 'DD/MM/YYYY HH24:MI'), 0.55, 2.5, null, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('07/06/2020 7:45', 'DD/MM/YYYY HH24:MI'),  1.2, 2.1, null, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('07/06/2020 3:45', 'DD/MM/YYYY HH24:MI'),  0, 0, 2, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('07/06/2020 2:25', 'DD/MM/YYYY HH24:MI'), 2.20, 5.24, null, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('07/06/2020 14:25', 'DD/MM/YYYY HH24:MI'), 2.35, 5.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('07/06/2020 14:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.25, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('07/06/2020 18:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('07/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 3.55, 2.44, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('07/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.00, 3.40, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('07/06/2020 23:24', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('07/06/2020 12:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 3, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('07/06/2020 8:24', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.15, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('07/06/2020 6:00', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.10, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.15, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.24, 7.24, null, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('07/06/2020 21:18', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 65.88, 28.81, null, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.12, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.25, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.55, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('07/06/2020 19:32', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.14, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('07/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.18, 49.55, null, 35, 15); -- 35 ; 15
-- 08/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('08/06/2020 11:00', 'DD/MM/YYYY HH24:MI'), 0, 0, 8, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('08/06/2020 11:36', 'DD/MM/YYYY HH24:MI'), 0.55, 2.5, null, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('08/06/2020 9:45', 'DD/MM/YYYY HH24:MI'),  1.2, 1.8, null, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('08/06/2020 8:45', 'DD/MM/YYYY HH24:MI'),  0, 0, 2, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('08/06/2020 10:25', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('08/06/2020 13:25', 'DD/MM/YYYY HH24:MI'), 2.18, 3.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('08/06/2020 11:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.25, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('08/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.22, 2.27, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('08/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 0.55, 2.25, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('08/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('08/06/2020 15:20', 'DD/MM/YYYY HH24:MI'), 0.11, 0.80, null, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('08/06/2020 15:12', 'DD/MM/YYYY HH24:MI'), 1.44, 2.5, null, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.30, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.15, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('08/06/2020 6:32', 'DD/MM/YYYY HH24:MI'), 0, 00, 0.51, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.24, 7.24, null, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('08/06/2020 20:33', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 65.88, 28.81, null, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.12, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.25, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.55, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('08/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.27, 49.55, null, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('08/06/2020 15:18', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.54, 35, 15); -- 35 ; 15
-- 09/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('09/06/2020 12:00', 'DD/MM/YYYY HH24:MI'), 0.80, 1.9, null, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('09/06/2020 12:36', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('09/06/2020 4:45', 'DD/MM/YYYY HH24:MI'),  1.2, 2.1, null, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('09/06/2020 2:45', 'DD/MM/YYYY HH24:MI'),  6.0, 1.70, null, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('09/06/2020 14:25', 'DD/MM/YYYY HH24:MI'), 2.77, 5.24, null, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('09/06/2020 18:25', 'DD/MM/YYYY HH24:MI'), 2.80, 5.18, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('09/06/2020 19:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.27, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('09/06/2020 21:21', 'DD/MM/YYYY HH24:MI'), 1.58, 4.29, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('09/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 0.55, 4.40, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('09/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 4.25, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('09/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.22, 2.71, null, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('09/06/2020 7:28', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('09/06/2020 2:20', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.14, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('09/06/2020 5:55', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.18, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 65.88, 28.81, null, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.12, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.25, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.55, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.27, 49.55, null, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('09/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.18, 49.55, null, 35, 15); -- 35 ; 15
-- 10/06/2020
-- Venezuela
insert into detalle_servicio values (to_timestamp('10/06/2020 11:00', 'DD/MM/YYYY HH24:MI'), 1.7, 2.7, null, 22, 1); -- Merida ; CANTV
insert into detalle_servicio values (to_timestamp('10/06/2020 10:36', 'DD/MM/YYYY HH24:MI'), 0.55, 2.5, null, 23, 1); -- Caracas ; CANTV
insert into detalle_servicio values (to_timestamp('10/06/2020 8:45', 'DD/MM/YYYY HH24:MI'),  0, 0, 2, 23, 4); -- Caracas ; INTER
insert into detalle_servicio values (to_timestamp('10/06/2020 7:45', 'DD/MM/YYYY HH24:MI'),  6.2, 1.4, null, 22, 4); -- Merida ; INTER
insert into detalle_servicio values (to_timestamp('10/06/2020 6:25', 'DD/MM/YYYY HH24:MI'), 2.20, 5.24, null, 22, 2); -- Merida ; MOVISTAR
insert into detalle_servicio values (to_timestamp('10/06/2020 5:25', 'DD/MM/YYYY HH24:MI'), 2.35, 5.40, null, 23, 2); -- Caracas ; MOVISTAR
insert into detalle_servicio values (to_timestamp('10/06/2020 3:21', 'DD/MM/YYYY HH24:MI'), 1.20, 3.25, null, 22, 3); -- Merida ; DIGITEL
insert into detalle_servicio values (to_timestamp('10/06/2020 14:21', 'DD/MM/YYYY HH24:MI'), 1.58, 4.27, null, 23, 3); -- Caracas ; DIGITEL
insert into detalle_servicio values (to_timestamp('10/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.55, 1.25, null, 21, 3); -- San Antonio ; DIGITEL
insert into detalle_servicio values (to_timestamp('10/06/2020 15:21', 'DD/MM/YYYY HH24:MI'), 1.18, 2.25, null, 21, 2); -- San Antonio ; Movistar
insert into detalle_servicio values (to_timestamp('10/06/2020 5:12', 'DD/MM/YYYY HH24:MI'), 0, 0, 3, 21, 1); -- San Antonio ; CANTV
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 0.77, 3.54, null, 21, 4); -- San Antonio ; INTER
-- Estados Unidos
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 24, 5); -- 24 ; 5
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 24, 11); -- 24 ; 11
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 24, 9); -- 24 ; 9
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 24, 10); -- 24 ; 10
insert into detalle_servicio values (to_timestamp('10/06/2020 00:20', 'DD/MM/YYYY HH24:MI'), 0, 0, 0.19, 25, 5); -- 25 ; 5
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 25, 11); -- 25 ; 11
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 25, 9); -- 25 ; 9
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 25, 10); -- 25 ; 10
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.80, 9.44, null, 26, 5); -- 26 ; 5
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 25.55, 19.00, null, 26, 11); -- 26 ; 11
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.48, 49.88, null, 26, 9); -- 26 ; 9
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 19.88, 49.77, null, 26, 10); -- 26 ; 10
-- Brasil
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 4.44, 5.00, null, 27, 6); -- 27 ; UOL
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.30, 7.14, null, 28, 6); -- 28 ; UOL
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 29, 6); -- 29 ; UOL
-- Mexico
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.44, 7.00, null, 30, 6); -- 30 ; UOL
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 0, 0, 2, 31, 6); -- 31 ; UOL
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 6.18, 7.22, null, 32, 6); -- 32 ; UOL
-- Espana
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.88, 34.81, null, 33, 13); -- 33 ; 13
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.17, 34.12, null, 34, 13); -- 34 ; 13
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 49.25, 34.71, null, 35, 13); -- 35 ; 13
insert into detalle_servicio values (to_timestamp('10/06/2020 1:21', 'DD/MM/YYYY HH24:MI'), 0, 0, 1, 33, 14); -- 33 ; 14
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 63.17, 28.12, null, 34, 14); -- 34 ; 14
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 64.25, 28.71, null, 35, 14); -- 35 ; 14
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 48.70, 49.55, null, 33, 15); -- 33 ; 15
insert into detalle_servicio values (to_timestamp('10/06/2020 19:32', 'DD/MM/YYYY HH24:MI'), 0, 0, 2, 34, 15); -- 34 ; 15
insert into detalle_servicio values (to_timestamp('10/06/2020 15:00', 'DD/MM/YYYY HH24:MI'), 47.18, 49.55, null, 35, 15); -- 35 ; 15

-- Personas --
execute insercion_personas(1, 'Lamont', null, 'Walter', 'Rath', to_date('10/11/1956', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21,'imgH1.jpg');
execute insercion_personas(2, 'Burton', 'Art', 'Sawayn', 'Hahn', to_date('12/10/1940', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21,'imgM1.jpg');
execute insercion_personas(3, 'Ramiro', 'Cornell', 'Balistreri', 'Shanahan', to_date('19/01/1975', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21,'imgH2.jpg');
execute insercion_personas(4, 'Keli', null, 'Johns', 'Bailey', to_date('14/05/1976', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21,'imgM2.jpg');
execute insercion_personas(5, 'Jonah', 'Stanford', 'Braun', 'Nader', to_date('08/09/1995', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21,'imgM3.jpg'); 
execute insercion_personas(6, 'Tandy', 'Nickie', 'McClure', 'Wolf', to_date('14/03/1976', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22,'imgM4.jpg');
execute insercion_personas(7, 'Charlene', 'Silas', 'Price', 'Smitham', to_date('28/10/1965', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22,'imgH20.jpg');
execute insercion_personas(8, 'Alyssa', 'Nereida', 'Sawayn', 'Skiles', to_date('06/08/1989', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22,'imgH4.jpg');
execute insercion_personas(9, 'Amber', 'Shawnna', 'Larson', 'Moen', to_date('11/07/2000', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22,'imgH23.jpg');
execute insercion_personas(10, 'Kraig', 'Noemi', 'Morissette', 'Bradtke', to_date('28/05/1989', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22,'imgH5.jpg');
execute insercion_personas(11, 'Alane', 'Noelle', 'Kuhic', 'Luettgen', to_date('20/10/1985', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23,'imgM5.jpg');
execute insercion_personas(12, 'Michael', null, 'Stehr', 'Dietrich', to_date('13/11/1992', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23,'imgH6.jpg');
execute insercion_personas(13, 'Layne', 'Charley', 'Simonis', 'Hamill', to_date('10/04/1981', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23,'imgH7.jpg');
execute insercion_personas(14, 'Roberta', null, 'Sawayn', 'Macejkovic', to_date('31/05/1988', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23,'imgH8.jpg');
execute insercion_personas(15, 'Wyatt', 'Wilmer', 'Stiedemann', 'Kertzmann', to_date('19/07/1940', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23,'imgM6.jpg');
-- USA
execute insercion_personas(16, 'Tegan', 'Winston', 'Ratke', 'Casper', to_date('11/09/1941', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24,'imgM7.jpg');
execute insercion_personas(17, 'Deshawn', null, 'Kassulke', 'Langworth', to_date('25/09/1988', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24,'imgH9.jpg');
execute insercion_personas(18, 'Ilse', 'Jae', 'Simonis', 'Wilkinson', to_date('27/06/1963', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24,'imgM8.jpg');
execute insercion_personas(19, 'Chong', 'Patrick', 'Langworth', 'Zemlak', to_date('12/11/1944', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24,'imgM9.jpg');
execute insercion_personas(20, 'Peter', null, 'Schimmel', 'Welch', to_date('26/06/1973', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 24,'imgM10.jpg');
execute insercion_personas(21, 'Elina', 'Ignacio', 'Ratke', 'Leffler', to_date('12/04/1974', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 25,'imgM11.jpg');
execute insercion_personas(22, 'Julio', 'Lovie', 'Von', 'Altenwerth', to_date('08/01/1998', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 25,'imgM12.jpg');
execute insercion_personas(23, 'Young', 'Corrin', 'Wintheiser', 'Corkery', to_date('07/09/1964', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 25,'imgM13.jpg');
execute insercion_personas(24, 'Alfonzo', null, 'Skiles', 'Cassin', to_date('28/07/1957', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 25,'imgM14.jpg');
execute insercion_personas(25, 'Isaura', 'Nathaniel', 'Hagenes', 'Ondricka', to_date('08/08/1983', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 25,'imgM15.jpg');
execute insercion_personas(26, 'Nicki', 'Edison', 'Konopelski', 'Bahringer', to_date('13/12/1944', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 26,'imgM16.jpg');
execute insercion_personas(27, 'Kittie', null, 'Wiegand', 'Yost', to_date('09/02/1942', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 26,'imgM17.jpg');
execute insercion_personas(28, 'Albina', null, 'Walter', 'Wiza', to_date('30/09/1958', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 26,'imgM18.jpg');
execute insercion_personas(29, 'Lucien', null, 'Bahringer', 'Sanford', to_date('30/12/1972', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26,'imgH10.jpg');
execute insercion_personas(30, 'Kathyrn', 'Bennett', 'Lowe', 'Price', to_date('07/04/1959', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26,'imgH11.jpg');
-- BRASIL
execute insercion_personas(31, 'Chong', 'Daron', 'Maggio', 'Hegmann', to_date('07/11/1942', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27,'imgM1.jpg');
execute insercion_personas(32, 'Tabetha', null, 'Jerde', 'Schoen', to_date('23/01/1948', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27,'imgM2.jpg');
execute insercion_personas(33, 'Kimber', null, 'Conroy', 'Russel', to_date('07/07/1944', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27,'imgM3.jpg');
execute insercion_personas(34, 'Damien', 'Osvaldo', 'Hintz', 'Rempel', to_date('11/01/1944', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 27,'imgH12.jpg');
execute insercion_personas(35, 'Cory', 'Ivelisse', 'Brekke', 'Medhurst', to_date('20/01/1960', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 27,'imgH13.jpg');
execute insercion_personas(36, 'Viviana', 'Doria', 'Stroman', 'Ledner', to_date('13/08/1960', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 28,'imgM4.jpg');
execute insercion_personas(37, 'Clarinda', 'Estelle', 'Lueilwitz', 'McGlynn', to_date('30/03/1981', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28,'imgH14.jpg');
execute insercion_personas(38, 'Frederic', 'Cassi', 'Collins', 'Greenholt', to_date('01/06/1946', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 28,'imgH15.jpg');
execute insercion_personas(39, 'Ike', 'Shannon', 'Botsford', 'Ferry', to_date('12/07/1943', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 28,'imgH16.jpg');
execute insercion_personas(40, 'Ahmed', 'Sid', 'Cummings', 'Pfannerstill', to_date('17/06/1993', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28,'imgM5.jpg');
execute insercion_personas(41, 'Lezlie', null, 'Heathcote', 'Stiedemann', to_date('15/07/1953', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 29,'imgH17.jpg');
execute insercion_personas(42, 'Pete', null, 'Gorczany', 'Frami', to_date('28/05/1982', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 29,'imgH18.jpg');
execute insercion_personas(43, 'Milo', null, 'Rutherford', 'Zulauf', to_date('03/04/1941', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29,'imgM6.jpg');
execute insercion_personas(44, 'Marshall', null, 'Auer', 'Heller', to_date('30/09/1982', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29,'imgH19.jpg');
execute insercion_personas(45, 'Van', null, 'Maggio', 'Kunde', to_date('18/01/2001', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29,'imgM7.jpg');
-- MEXICO
execute insercion_personas(46, 'Salome', null, 'Abbott', 'Schmitt', to_date('03/04/1967', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 30,'imgM8.jpg');
execute insercion_personas(47, 'Cristen', null, 'Adams', 'Predovic', to_date('22/12/1979', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 30,'imgH20.jpg');
execute insercion_personas(48, 'Leonia', null, 'Mraz', 'Conroy', to_date('11/06/1993', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 30,'imgM9.jpg');
execute insercion_personas(49, 'Cortez', 'Sallie', 'Hoeger', 'Turcotte', to_date('05/12/1977', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 30,'imgH21.jpg');
execute insercion_personas(50, 'Porfirio', 'Neva', 'Lesch', 'Lemke', to_date('04/10/1968', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 30,'imgM10.jpg');
execute insercion_personas(51, 'Corina', 'Edwardo', 'Friesen', 'Lehner', to_date('20/04/1983', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 31,'imgM12.jpg');
execute insercion_personas(52, 'Jeramy', null, 'Braun', 'Cummerata', to_date('17/04/1954', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 31,'imgM13.jpg');
execute insercion_personas(53, 'Sharolyn', 'Gino', 'Reinger', 'Tremblay', to_date('31/03/1981', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 31,'imgM14.jpg');
execute insercion_personas(54, 'Erick', null, 'Kreiger', 'Gutkowski', to_date('12/06/1943', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 31,'imgH22.jpg');
execute insercion_personas(55, 'Carter', 'Sylvia', 'Spinka', 'OHara', to_date('15/04/1977', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 31,'imgM15.jpg');
execute insercion_personas(56, 'Mack', 'Pearline', 'Nicolas', 'Weber', to_date('28/11/1987', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 32,'imgH23.jpg');
execute insercion_personas(57, 'Audra', null, 'Murphy', 'Roob', to_date('06/06/1952', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 32,'imgH1.jpg');
execute insercion_personas(58, 'Aracelis', 'Lance', 'McCullough', 'Glover', to_date('21/12/1963', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 32,'imgM16.jpg');
execute insercion_personas(59, 'Orval', null, 'Reichert', 'Rohan', to_date('24/03/1977', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 32,'imgM17.jpg');
execute insercion_personas(60, 'Adelaida', null, 'Watsica', 'Baumbach', to_date('04/06/1976', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 32,'imgH2.jpg');
-- ESPANA
execute insercion_personas(61, 'Willy', 'Karena', 'Hintz', 'Moen', to_date('28/01/1992', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 33,'imgH17.jpg');
execute insercion_personas(62, 'Chas', null, 'Ziemann', 'Rath', to_date('15/07/1986', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 33,'imgM18.jpg');
execute insercion_personas(63, 'Salvador', null, 'Murphy', 'Collins', to_date('05/07/1946', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 33,'imgM1.jpg');
execute insercion_personas(64, 'Mafalda', null, 'Stanton', 'Corkery', to_date('10/07/1996', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 33,'imgH4.jpg');
execute insercion_personas(65, 'Season', 'Lina', 'Walsh', 'Stanton', to_date('06/11/1941', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 33,'imgH5.jpg');
execute insercion_personas(66, 'Ivana', 'Erasmo', 'Ryan', 'Watsica', to_date('10/01/1996', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 34,'imgM2.jpg');
execute insercion_personas(67, 'Lee', 'Clint', 'Ortiz', 'Rempel', to_date('06/12/1985', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 34,'imgH6.jpg');
execute insercion_personas(68, 'Randell', null, 'Schulist', 'Hackett', to_date('15/01/1999', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 34,'imgM3.jpg');
execute insercion_personas(69, 'Jeromy', 'Alissa', 'Considine', 'Fay', to_date('06/05/1995', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 34,'imgM4.jpg');
execute insercion_personas(70, 'Ramiro', 'Earline', 'King', 'Reichel', to_date('14/08/1942', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 34,'imgH7.jpg');
execute insercion_personas(71, 'Irwin', null, 'Heidenreich', 'Olson', to_date('11/08/1978', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 35,'imgM5.jpg');
execute insercion_personas(72, 'Katelynn', 'Danette', 'OKon', 'Denesik', to_date('23/03/1981', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 35,'imgM6.jpg');
execute insercion_personas(73, 'Glinda', null, 'Macejkovic', 'Padberg', to_date('10/12/1940', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 35,'imgH8.jpg');
execute insercion_personas(74, 'Andrew', null, 'Tremblay', 'Hessel', to_date('25/04/1986', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 35,'imgH9.jpg');
execute insercion_personas(75, 'Ermelinda', 'Willian', 'Simonis', 'Emard', to_date('17/04/1994', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 35,'imgM7.jpg');
-- NUEVOS -- 
execute insercion_personas(76, 'Derril', 'Gabi', 'Rattery', 'Shearsby', to_date('23/05/1993', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH20.jpg');
execute insercion_personas(77, 'Huntington', 'Laughton', 'Lorence', 'Leverich', to_date('26/09/1961', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH19.jpg');
execute insercion_personas(78, 'Kingston', 'Ashley', 'Tyas', 'Kulver', to_date('11/12/1984', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH1.jpg');
execute insercion_personas(79, 'Kurtis', 'Clemmie', 'Stapels', 'Zanetello', to_date('01/01/1995', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH22.jpg');
execute insercion_personas(80, 'Dimitry', 'Staffard', 'Peyto', 'Donizeau', to_date('22/11/1993', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH12.jpg');
execute insercion_personas(81, 'Louis', 'Wallache', 'De Ambrosis', 'Nesby', to_date('25/04/2002', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH4.jpg');
execute insercion_personas(82, 'Pascale', 'Gunther', 'Gersam', 'Boow', to_date('01/10/1992', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH18.jpg');
execute insercion_personas(83, 'Selig', 'Berke', 'Petrichat', 'Glaves', to_date('21/10/2004', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH19.jpg');
execute insercion_personas(84, 'Cody', 'Nil', 'Chesterton', 'Bruff', to_date('14/05/2008', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH8.jpg');
execute insercion_personas(85, 'Stefan', 'Steward', 'Tigwell', 'Snellman', to_date('28/03/1965', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH7.jpg');
execute insercion_personas(86, 'Andy', 'Renaldo', 'Spellward', 'Stubbley', to_date('18/03/1978', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH14.jpg');
execute insercion_personas(87, 'Dorie', 'Eli', 'Cudby', 'Gaskin', to_date('15/09/1978', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH23.jpg');
execute insercion_personas(88, 'Cordell', 'Clarance', 'Bennis', 'Baroux', to_date('06/06/2008', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH19.jpg');
execute insercion_personas(89, 'Dukey', 'Wylie', 'Bazley', 'Markham', to_date('20/07/2006', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH1.jpg');
execute insercion_personas(90, 'Godwin', 'Gardy', 'Coon', 'Saker', to_date('18/04/1985', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH15.jpg');
execute insercion_personas(91, 'Brooke', 'Yancy', 'Safhill', 'O''Lennane', to_date('28/09/1991', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH18.jpg');
execute insercion_personas(92, 'Basile', 'Artur', 'MacCarroll', 'Presslie', to_date('13/10/1986', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH17.jpg');
execute insercion_personas(93, 'Bartel', 'Shellysheldon', 'Lardeur', 'De Rechter', to_date('30/06/1973', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH18.jpg');
execute insercion_personas(94, 'Auberon', 'Cullie', 'Itzcovich', 'Limerick', to_date('08/07/1976', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH8.jpg');
execute insercion_personas(95, 'Haley', 'Lorant', 'Portt', 'Gorling', to_date('20/03/1992', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH20.jpg');
execute insercion_personas(96, 'Allard', 'Lewiss', 'Ragg', 'Gulliman', to_date('13/06/1989', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH13.jpg');
execute insercion_personas(97, 'Mort', 'Leroy', 'Blaxlande', 'Igo', to_date('26/02/1977', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH13.jpg');
execute insercion_personas(98, 'Clement', 'Haze', 'Gauford', 'McNeice', to_date('10/07/1987', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH13.jpg');
execute insercion_personas(99, 'Kaspar', 'Nefen', 'Cisson', 'Faye', to_date('18/06/2006', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH11.jpg');
execute insercion_personas(100, 'Cam', 'Rusty', 'Strongman', 'Garling', to_date('15/03/1988', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH10.jpg');
execute insercion_personas(101, 'Kenyon', 'Frazier', 'Mordacai', 'Serman', to_date('11/08/1967', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH14.jpg');
execute insercion_personas(102, 'Carlin', 'Sherwynd', 'Willingam', 'Arons', to_date('13/01/1961', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH5.jpg');
execute insercion_personas(103, 'Chicky', 'Myrvyn', 'Grayer', 'Olin', to_date('08/03/1978', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH15.jpg');
execute insercion_personas(104, 'Isac', 'Lazare', 'Luesley', 'Scoffham', to_date('31/01/1986', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH16.jpg');
execute insercion_personas(105, 'Gifford', 'Rickert', 'Dawkins', 'Rochford', to_date('05/09/1968', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH22.jpg');
execute insercion_personas(106, 'Alvan', 'Romain', 'Longlands', 'Golthorpp', to_date('28/02/1983', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH16.jpg');
execute insercion_personas(107, 'Pierson', 'Jasen', 'Gadault', 'Hoggan', to_date('14/09/1972', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH16.jpg');
execute insercion_personas(108, 'Hernando', 'Gage', 'Berrigan', 'Tomalin', to_date('15/01/1977', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH20.jpg');
execute insercion_personas(109, 'Ignatius', 'Edgardo', 'Kidsley', 'Hanton', to_date('03/02/1985', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH18.jpg');
execute insercion_personas(110, 'Barr', 'Toby', 'Hankinson', 'Nolleau', to_date('07/09/1961', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH23.jpg');
execute insercion_personas(111, 'Egan', 'Bobby', 'Clara', 'Oldham', to_date('02/03/2004', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH1.jpg');
execute insercion_personas(112, 'Padraic', 'Nobie', 'Stevani', 'Hargerie', to_date('10/04/1963', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH12.jpg');
execute insercion_personas(113, 'Giraud', 'Dill', 'Krzysztof', 'Dagleas', to_date('26/01/2005', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH9.jpg');
execute insercion_personas(114, 'Ichabod', 'Donnie', 'Stockford', 'Chuney', to_date('10/07/1980', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH10.jpg');
execute insercion_personas(115, 'Matty', 'Cobby', 'Toxell', 'Lampitt', to_date('22/02/1994', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH2.jpg');
execute insercion_personas(116, 'Salvador', 'Arte', 'Ansteys', 'Croux', to_date('13/02/1978', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH22.jpg');
execute insercion_personas(117, 'Quintus', 'Vern', 'Willmot', 'Gainsbury', to_date('17/06/2006', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH21.jpg');
execute insercion_personas(118, 'Lesley', 'Inglis', 'Barczewski', 'Bamsey', to_date('30/06/1962', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH23.jpg');
execute insercion_personas(119, 'Maynard', 'Stanislaw', 'Theakston', 'Knell', to_date('28/12/1995', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH15.jpg');
execute insercion_personas(120, 'Stanleigh', 'Willi', 'Lernihan', 'Napolione', to_date('05/11/1971', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH5.jpg');
execute insercion_personas(121, 'Nate', 'Garvin', 'Yter', 'Smedley', to_date('07/10/1987', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH22.jpg');
execute insercion_personas(122, 'Gregorio', 'Gradeigh', 'Soans', 'Whild', to_date('09/05/1998', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH13.jpg');
execute insercion_personas(123, 'Royce', 'Edouard', 'Morbey', 'Waker', to_date('02/10/1996', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH5.jpg');
execute insercion_personas(124, 'Benedikt', 'Humfrey', 'Harriagn', 'Rollo', to_date('18/09/1960', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH13.jpg');
execute insercion_personas(125, 'Milo', 'Flemming', 'Meineking', 'Ogers', to_date('14/08/2008', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH23.jpg');
execute insercion_personas(126, 'Marietta', 'Eziechiele', 'Gosselin', 'Staden', to_date('14/09/1980', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH14.jpg');
execute insercion_personas(127, 'Raymond', 'Bax', 'Doward', 'Beniesh', to_date('26/02/1996', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH18.jpg');
execute insercion_personas(128, 'Boigie', 'Tracey', 'Solloway', 'Schroter', to_date('08/04/1985', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH11.jpg');
execute insercion_personas(129, 'Calvin', 'Algernon', 'Giffen', 'Blackesland', to_date('26/08/2000', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH13.jpg');
execute insercion_personas(130, 'Ethan', 'Birch', 'Vedenyakin', 'Lanchberry', to_date('23/10/2005', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH18.jpg');
execute insercion_personas(131, 'Rodge', 'Vasili', 'Fetherston', 'Powder', to_date('11/04/2005', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH17.jpg');
execute insercion_personas(132, 'Abbey', 'Gaspard', 'Fensome', 'Earley', to_date('27/02/1998', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH8.jpg');
execute insercion_personas(133, 'Hendrick', 'Guilbert', 'Southern', 'Trinder', to_date('20/08/1964', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH7.jpg');
execute insercion_personas(134, 'Benjamen', 'Wald', 'MacDermand', 'Gardener', to_date('07/04/1993', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH5.jpg');
execute insercion_personas(135, 'Oswell', 'Colin', 'Lamborne', 'Itzkowicz', to_date('31/08/2000', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH15.jpg');
execute insercion_personas(136, 'Shell', 'Frederic', 'McVaugh', 'Sleigh', to_date('12/01/1971', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH11.jpg');
execute insercion_personas(137, 'Weston', 'Jimmy', 'Southon', 'Parbrook', to_date('15/11/1988', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH5.jpg');
execute insercion_personas(138, 'Allyn', 'Allard', 'Dolton', 'Alldridge', to_date('06/04/1969', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH21.jpg');
execute insercion_personas(139, 'Xymenes', 'Finn', 'O''Kelly', 'Horrell', to_date('20/11/1967', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH20.jpg');
execute insercion_personas(140, 'Jacob', 'Sayres', 'Banisch', 'Shead', to_date('19/04/2008', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH20.jpg');
execute insercion_personas(141, 'Arvin', 'Armando', 'Gillespey', 'Summersett', to_date('26/06/1969', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH21.jpg');
execute insercion_personas(142, 'Boniface', 'Yance', 'Gaunson', 'Paffett', to_date('08/05/1973', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH7.jpg');
execute insercion_personas(143, 'Taddeusz', 'Bordie', 'Dunstall', 'Manske', to_date('25/05/2006', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH21.jpg');
execute insercion_personas(144, 'Jordon', 'Arny', 'Scase', 'Loton', to_date('05/03/1983', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH7.jpg');
execute insercion_personas(145, 'Hercules', 'Tomas', 'Heimes', 'Stead', to_date('21/01/1972', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH14.jpg');
execute insercion_personas(146, 'Shaughn', 'Burlie', 'Malyan', 'Jindra', to_date('16/04/1968', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH13.jpg');
execute insercion_personas(147, 'Kennett', 'Oby', 'Smallpeace', 'Mackin', to_date('20/11/1996', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH20.jpg');
execute insercion_personas(148, 'Bond', 'Son', 'Harmes', 'McGillivrie', to_date('21/02/2006', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH17.jpg');
execute insercion_personas(149, 'Sully', 'Spense', 'Roches', 'Tullis', to_date('23/11/1987', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH17.jpg');
execute insercion_personas(150, 'Gottfried', 'Ravid', 'Garrad', 'Schade', to_date('02/11/1987', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH1.jpg');
execute insercion_personas(151, 'Ansell', 'Roma', 'Cunliffe', 'Currer', to_date('23/11/1984', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH17.jpg');
execute insercion_personas(152, 'Edward', 'Orrin', 'Schorah', 'Halstead', to_date('28/06/1966', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH20.jpg');
execute insercion_personas(153, 'Ozzie', 'Sutton', 'Geertz', 'Eskrigg', to_date('27/10/1992', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH13.jpg');
execute insercion_personas(154, 'Gabriel', 'Marty', 'Sidey', 'Fearick', to_date('10/03/2003', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH18.jpg');
execute insercion_personas(155, 'Fons', 'Natty', 'Ricks', 'Slograve', to_date('18/07/2000', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH12.jpg');
execute insercion_personas(156, 'Stearne', 'Alaster', 'Koschke', 'Skeermor', to_date('10/09/1973', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH11.jpg');
execute insercion_personas(157, 'Hastie', 'Harland', 'Hintze', 'Chasteney', to_date('14/02/1983', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH2.jpg');
execute insercion_personas(158, 'Byrann', 'Carson', 'Purcell', 'Gorsse', to_date('21/10/1993', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH6.jpg');
execute insercion_personas(159, 'Gare', 'Gardiner', 'Gommes', 'Espadas', to_date('02/05/1973', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH17.jpg');
execute insercion_personas(160, 'Wolfy', 'Udale', 'Greenstead', 'Touhig', to_date('19/02/1985', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH22.jpg');
execute insercion_personas(161, 'Jethro', 'Brit', 'Cheshir', 'Kendell', to_date('08/03/2004', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH8.jpg');
execute insercion_personas(162, 'Aristotle', 'Cullen', 'Di Carli', 'Lenchenko', to_date('26/06/1964', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH15.jpg');
execute insercion_personas(163, 'Garwin', 'Gunther', 'Dottridge', 'Brun', to_date('22/02/1990', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH10.jpg');
execute insercion_personas(164, 'Nial', 'Maddy', 'Connolly', 'Sparks', to_date('04/02/1960', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH18.jpg');
execute insercion_personas(165, 'Arnie', 'Sebastian', 'Budnk', 'Dankersley', to_date('20/01/1984', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH16.jpg');
execute insercion_personas(166, 'Miner', 'Hobie', 'Jaggi', 'Huster', to_date('30/06/1991', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH19.jpg');
execute insercion_personas(167, 'Bertie', 'Nikolos', 'Tetley', 'Chadbourn', to_date('03/01/1999', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH19.jpg');
execute insercion_personas(168, 'Ellswerth', 'Merle', 'Haslam', 'Lawrenz', to_date('26/06/1986', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH15.jpg');
execute insercion_personas(169, 'Dov', 'George', 'Bridgeland', 'Ablitt', to_date('26/04/1983', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH11.jpg');
execute insercion_personas(170, 'Stanislas', 'Cristiano', 'Percy', 'Asp', to_date('22/03/1987', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH13.jpg');
execute insercion_personas(171, 'Hilarius', 'See', 'Bruneau', 'Face', to_date('17/06/1989', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH18.jpg');
execute insercion_personas(172, 'Gaelan', 'Patten', 'Tarquini', 'Worham', to_date('10/07/1989', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH9.jpg');
execute insercion_personas(173, 'Sigvard', 'Yuri', 'Albutt', 'Nijs', to_date('27/01/1987', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH14.jpg');
execute insercion_personas(174, 'Lisle', 'Vidovic', 'Baszniak', 'MacLeese', to_date('04/12/2005', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH18.jpg');
execute insercion_personas(175, 'Jarrad', 'Nev', 'Bawcock', 'Semarke', to_date('26/01/1992', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH9.jpg');
execute insercion_personas(176, 'Gonzales', 'Ronny', 'Campsall', 'Wedmore.', to_date('19/07/1987', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH5.jpg');
execute insercion_personas(177, 'Chrisse', 'Eugenio', 'Wellum', 'Croydon', to_date('20/04/1989', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH17.jpg');
execute insercion_personas(178, 'Vic', 'Denver', 'Habbershon', 'de Cullip', to_date('27/09/2006', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH9.jpg');
execute insercion_personas(179, 'Dane', 'Milty', 'Creagh', 'Farnie', to_date('20/01/1978', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH8.jpg');
execute insercion_personas(180, 'Brendis', 'Guglielmo', 'Lonsdale', 'Schust', to_date('19/07/1963', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH21.jpg');
execute insercion_personas(181, 'Ferguson', 'Herschel', 'Symes', 'Gainsford', to_date('24/08/1963', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH13.jpg');
execute insercion_personas(182, 'Scot', 'Granger', 'Ormston', 'Muckleston', to_date('05/07/1990', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH17.jpg');
execute insercion_personas(183, 'Tony', 'Dall', 'Rodwell', 'Gracewood', to_date('24/07/2001', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH22.jpg');
execute insercion_personas(184, 'Bogart', 'Corbie', 'Urrey', 'Conquer', to_date('28/11/2004', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH7.jpg');
execute insercion_personas(185, 'Ab', 'Buddie', 'Reiner', 'Lazenby', to_date('22/07/1970', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH11.jpg');
execute insercion_personas(186, 'Domingo', 'Braden', 'Lavrinov', 'Andreichik', to_date('12/09/2007', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH18.jpg');
execute insercion_personas(187, 'Jon', 'Efren', 'Nutkins', 'Wyman', to_date('12/12/2001', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH17.jpg');
execute insercion_personas(188, 'Tobit', 'Rance', 'Van der Hoeven', 'Waeland', to_date('18/09/1976', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH23.jpg');
execute insercion_personas(189, 'Antonin', 'Ambrose', 'Boydell', 'Fenwick', to_date('28/05/1966', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH4.jpg');
execute insercion_personas(190, 'Fonsie', 'Marcos', 'Sears', 'Gottelier', to_date('24/12/1996', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH14.jpg');
execute insercion_personas(191, 'Abbot', 'De witt', 'Witton', 'Molloy', to_date('27/01/1964', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH4.jpg');
execute insercion_personas(192, 'Archibaldo', 'Odell', 'Dickins', 'Iwanicki', to_date('09/08/1981', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 21, 'imgH8.jpg');
execute insercion_personas(193, 'Isaiah', 'Chevalier', 'Titcom', 'Arnett', to_date('26/01/1966', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH15.jpg');
execute insercion_personas(194, 'Jourdain', 'Barty', 'Burker', 'Sherewood', to_date('19/10/2003', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH22.jpg');
execute insercion_personas(195, 'Sawyere', 'Frank', 'Ishaki', 'Spray', to_date('04/12/2003', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH8.jpg');
execute insercion_personas(196, 'Buddy', 'Ethan', 'Formoy', 'Adderson', to_date('05/12/1981', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 21, 'imgH21.jpg');
execute insercion_personas(197, 'Steward', 'Pippo', 'Cristobal', 'Fenne', to_date('13/07/2003', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH21.jpg');
execute insercion_personas(198, 'Cliff', 'Marietta', 'Osban', 'Smalridge', to_date('09/08/2005', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH23.jpg');
execute insercion_personas(199, 'Eduard', 'Amery', 'Caulliere', 'Leynagh', to_date('08/01/1974', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 21, 'imgH23.jpg');
execute insercion_personas(200, 'Jeffy', 'Aldous', 'Tristram', 'Syer', to_date('18/12/1961', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH5.jpg');
execute insercion_personas(201, 'Boycie', 'Tabb', 'Aitcheson', 'Bustin', to_date('16/01/2000', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 23, 'imgH23.jpg');
execute insercion_personas(202, 'Cass', 'Jerrome', 'Geering', 'Trumble', to_date('05/03/1971', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 22, 'imgH4.jpg');
execute insercion_personas(203, 'Ivan', 'Rickert', 'Mordy', 'Hanshaw', to_date('15/01/1977', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 22, 'imgH5.jpg');
execute insercion_personas(204, 'Constantine', 'Solly', 'Wyeld', 'Loble', to_date('02/10/1984', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 23, 'imgH21.jpg');
execute insercion_personas(205, 'Brant', 'Archibaldo', 'Mahedy', 'McKleod', to_date('18/03/1978', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH18.jpg');
execute insercion_personas(206, 'Luciano', 'Rriocard', 'McIlherran', 'Twohig', to_date('18/12/1992', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH4.jpg');
execute insercion_personas(207, 'Luce', 'Augustine', 'Ewart', 'Allcroft', to_date('31/07/1981', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH12.jpg');
execute insercion_personas(208, 'Torrin', 'Harbert', 'Wilshire', 'Popland', to_date('14/06/1971', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH23.jpg');
execute insercion_personas(209, 'Eldridge', 'Bobbie', 'Le Grove', 'Vlach', to_date('11/06/2005', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 23, 'imgH23.jpg');
execute insercion_personas(210, 'Vanya', 'Hale', 'Pagan', 'Demange', to_date('20/09/1977', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 22, 'imgH8.jpg');
execute insercion_personas(211, 'Jessee', 'Staffard', 'Sawer', 'Lemmens', to_date('27/08/1994', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH22.jpg');
execute insercion_personas(212, 'Ragnar', 'Perice', 'Atkin', 'Stitfall', to_date('21/03/1999', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH19.jpg');
execute insercion_personas(213, 'Bartholomeo', 'Lon', 'Maryska', 'Sparshatt', to_date('28/11/1998', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH1.jpg');
execute insercion_personas(214, 'Tibold', 'Yale', 'Hugin', 'Cordes', to_date('19/07/1979', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH12.jpg');
execute insercion_personas(215, 'Jessey', 'Reinold', 'Kloss', 'Wartonby', to_date('13/06/1966', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH8.jpg');
execute insercion_personas(216, 'Tucky', 'Nester', 'Gladwin', 'Sibson', to_date('18/04/1974', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH5.jpg');
execute insercion_personas(217, 'Gareth', 'Averell', 'Iannitti', 'Hugueville', to_date('10/02/1994', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH10.jpg');
execute insercion_personas(218, 'Bay', 'Salvidor', 'Woodger', 'Friett', to_date('01/07/1989', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH15.jpg');
execute insercion_personas(219, 'Salim', 'Franciskus', 'Echalie', 'Jardin', to_date('29/11/1969', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH19.jpg');
execute insercion_personas(220, 'Geoffry', 'Asa', 'Tinline', 'Jirzik', to_date('12/01/1985', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH16.jpg');
execute insercion_personas(221, 'Leicester', 'Cesare', 'Bloan', 'Greated', to_date('23/09/1961', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH2.jpg');
execute insercion_personas(222, 'Talbert', 'Shermie', 'Talks', 'Guitton', to_date('21/07/1986', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH1.jpg');
execute insercion_personas(223, 'Frank', 'Roger', 'Brotherick', 'Lilleycrop', to_date('17/01/1992', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH7.jpg');
execute insercion_personas(224, 'Ruggiero', 'Orazio', 'Heakey', 'Lyddiatt', to_date('05/03/2002', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH4.jpg');
execute insercion_personas(225, 'Wolf', 'Der', 'Dodgson', 'Lillyman', to_date('03/10/1965', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH13.jpg');
execute insercion_personas(226, 'Angel', 'Bernardo', 'Jessel', 'Lunk', to_date('28/10/1998', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH1.jpg');
execute insercion_personas(227, 'Fee', 'Paten', 'Sperry', 'Bagehot', to_date('27/04/1980', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH19.jpg');
execute insercion_personas(228, 'Arne', 'Bruno', 'Nisot', 'Delia', to_date('04/06/1980', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH21.jpg');
execute insercion_personas(229, 'Ambrosius', 'Kermy', 'Tinn', 'Downgate', to_date('18/06/1972', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH11.jpg');
execute insercion_personas(230, 'Ingar', 'Darb', 'Van Leeuwen', 'Shinton', to_date('05/10/1981', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH23.jpg');
execute insercion_personas(231, 'Vincent', 'Virge', 'Capener', 'Bandt', to_date('06/03/1966', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH15.jpg');
execute insercion_personas(232, 'Rod', 'Conway', 'Huortic', 'Volante', to_date('30/12/1983', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH17.jpg');
execute insercion_personas(233, 'Powell', 'Meir', 'Larratt', 'Briston', to_date('27/11/1961', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH15.jpg');
execute insercion_personas(234, 'Conn', 'Jeremy', 'De Mitris', 'Wimpey', to_date('22/06/1960', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH1.jpg');
execute insercion_personas(235, 'Tedman', 'Yance', 'Menis', 'Ceeley', to_date('28/07/2008', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH21.jpg');
execute insercion_personas(236, 'Bogey', 'Cleon', 'Bridgeland', 'Diggles', to_date('21/11/1989', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH16.jpg');
execute insercion_personas(237, 'Ransom', 'Archer', 'Kinchley', 'Bulle', to_date('28/04/1973', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH5.jpg');
execute insercion_personas(238, 'Neel', 'Ax', 'Snazel', 'Wenn', to_date('30/10/1990', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH17.jpg');
execute insercion_personas(239, 'Shelden', 'Lucius', 'Ellam', 'Guillon', to_date('16/12/1984', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH11.jpg');
execute insercion_personas(240, 'Gardner', 'Symon', 'Trustram', 'Allbrook', to_date('23/07/1998', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH18.jpg');
execute insercion_personas(241, 'Grantham', 'Rodolph', 'Loweth', 'Bann', to_date('01/01/1961', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH5.jpg');
execute insercion_personas(242, 'Wallas', 'Jozef', 'Stevani', 'Robertelli', to_date('03/12/1968', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH9.jpg');
execute insercion_personas(243, 'Raddie', 'Brooks', 'Stych', 'Sired', to_date('27/10/1972', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH19.jpg');
execute insercion_personas(244, 'Tad', 'Guthrey', 'Andrag', 'Andreix', to_date('01/11/1964', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH15.jpg');
execute insercion_personas(245, 'Gasper', 'Rollin', 'Abden', 'Camden', to_date('22/11/1987', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH6.jpg');
execute insercion_personas(246, 'Fredric', 'Keen', 'Shugg', 'Daish', to_date('20/04/1995', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH4.jpg');
execute insercion_personas(247, 'Shelton', 'Addison', 'Bebbington', 'Thunders', to_date('05/01/2008', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH14.jpg');
execute insercion_personas(248, 'Tanny', 'Wilbur', 'Spaduzza', 'Zanetto', to_date('02/01/1981', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH13.jpg');
execute insercion_personas(249, 'Wilton', 'Aylmer', 'Raccio', 'Grimm', to_date('10/10/1962', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH10.jpg');
execute insercion_personas(250, 'Paco', 'Dolf', 'Devey', 'Beckenham', to_date('05/11/2000', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH1.jpg');
execute insercion_personas(251, 'Seamus', 'Arie', 'Poynzer', 'Vinall', to_date('27/02/1987', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH11.jpg');
execute insercion_personas(252, 'Mar', 'Stanly', 'McLaverty', 'Sneesby', to_date('04/12/1996', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH19.jpg');
execute insercion_personas(253, 'Tulley', 'Abeu', 'Ferdinand', 'Hullyer', to_date('24/01/1975', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH19.jpg');
execute insercion_personas(254, 'Cordy', 'Gabie', 'Patmore', 'Melonby', to_date('23/02/2001', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH1.jpg');
execute insercion_personas(255, 'Husain', 'Tan', 'Wilsee', 'Pasquale', to_date('06/09/1982', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH19.jpg');
execute insercion_personas(256, 'Crosby', 'Rutledge', 'Macy', 'Mattys', to_date('07/04/1994', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH11.jpg');
execute insercion_personas(257, 'Hamlen', 'Nickola', 'Stert', 'Doby', to_date('10/04/2006', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH8.jpg');
execute insercion_personas(258, 'Wolfy', 'Judas', 'Lello', 'Whyte', to_date('21/05/1982', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH19.jpg');
execute insercion_personas(259, 'Rutger', 'Dag', 'Terran', 'Mosby', to_date('08/09/2003', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH20.jpg');
execute insercion_personas(260, 'Sayres', 'Sauveur', 'Dod', 'Crotty', to_date('05/07/2008', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH2.jpg');
execute insercion_personas(261, 'Barnabas', 'Mohandis', 'Muslim', 'Rosthorn', to_date('08/07/1964', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH20.jpg');
execute insercion_personas(262, 'Townsend', 'Graig', 'Bolf', 'Vigars', to_date('11/06/1980', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH9.jpg');
execute insercion_personas(263, 'Chane', 'Gregorius', 'Berthomier', 'Garza', to_date('26/06/1982', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH10.jpg');
execute insercion_personas(264, 'Bron', 'Ashton', 'Stormonth', 'McNair', to_date('14/01/1994', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH7.jpg');
execute insercion_personas(265, 'Napoleon', 'Nealy', 'Drinan', 'Shawl', to_date('14/06/2001', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH11.jpg');
execute insercion_personas(266, 'Tammie', 'Ichabod', 'Dennett', 'Moule', to_date('01/03/1970', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH11.jpg');
execute insercion_personas(267, 'Mahmud', 'Alric', 'Heffy', 'Nuth', to_date('16/02/1978', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH15.jpg');
execute insercion_personas(268, 'Yehudi', 'Bary', 'Headington', 'O''Fallon', to_date('24/06/1975', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH9.jpg');
execute insercion_personas(269, 'Daryl', 'Donall', 'Shakesbye', 'Miettinen', to_date('21/02/2001', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH23.jpg');
execute insercion_personas(270, 'Avictor', 'Abe', 'Worstall', 'Margaret', to_date('31/05/2006', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH12.jpg');
execute insercion_personas(271, 'Worden', 'Alex', 'Pashby', 'Jessett', to_date('07/04/1994', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH6.jpg');
execute insercion_personas(272, 'Billie', 'Luis', 'Watterson', 'Longley', to_date('26/03/1995', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH6.jpg');
execute insercion_personas(273, 'Elmer', 'Holly', 'Oliveto', 'McIlwrick', to_date('16/04/1982', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH5.jpg');
execute insercion_personas(274, 'Andrej', 'Denis', 'Standrin', 'Beau', to_date('28/06/2001', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH21.jpg');
execute insercion_personas(275, 'Jonathon', 'Guntar', 'Skough', 'Redfield', to_date('06/09/2007', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH8.jpg');
execute insercion_personas(276, 'Berton', 'Darius', 'Gorghetto', 'Premble', to_date('09/02/1981', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH11.jpg');
execute insercion_personas(277, 'Donal', 'Stu', 'Kennedy', 'Treleaven', to_date('03/07/1976', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH8.jpg');
execute insercion_personas(278, 'Dani', 'Gardiner', 'Pahlsson', 'Ferretti', to_date('20/12/1978', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH21.jpg');
execute insercion_personas(279, 'Alick', 'Joshia', 'Gubbins', 'Sheepy', to_date('14/03/1972', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH1.jpg');
execute insercion_personas(280, 'Gilles', 'Alistair', 'Siveter', 'Elven', to_date('25/03/1963', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH9.jpg');
execute insercion_personas(281, 'Wilfrid', 'Thurstan', 'Schrieves', 'Boundy', to_date('28/05/1986', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH1.jpg');
execute insercion_personas(282, 'Gray', 'Manny', 'Jimenez', 'Tuckey', to_date('07/08/1998', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH15.jpg');
execute insercion_personas(283, 'Bogart', 'Emanuele', 'Marsden', 'Treneer', to_date('16/05/1966', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH7.jpg');
execute insercion_personas(284, 'Pattin', 'Artemus', 'Gainsburgh', 'Treffry', to_date('19/02/1981', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH14.jpg');
execute insercion_personas(285, 'Lucas', 'Seward', 'Lanfer', 'Rice', to_date('15/01/1985', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH19.jpg');
execute insercion_personas(286, 'Matthiew', 'Skye', 'Casbon', 'Hoyt', to_date('16/05/1981', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH1.jpg');
execute insercion_personas(287, 'Rene', 'Horatius', 'Creamer', 'Emons', to_date('16/07/1969', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH20.jpg');
execute insercion_personas(288, 'Marco', 'Lemar', 'Petroselli', 'Odo', to_date('11/05/1982', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH2.jpg');
execute insercion_personas(289, 'Dougie', 'Harvey', 'Barthod', 'Siveyer', to_date('03/01/2000', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH15.jpg');
execute insercion_personas(290, 'Thane', 'Brook', 'Heminsley', 'Dike', to_date('05/02/1976', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH13.jpg');
execute insercion_personas(291, 'Michal', 'Sigfried', 'O''Cooney', 'Connick', to_date('14/11/2005', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH17.jpg');
execute insercion_personas(292, 'Frederich', 'Ari', 'Puxley', 'Pinyon', to_date('02/10/2004', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH14.jpg');
execute insercion_personas(293, 'Stern', 'Archy', 'Farnfield', 'Crace', to_date('29/12/1961', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH14.jpg');
execute insercion_personas(294, 'Andrew', 'Enos', 'Plett', 'Brinklow', to_date('11/04/1979', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH1.jpg');
execute insercion_personas(295, 'Roddy', 'Skipper', 'Casiroli', 'McKelvie', to_date('22/05/1961', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH16.jpg');
execute insercion_personas(296, 'Ches', 'Elwin', 'Fursey', 'Downham', to_date('20/11/1985', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH8.jpg');
execute insercion_personas(297, 'Gardner', 'Solly', 'Theunissen', 'Fidian', to_date('23/05/2004', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH6.jpg');
execute insercion_personas(298, 'Wakefield', 'Obadiah', 'Southerell', 'Claybourn', to_date('22/10/1961', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH7.jpg');
execute insercion_personas(299, 'Pail', 'Raddie', 'Cadd', 'Hirthe', to_date('04/12/1991', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH8.jpg');
execute insercion_personas(300, 'Erroll', 'Xymenes', 'oldey', 'Copp', to_date('27/04/1970', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH18.jpg');
execute insercion_personas(301, 'Lon', 'Wyatan', 'Vassall', 'Draycott', to_date('28/09/1992', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH12.jpg');
execute insercion_personas(302, 'Bartel', 'Merry', 'Adriaan', 'Arlidge', to_date('10/06/1965', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH8.jpg');
execute insercion_personas(303, 'Herve', 'Delmor', 'O''Halleghane', 'Kintzel', to_date('25/06/1979', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH10.jpg');
execute insercion_personas(304, 'Garv', 'Rocky', 'Bricknall', 'Middleweek', to_date('16/04/1993', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH8.jpg');
execute insercion_personas(305, 'Gayle', 'Sam', 'Clawsley', 'McQuarter', to_date('27/07/1993', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH4.jpg');
execute insercion_personas(306, 'Alonso', 'Bertie', 'Madge', 'Ricciardi', to_date('31/01/1966', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH19.jpg');
execute insercion_personas(307, 'Morey', 'Howard', 'Bantock', 'Charke', to_date('22/06/1997', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH20.jpg');
execute insercion_personas(308, 'Rube', 'Kristian', 'Shields', 'Jiri', to_date('12/08/1986', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH2.jpg');
execute insercion_personas(309, 'Orbadiah', 'Derril', 'Tommasuzzi', 'Oswald', to_date('07/11/1960', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH21.jpg');
execute insercion_personas(310, 'Lind', 'Ollie', 'Holberry', 'Simonnot', to_date('13/04/2007', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH13.jpg');
execute insercion_personas(311, 'Elnar', 'Gary', 'Phelps', 'Swinn', to_date('21/02/1977', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH6.jpg');
execute insercion_personas(312, 'Ramsey', 'Hobey', 'Doodson', 'MacCurley', to_date('28/12/1974', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH6.jpg');
execute insercion_personas(313, 'Gilbert', 'Abran', 'Rickell', 'Siely', to_date('15/05/1991', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH11.jpg');
execute insercion_personas(314, 'Garv', 'Richie', 'Braddock', 'Bolgar', to_date('16/04/1980', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH12.jpg');
execute insercion_personas(315, 'Vance', 'Gregorio', 'Toolan', 'Haitlie', to_date('05/12/1995', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH22.jpg');
execute insercion_personas(316, 'Kaiser', 'Sherlock', 'Longhi', 'Chalk', to_date('09/06/2003', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH2.jpg');
execute insercion_personas(317, 'Romain', 'Gregory', 'Kinzel', 'Dreini', to_date('15/07/1993', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH8.jpg');
execute insercion_personas(318, 'Zackariah', 'Kiley', 'Stonard', 'Clulee', to_date('11/02/1985', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH16.jpg');
execute insercion_personas(319, 'Mayer', 'Conroy', 'Strongman', 'Bourges', to_date('20/07/1992', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH17.jpg');
execute insercion_personas(320, 'Umberto', 'Dexter', 'Clapperton', 'Shirtcliffe', to_date('22/10/1975', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH9.jpg');
execute insercion_personas(321, 'Reagan', 'Jackie', 'Bruyns', 'Ibarra', to_date('23/07/1989', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH1.jpg');
execute insercion_personas(322, 'Northrup', 'Bertrando', 'Laraway', 'Colvill', to_date('04/03/1961', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH21.jpg');
execute insercion_personas(323, 'Terencio', 'Herculie', 'La Wille', 'McCaghan', to_date('16/05/1980', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH8.jpg');
execute insercion_personas(324, 'Titos', 'Lorry', 'Joire', 'Woolham', to_date('14/08/1973', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 25, 'imgH13.jpg');
execute insercion_personas(325, 'Sebastien', 'Thornton', 'Sempill', 'Cattroll', to_date('09/09/1967', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH19.jpg');
execute insercion_personas(326, 'Kermit', 'Truman', 'Patten', 'Crickett', to_date('20/03/1974', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH8.jpg');
execute insercion_personas(327, 'Leupold', 'Darin', 'Gouldie', 'Scotney', to_date('05/05/1975', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH23.jpg');
execute insercion_personas(328, 'Gregorio', 'Bertie', 'Ragbourn', 'Paffitt', to_date('28/02/1964', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH17.jpg');
execute insercion_personas(329, 'Flin', 'Earlie', 'Paterson', 'Farloe', to_date('01/04/1982', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH23.jpg');
execute insercion_personas(330, 'Quintus', 'Roley', 'Goldingay', 'Fellona', to_date('20/02/2008', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH9.jpg');
execute insercion_personas(331, 'Sonnie', 'Cirstoforo', 'Markie', 'Whitwood', to_date('11/03/1966', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH7.jpg');
execute insercion_personas(332, 'Syman', 'Tony', 'Bendson', 'Sclanders', to_date('01/12/1981', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH13.jpg');
execute insercion_personas(333, 'Frasier', 'Augustine', 'Valadez', 'Roobottom', to_date('30/10/1967', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH8.jpg');
execute insercion_personas(334, 'Kain', 'Rhys', 'Foley', 'Fells', to_date('01/01/1977', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH22.jpg');
execute insercion_personas(335, 'Ossie', 'Asa', 'Dangl', 'Lampe', to_date('12/10/1993', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH21.jpg');
execute insercion_personas(336, 'Knox', 'Thornton', 'Haskew', 'Bickmore', to_date('16/06/1962', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 25, 'imgH19.jpg');
execute insercion_personas(337, 'Britt', 'Hartwell', 'Brunelleschi', 'Edland', to_date('12/09/2003', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH22.jpg');
execute insercion_personas(338, 'Lind', 'Boot', 'Fryers', 'Cayzer', to_date('21/03/1972', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 26, 'imgH18.jpg');
execute insercion_personas(339, 'Dalli', 'Forrester', 'Blaksley', 'Wackett', to_date('05/03/1998', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH9.jpg');
execute insercion_personas(340, 'Immanuel', 'Gabriele', 'Tersay', 'Main', to_date('19/12/2000', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 24, 'imgH4.jpg');
execute insercion_personas(341, 'Sloane', 'Mahmoud', 'Bernhardt', 'O'' Brian', to_date('26/08/1972', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 24, 'imgH5.jpg');
execute insercion_personas(342, 'Cross', 'Gaven', 'Sotworth', 'Le Estut', to_date('17/05/2001', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 24, 'imgH6.jpg');
execute insercion_personas(343, 'Elroy', 'Bronny', 'Iverson', 'Vivers', to_date('05/11/1978', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 25, 'imgH7.jpg');
execute insercion_personas(344, 'Christiano', 'Lionello', 'Ticksall', 'MacAllister', to_date('19/11/2006', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 26, 'imgH6.jpg');
execute insercion_personas(345, 'Sauncho', 'Constantine', 'Rottgers', 'Eliassen', to_date('26/09/1996', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 26, 'imgH12.jpg');
execute insercion_personas(346, 'Valentino', 'Chaim', 'Conradie', 'Stoyell', to_date('20/01/1974', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH5.jpg');
execute insercion_personas(347, 'Wallie', 'Ravid', 'Prose', 'Clubbe', to_date('30/06/1961', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH17.jpg');
execute insercion_personas(348, 'Donnie', 'Lionello', 'Fasham', 'Meek', to_date('30/04/1975', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 27, 'imgH21.jpg');
execute insercion_personas(349, 'Etan', 'Ogden', 'Goddman', 'Clausen-Thue', to_date('08/03/1987', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH1.jpg');
execute insercion_personas(350, 'Terence', 'Sylas', 'Alexsandrev', 'Errichelli', to_date('08/11/1990', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 29, 'imgH2.jpg');
execute insercion_personas(351, 'Rance', 'Blake', 'Bailes', 'Gelardi', to_date('30/04/1992', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH7.jpg');
execute insercion_personas(352, 'Galvin', 'Garrett', 'O''Brien', 'Valler', to_date('25/12/1996', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 27, 'imgH21.jpg');
execute insercion_personas(353, 'Grove', 'Clemmy', 'Cordero', 'Cristofol', to_date('13/11/1962', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH21.jpg');
execute insercion_personas(354, 'Lazarus', 'Noach', 'Jentet', 'Capron', to_date('16/02/1998', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH21.jpg');
execute insercion_personas(355, 'Matias', 'Garfield', 'Edgworth', 'Churchard', to_date('25/04/1976', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH11.jpg');
execute insercion_personas(356, 'Willy', 'Broderick', 'Haster', 'Coyte', to_date('07/01/1999', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH15.jpg');
execute insercion_personas(357, 'Avram', 'Hanan', 'Selway', 'Kuhle', to_date('14/06/1981', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH2.jpg');
execute insercion_personas(358, 'Orland', 'Lou', 'Heinrici', 'Ferandez', to_date('29/09/1973', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH15.jpg');
execute insercion_personas(359, 'Freeman', 'Isaiah', 'McGilleghole', 'Barthorpe', to_date('27/11/1980', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 29, 'imgH13.jpg');
execute insercion_personas(360, 'Kristofer', 'Steward', 'Jayne', 'Bettridge', to_date('23/11/1963', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 27, 'imgH7.jpg');
execute insercion_personas(361, 'Killian', 'Boonie', 'Lozano', 'Sargint', to_date('16/03/1984', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH1.jpg');
execute insercion_personas(362, 'Anton', 'Maury', 'Jencey', 'Cutbush', to_date('21/09/1981', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 28, 'imgH2.jpg');
execute insercion_personas(363, 'Raynor', 'Vidovik', 'Sallows', 'Pagett', to_date('15/02/2006', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH12.jpg');
execute insercion_personas(364, 'Dukey', 'Augy', 'Duffet', 'Fehner', to_date('17/11/1999', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 28, 'imgH6.jpg');
execute insercion_personas(365, 'Currey', 'Eric', 'Barok', 'Kenion', to_date('25/09/2004', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH19.jpg');
execute insercion_personas(366, 'Osborne', 'Chadwick', 'Cleve', 'Pochon', to_date('28/05/1961', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH13.jpg');
execute insercion_personas(367, 'Hastings', 'Penny', 'Goucher', 'Thwaite', to_date('05/07/1985', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 27, 'imgM1.jpg');
execute insercion_personas(368, 'Dill', 'Dan', 'Parriss', 'Lardeux', to_date('31/12/1990', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 28, 'imgH16.jpg');
execute insercion_personas(369, 'Eugenio', 'Ronnie', 'Littell', 'Childers', to_date('08/02/1961', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH23.jpg');
execute insercion_personas(370, 'Cleve', 'Morley', 'Ratchford', 'Hutchinges', to_date('23/06/1978', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH7.jpg');
execute insercion_personas(371, 'Dunc', 'Obadiah', 'Buey', 'Pennicott', to_date('30/12/2000', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH13.jpg');
execute insercion_personas(372, 'Meir', 'Rodolfo', 'Romaines', 'Shubotham', to_date('05/02/2002', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH7.jpg');
execute insercion_personas(373, 'Gan', 'Axe', 'Josofovitz', 'Lorkins', to_date('26/07/2000', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 28, 'imgH12.jpg');
execute insercion_personas(374, 'Hewitt', 'Lorin', 'Kruschov', 'Wroughton', to_date('20/04/1973', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 27, 'imgH4.jpg');
execute insercion_personas(375, 'Ruddy', 'Troy', 'Nossent', 'Westoll', to_date('30/04/1973', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH8.jpg');
execute insercion_personas(376, 'Prent', 'Corby', 'Mattiazzi', 'Hogbin', to_date('08/10/2004', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 28, 'imgH6.jpg');
execute insercion_personas(377, 'Nial', 'Ludvig', 'Pessolt', 'Pickavance', to_date('23/10/1986', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH9.jpg');
execute insercion_personas(378, 'Cornie', 'Hayes', 'Petracchi', 'Blick', to_date('13/06/1967', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH21.jpg');
execute insercion_personas(379, 'Lyman', 'Gayler', 'Foot', 'Gurley', to_date('24/08/1983', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH7.jpg');
execute insercion_personas(380, 'Peter', 'Hillie', 'Culbard', 'Wicher', to_date('20/06/1960', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 28, 'imgH17.jpg');
execute insercion_personas(381, 'Vlad', 'Maxie', 'Lemerie', 'Maceur', to_date('05/07/2003', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH5.jpg');
execute insercion_personas(382, 'Palm', 'Westley', 'Ellsom', 'Elsmor', to_date('10/09/1985', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH10.jpg');
execute insercion_personas(383, 'Frasier', 'Ilaire', 'Rawood', 'Gather', to_date('21/06/1964', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 27, 'imgH10.jpg');
execute insercion_personas(384, 'Lowe', 'Derril', 'Sirey', 'Postance', to_date('30/04/1968', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH10.jpg');
execute insercion_personas(385, 'Douglass', 'Elwin', 'Timny', 'Alen', to_date('13/01/1992', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 29, 'imgH17.jpg');
execute insercion_personas(386, 'Yule', 'Mort', 'Vain', 'Siddle', to_date('30/04/2007', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH14.jpg');
execute insercion_personas(387, 'Gage', 'Griff', 'Hartright', 'Weald', to_date('07/12/1994', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH1.jpg');
execute insercion_personas(388, 'Tuck', 'Thayne', 'Menezes', 'Litterick', to_date('13/05/1992', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH15.jpg');
execute insercion_personas(389, 'Van', 'Pepe', 'Daskiewicz', 'McFarlan', to_date('05/12/1992', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 29, 'imgH7.jpg');
execute insercion_personas(390, 'Quint', 'Willey', 'Kennler', 'Skamell', to_date('02/01/1980', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 28, 'imgH21.jpg');
execute insercion_personas(391, 'Wilmer', 'Thayne', 'Ivankov', 'Giberd', to_date('11/04/1967', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH22.jpg');
execute insercion_personas(392, 'Sibyl', 'Sylvester', 'Dunnet', 'Nethercott', to_date('31/10/1969', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH7.jpg');
execute insercion_personas(393, 'Lyell', 'Emanuel', 'Holbury', 'Oxborrow', to_date('15/02/2004', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 29, 'imgH10.jpg');
execute insercion_personas(394, 'Bear', 'Ellary', 'Stoaks', 'Hylden', to_date('12/05/1971', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH4.jpg');
execute insercion_personas(395, 'Pryce', 'Ossie', 'Lewerenz', 'Ammer', to_date('03/08/1997', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 28, 'imgH19.jpg');
execute insercion_personas(396, 'Noby', 'Gonzalo', 'Oxby', 'Browning', to_date('07/08/1968', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH6.jpg');
execute insercion_personas(397, 'Quinton', 'Farris', 'Almeida', 'Bickerstaffe', to_date('23/04/1960', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 29, 'imgH9.jpg');
execute insercion_personas(398, 'Giff', 'Jacky', 'Janecek', 'Normington', to_date('30/11/1976', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 28, 'imgH6.jpg');
execute insercion_personas(399, 'Markus', 'Jarid', 'Pilcher', 'Ruthen', to_date('14/03/2007', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 27, 'imgH8.jpg');
execute insercion_personas(400, 'Marcos', 'Spenser', 'Seiter', 'Trevett', to_date('08/10/1970', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 27, 'imgH4.jpg');
execute insercion_personas(401, 'Benito', 'Tedie', 'Menary', 'Dunlap', to_date('08/09/1960', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH20.jpg');
execute insercion_personas(402, 'Corby', 'Augy', 'Fielders', 'Evason', to_date('20/06/1974', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH2.jpg');
execute insercion_personas(403, 'Anatole', 'Rock', 'Lockie', 'Drust', to_date('25/05/1984', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH11.jpg');
execute insercion_personas(404, 'Mozes', 'Prent', 'Watling', 'Edlington', to_date('31/01/1962', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 27, 'imgH11.jpg');
execute insercion_personas(405, 'Tremaine', 'Sawyere', 'Gile', 'Prior', to_date('07/06/1965', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH19.jpg');
execute insercion_personas(406, 'Rockey', 'Lin', 'Clemenzo', 'Gross', to_date('15/05/2003', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH11.jpg');
execute insercion_personas(407, 'Waverley', 'Godart', 'Glasebrook', 'Sloley', to_date('13/01/1976', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 29, 'imgH20.jpg');
execute insercion_personas(408, 'Enoch', 'Jory', 'Wallas', 'Haward', to_date('26/07/1964', 'DD/MM/YYYY'), 'M', 'Infectado', null, null, 28, 'imgH5.jpg');
execute insercion_personas(409, 'Sidney', 'Hermy', 'Duiguid', 'Crehan', to_date('09/08/1996', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 29, 'imgH22.jpg');
execute insercion_personas(410, 'Pren', 'Zerk', 'Cartmale', 'Corser', to_date('08/10/1960', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 28, 'imgH8.jpg');
execute insercion_personas(411, 'Aguistin', 'Clemente', 'Wetherburn', 'Lowey', to_date('12/06/1991', 'DD/MM/YYYY'), 'M', 'Sano', null, null, 27, 'imgH13.jpg');
execute insercion_personas(412, 'Bing', 'Yank', 'Carabet', 'Gilogly', to_date('27/01/1960', 'DD/MM/YYYY'), 'M', 'Aislado', null, null, 27, 'imgH7.jpg');
execute insercion_personas(413, 'Skipp', 'Sebastiano', 'Landa', 'Paulig', to_date('27/05/2001', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM15.jpg');
execute insercion_personas(414, 'Truman', 'Paxton', 'Lightbourne', 'Caff', to_date('20/03/1990', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM3.jpg');
execute insercion_personas(415, 'Alessandro', 'Everett', 'Gonnard', 'Koopman', to_date('18/07/2004', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM1.jpg');
execute insercion_personas(416, 'Bat', 'Norbie', 'Ridings', 'Mearns', to_date('26/05/1975', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM18.jpg');
execute insercion_personas(417, 'Baudoin', 'Chen', 'Lowles', 'Semmence', to_date('21/07/1995', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM17.jpg');
execute insercion_personas(418, 'Kennie', 'Boyce', 'Tufts', 'Neave', to_date('13/09/1972', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM18.jpg');
execute insercion_personas(419, 'Reamonn', 'Delmore', 'Murrey', 'Haywood', to_date('30/10/1981', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 28, 'imgM1.jpg');
execute insercion_personas(420, 'Delbert', 'Jarrod', 'Godbehere', 'Sparry', to_date('02/01/1969', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM17.jpg');
execute insercion_personas(421, 'Luther', 'Nobie', 'Gowthorpe', 'Girogetti', to_date('10/10/1964', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM3.jpg');
execute insercion_personas(422, 'Brett', 'Oren', 'Samarth', 'Grigaut', to_date('12/08/1971', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM10.jpg');
execute insercion_personas(423, 'Keary', 'Josh', 'Sargant', 'Brusle', to_date('16/02/2003', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27, 'imgM18.jpg');
execute insercion_personas(424, 'Fair', 'Iggie', 'Robertucci', 'Ebdon', to_date('25/06/1964', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM1.jpg');
execute insercion_personas(425, 'Rabbi', 'Eward', 'Lintott', 'Trimnell', to_date('08/08/1986', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM18.jpg');
execute insercion_personas(426, 'Gar', 'Alric', 'Dulany', 'Breakspear', to_date('17/03/1965', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM8.jpg');
execute insercion_personas(427, 'Tully', 'Maury', 'Abrashkin', 'Hurst', to_date('28/12/1964', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM7.jpg');
execute insercion_personas(428, 'Esdras', 'Nappy', 'Franz-Schoninger', 'Frondt', to_date('25/06/1980', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM14.jpg');
execute insercion_personas(429, 'Cole', 'Sheridan', 'Covendon', 'Bicker', to_date('26/05/1994', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM5.jpg');
execute insercion_personas(430, 'Bogart', 'Robb', 'Piddock', 'Zimmermanns', to_date('05/10/1997', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM18.jpg');
execute insercion_personas(431, 'Godard', 'Boycey', 'Lett', 'Sellman', to_date('03/03/1996', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM14.jpg');
execute insercion_personas(432, 'Jory', 'Brad', 'Meininger', 'L''Episcopi', to_date('18/06/2002', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM14.jpg');
execute insercion_personas(433, 'Whitman', 'Silvester', 'Samwayes', 'Wimmers', to_date('21/03/1971', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM1.jpg');
execute insercion_personas(434, 'Carrol', 'Hurlee', 'Southon', 'Bartoleyn', to_date('30/03/1960', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM7.jpg');
execute insercion_personas(435, 'Paddy', 'Maximilian', 'Godar', 'Petruszka', to_date('22/10/2000', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM18.jpg');
execute insercion_personas(436, 'Shaw', 'Fredrick', 'Spalding', 'Gobbett', to_date('23/07/1988', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM1.jpg');
execute insercion_personas(437, 'Shelby', 'Gaylor', 'Schankelborg', 'Heap', to_date('22/07/2002', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM7.jpg');
execute insercion_personas(438, 'Cyrill', 'Spense', 'Lambol', 'Coogan', to_date('13/11/1977', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM12.jpg');
execute insercion_personas(439, 'Abbot', 'Ferris', 'Garrood', 'Dorken', to_date('26/11/1978', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM3.jpg');
execute insercion_personas(440, 'Rochester', 'Eugenius', 'Dobrovolski', 'Joron', to_date('29/10/2005', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM18.jpg');
execute insercion_personas(441, 'Callean', 'Gerek', 'Tettersell', 'Dickins', to_date('25/02/1960', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM1.jpg');
execute insercion_personas(442, 'Foster', 'Randy', 'Mollnar', 'Scrine', to_date('04/04/1976', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27, 'imgM8.jpg');
execute insercion_personas(443, 'Byron', 'Bradley', 'Lindemann', 'Glancy', to_date('29/03/1990', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM16.jpg');
execute insercion_personas(444, 'Anders', 'Shay', 'Bluett', 'Billinge', to_date('14/12/1969', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM5.jpg');
execute insercion_personas(445, 'Culley', 'Gene', 'Mattschas', 'Malin', to_date('02/09/1988', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM10.jpg');
execute insercion_personas(446, 'Taylor', 'Orren', 'Hodgin', 'Elloway', to_date('02/04/1973', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM8.jpg');
execute insercion_personas(447, 'Mano', 'Lief', 'Cossem', 'Haly', to_date('02/08/2004', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM7.jpg');
execute insercion_personas(448, 'Hammad', 'Shanan', 'Kelk', 'Roskruge', to_date('11/02/1973', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM10.jpg');
execute insercion_personas(449, 'Chase', 'Rodrigo', 'Renny', 'De la Zenne', to_date('03/11/1993', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM8.jpg');
execute insercion_personas(450, 'Trumaine', 'Dalton', 'Boissier', 'Robjant', to_date('02/07/1978', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM4.jpg');
execute insercion_personas(451, 'Grange', 'Arnuad', 'Adie', 'Schoffler', to_date('13/05/1986', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM2.jpg');
execute insercion_personas(452, 'Corny', 'Craig', 'Arrowsmith', 'Kristoffersson', to_date('05/08/1984', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM16.jpg');
execute insercion_personas(453, 'Linus', 'Hercules', 'Antonio', 'Capron', to_date('15/05/1968', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM9.jpg');
execute insercion_personas(454, 'Stevie', 'Goran', 'Schenfisch', 'Callery', to_date('15/12/2004', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 28, 'imgM16.jpg');
execute insercion_personas(455, 'Alano', 'Base', 'Grahlman', 'MacIlraith', to_date('11/09/1974', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM15.jpg');
execute insercion_personas(456, 'Cobbie', 'Padgett', 'Thews', 'Maren', to_date('09/10/1977', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM13.jpg');
execute insercion_personas(457, 'Carling', 'Zacharia', 'Mottley', 'Landsborough', to_date('23/04/1979', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM12.jpg');
execute insercion_personas(458, 'Armin', 'Hodge', 'Kilty', 'Ambage', to_date('01/04/1984', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM10.jpg');
execute insercion_personas(459, 'Bret', 'Bax', 'Andrea', 'Gration', to_date('26/08/1983', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27, 'imgM15.jpg');
execute insercion_personas(460, 'Brod', 'Cliff', 'Anthill', 'Edwick', to_date('14/02/2003', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 28, 'imgM18.jpg');
execute insercion_personas(461, 'Germayne', 'Gabe', 'Slogrove', 'Nemchinov', to_date('28/10/2008', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM4.jpg');
execute insercion_personas(462, 'Syman', 'Edward', 'Fortye', 'Arends', to_date('11/09/1961', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM15.jpg');
execute insercion_personas(463, 'Brandon', 'Saunder', 'Alliston', 'Woffinden', to_date('16/07/1964', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM18.jpg');
execute insercion_personas(464, 'Benedick', 'Danya', 'Taillard', 'Tournay', to_date('23/10/1996', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM3.jpg');
execute insercion_personas(465, 'Leo', 'Chip', 'Denge', 'Caisley', to_date('21/04/1988', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM15.jpg');
execute insercion_personas(466, 'Thorstein', 'Amerigo', 'Daltry', 'Braffington', to_date('29/04/1993', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM8.jpg');
execute insercion_personas(467, 'Devland', 'Mickey', 'Windrass', 'Millan', to_date('30/06/1979', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 28, 'imgM1.jpg');
execute insercion_personas(468, 'Ettore', 'Rock', 'Vick', 'Cadagan', to_date('24/01/1992', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM15.jpg');
execute insercion_personas(469, 'Lind', 'Skelly', 'Wearing', 'Hambrook', to_date('04/06/1986', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM4.jpg');
execute insercion_personas(470, 'Radcliffe', 'Maximilien', 'Loseke', 'Jacobowicz', to_date('21/11/1961', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM18.jpg');
execute insercion_personas(471, 'Manolo', 'Olivero', 'Tomeo', 'Lumber', to_date('20/08/2000', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM18.jpg');
execute insercion_personas(472, 'Alessandro', 'Homer', 'McVeigh', 'Harner', to_date('05/02/1982', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 28, 'imgM10.jpg');
execute insercion_personas(473, 'Clemens', 'Bronson', 'Stellino', 'Longega', to_date('24/03/1973', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM9.jpg');
execute insercion_personas(474, 'Harvey', 'Spenser', 'Purdon', 'Pollie', to_date('01/10/1986', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM11.jpg');
execute insercion_personas(475, 'Douglass', 'Tammy', 'Casini', 'Adiscot', to_date('18/06/1960', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM4.jpg');
execute insercion_personas(476, 'Raff', 'Mannie', 'Clelland', 'Cansdale', to_date('23/06/1977', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27, 'imgM13.jpg');
execute insercion_personas(477, 'Abner', 'Earle', 'Wawer', 'Light', to_date('11/07/1967', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM13.jpg');
execute insercion_personas(478, 'Michale', 'Cullin', 'Taphouse', 'McDool', to_date('03/02/2006', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27, 'imgM3.jpg');
execute insercion_personas(479, 'Kinsley', 'Evelyn', 'Portigall', 'Salzburger', to_date('10/09/2001', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM2.jpg');
execute insercion_personas(480, 'Grantley', 'Tito', 'Cammock', 'Mocker', to_date('05/09/1982', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM8.jpg');
execute insercion_personas(481, 'Irvine', 'Anderson', 'Boutton', 'Bemwell', to_date('23/09/1966', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM18.jpg');
execute insercion_personas(482, 'Lion', 'Mahmud', 'Boog', 'Itzkovwitch', to_date('24/01/1988', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM2.jpg');
execute insercion_personas(483, 'Tyson', 'Ly', 'Cassell', 'Agge', to_date('17/09/1979', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM8.jpg');
execute insercion_personas(484, 'Keen', 'Willey', 'Traice', 'Wrack', to_date('19/05/1989', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM6.jpg');
execute insercion_personas(485, 'Abey', 'Mattias', 'Mursell', 'Dutton', to_date('18/05/1967', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM2.jpg');
execute insercion_personas(486, 'Peyton', 'Archer', 'Galpin', 'Larkings', to_date('04/06/1966', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM5.jpg');
execute insercion_personas(487, 'Issiah', 'Ellswerth', 'Twiggs', 'Colton', to_date('17/04/1993', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM18.jpg');
execute insercion_personas(488, 'Alphard', 'Samson', 'McGuiney', 'Parcell', to_date('15/11/1986', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM9.jpg');
execute insercion_personas(489, 'Osborne', 'Tonnie', 'Scibsey', 'McGeachey', to_date('22/05/1992', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM7.jpg');
execute insercion_personas(490, 'Patric', 'Trip', 'Bartalot', 'Delwater', to_date('13/06/1961', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM5.jpg');
execute insercion_personas(491, 'Hershel', 'Alisander', 'Lammiman', 'Treadgold', to_date('09/11/1999', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM15.jpg');
execute insercion_personas(492, 'Saxe', 'Thibaud', 'Mackiewicz', 'Treves', to_date('16/03/1985', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM2.jpg');
execute insercion_personas(493, 'Mendie', 'Chuck', 'Drejer', 'Stent', to_date('03/04/1976', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM14.jpg');
execute insercion_personas(494, 'Abbey', 'Siward', 'Scourgie', 'Buist', to_date('13/08/1981', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM17.jpg');
execute insercion_personas(495, 'Thorn', 'Morry', 'Halksworth', 'Mattin', to_date('17/04/1978', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM5.jpg');
execute insercion_personas(496, 'Fee', 'Bjorn', 'Bortolozzi', 'Abbie', to_date('15/03/1968', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM17.jpg');
execute insercion_personas(497, 'Jaye', 'Berkley', 'Soigoux', 'Adolfson', to_date('24/11/1961', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM2.jpg');
execute insercion_personas(498, 'Jeth', 'Moe', 'Dinnies', 'Clewer', to_date('06/06/1964', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM18.jpg');
execute insercion_personas(499, 'Algernon', 'Dunstan', 'Hackney', 'Tidd', to_date('23/06/1986', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM14.jpg');
execute insercion_personas(500, 'Payton', 'Sigismund', 'Fishly', 'Mounter', to_date('24/11/1996', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM4.jpg');
execute insercion_personas(501, 'Gaven', 'Lennard', 'Sazio', 'Cradduck', to_date('20/10/1999', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM4.jpg');
execute insercion_personas(502, 'Gauthier', 'Linus', 'Peckitt', 'Kees', to_date('10/09/2007', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM8.jpg');
execute insercion_personas(503, 'Joshia', 'Vernor', 'Binning', 'Knotton', to_date('26/12/1972', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM13.jpg');
execute insercion_personas(504, 'Jude', 'Leopold', 'Papworth', 'Franseco', to_date('12/01/1961', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM18.jpg');
execute insercion_personas(505, 'Otis', 'Hilly', 'McAlees', 'Goulter', to_date('16/10/1979', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM1.jpg');
execute insercion_personas(506, 'Agosto', 'Rawley', 'Blodgett', 'Dowyer', to_date('11/06/1995', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM13.jpg');
execute insercion_personas(507, 'Lorne', 'Kingsley', 'Huggen', 'O''Kerin', to_date('05/07/1975', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM9.jpg');
execute insercion_personas(508, 'Garrott', 'Reinold', 'Dorie', 'Bolley', to_date('15/01/1984', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM6.jpg');
execute insercion_personas(509, 'Ash', 'Hamilton', 'Boot', 'Culkin', to_date('30/06/1964', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM15.jpg');
execute insercion_personas(510, 'Wallace', 'Gale', 'Emlyn', 'Mackriell', to_date('09/12/1961', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM5.jpg');
execute insercion_personas(511, 'Randi', 'Brnaba', 'Parsonson', 'Baudichon', to_date('28/04/1989', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM10.jpg');
execute insercion_personas(512, 'Marcel', 'Myles', 'Kindle', 'Edgeworth', to_date('04/10/1977', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM13.jpg');
execute insercion_personas(513, 'Harry', 'Karlis', 'Bibbie', 'Pherps', to_date('10/08/2003', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM7.jpg');
execute insercion_personas(514, 'Lester', 'Ade', 'Robens', 'Moens', to_date('09/10/1963', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM2.jpg');
execute insercion_personas(515, 'Claiborne', 'Abe', 'Decourt', 'Haggata', to_date('21/05/1972', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM1.jpg');
execute insercion_personas(516, 'Wheeler', 'Rusty', 'Igonet', 'Waber', to_date('26/06/1966', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM7.jpg');
execute insercion_personas(517, 'Efrem', 'Zebedee', 'Wick', 'Labbati', to_date('30/09/1976', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM8.jpg');
execute insercion_personas(518, 'Noe', 'Ricky', 'Woodison', 'Fishly', to_date('18/02/1998', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM18.jpg');
execute insercion_personas(519, 'Bent', 'Brockie', 'Barrington', 'Hulks', to_date('02/09/1983', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM3.jpg');
execute insercion_personas(520, 'Webster', 'Claiborn', 'Robotham', 'Hoff', to_date('27/11/1973', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM16.jpg');
execute insercion_personas(521, 'Parsifal', 'Nicky', 'Rogerot', 'Sendall', to_date('20/09/1993', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM2.jpg');
execute insercion_personas(522, 'Frederik', 'Wiley', 'Brockhurst', 'Braunle', to_date('23/07/1965', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM5.jpg');
execute insercion_personas(523, 'Freedman', 'Timotheus', 'Inder', 'Gott', to_date('01/12/1973', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM2.jpg');
execute insercion_personas(524, 'Sherwynd', 'Tiebout', 'Domney', 'Sallan', to_date('30/01/1980', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM1.jpg');
execute insercion_personas(525, 'Darrell', 'Lydon', 'Bartelot', 'Pococke', to_date('07/02/1985', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM6.jpg');
execute insercion_personas(526, 'Michele', 'Yvor', 'McCrachen', 'Duffan', to_date('30/07/2000', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM4.jpg');
execute insercion_personas(527, 'Silvano', 'Terence', 'McMyler', 'Bamborough', to_date('24/07/1971', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM15.jpg');
execute insercion_personas(528, 'Alexander', 'Bancroft', 'Hattam', 'Abrahami', to_date('18/03/1960', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM11.jpg');
execute insercion_personas(529, 'Alexandros', 'Mickey', 'Kerkham', 'Dever', to_date('04/07/1981', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM10.jpg');
execute insercion_personas(530, 'Freddy', 'Willdon', 'Whitley', 'Cremins', to_date('02/11/1972', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM6.jpg');
execute insercion_personas(531, 'Franky', 'Eal', 'Behrendsen', 'Cayley', to_date('16/04/1996', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM13.jpg');
execute insercion_personas(532, 'Win', 'Kip', 'Finn', 'Bewsy', to_date('03/07/1983', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM12.jpg');
execute insercion_personas(533, 'Ethelbert', 'Phillipp', 'Somerfield', 'Ladbrook', to_date('14/04/2003', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM4.jpg');
execute insercion_personas(534, 'Miner', 'John', 'Gofford', 'Prestige', to_date('13/10/1998', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM18.jpg');
execute insercion_personas(535, 'Cull', 'Powell', 'Vasnetsov', 'Aughton', to_date('02/03/1985', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM6.jpg');
execute insercion_personas(536, 'Chickie', 'Myca', 'Harder', 'Lenchenko', to_date('03/11/1994', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM16.jpg');
execute insercion_personas(537, 'Sherm', 'Schuyler', 'Tape', 'Farrier', to_date('27/01/2006', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM7.jpg');
execute insercion_personas(538, 'Rockey', 'Darryl', 'Torresi', 'Anthonsen', to_date('28/10/1999', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM6.jpg');
execute insercion_personas(539, 'Amby', 'Darrin', 'Perigeaux', 'Wigsell', to_date('08/10/1969', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM2.jpg');
execute insercion_personas(540, 'Archibaldo', 'Artus', 'Alyoshin', 'Savill', to_date('28/04/1975', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM14.jpg');
execute insercion_personas(541, 'Newton', 'Clemente', 'Feld', 'Sebyer', to_date('28/01/1992', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM2.jpg');
execute insercion_personas(542, 'Ambrosio', 'Darn', 'Spraberry', 'Sebrook', to_date('20/02/1978', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM18.jpg');
execute insercion_personas(543, 'Peder', 'Roman', 'Seid', 'Redhole', to_date('28/05/1970', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM1.jpg');
execute insercion_personas(544, 'Kenny', 'Robinson', 'Mintoff', 'Bortoli', to_date('18/10/1996', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM18.jpg');
execute insercion_personas(545, 'Padraic', 'Armando', 'Gilding', 'Cruickshank', to_date('15/01/1999', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM6.jpg');
execute insercion_personas(546, 'Kalil', 'Oliver', 'Kasting', 'Runcieman', to_date('04/10/1971', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM8.jpg');
execute insercion_personas(547, 'Wyndham', 'Norbie', 'Manz', 'Grosvenor', to_date('13/02/1990', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM4.jpg');
execute insercion_personas(548, 'Keenan', 'Nicol', 'Lardeur', 'Bourdel', to_date('02/12/1960', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM4.jpg');
execute insercion_personas(549, 'Ody', 'Neall', 'Ambrogio', 'Bettanay', to_date('03/08/2007', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM7.jpg');
execute insercion_personas(550, 'Brian', 'Cully', 'Oliveti', 'Collyer', to_date('25/01/1990', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM17.jpg');
execute insercion_personas(551, 'Inness', 'Aksel', 'Rule', 'MacIlhagga', to_date('03/05/2000', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM17.jpg');
execute insercion_personas(552, 'Dav', 'Francisco', 'Gentzsch', 'Rebillard', to_date('31/03/2001', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM15.jpg');
execute insercion_personas(553, 'Royall', 'Simeon', 'Volker', 'Pickaver', to_date('31/08/1972', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM18.jpg');
execute insercion_personas(554, 'Reg', 'Carter', 'de Keep', 'Stittle', to_date('26/05/1995', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM18.jpg');
execute insercion_personas(555, 'Waylen', 'Con', 'Goatman', 'Blum', to_date('29/06/2002', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM3.jpg');
execute insercion_personas(556, 'Coleman', 'Broderick', 'Tonepohl', 'Picopp', to_date('15/07/1981', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM15.jpg');
execute insercion_personas(557, 'Christophorus', 'Conant', 'Chilvers', 'Arnson', to_date('08/09/1960', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM11.jpg');
execute insercion_personas(558, 'Witty', 'Marvin', 'Fishleigh', 'Scheffel', to_date('03/03/1960', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM11.jpg');
execute insercion_personas(559, 'Smith', 'Nicholas', 'Hawksby', 'Cowherd', to_date('03/02/1993', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM8.jpg');
execute insercion_personas(560, 'Brooke', 'Nevins', 'Neild', 'Paddon', to_date('30/04/1965', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM1.jpg');
execute insercion_personas(561, 'Anton', 'Bondie', 'Bentke', 'St. Quintin', to_date('11/06/1968', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM15.jpg');
execute insercion_personas(562, 'Delainey', 'Jereme', 'Theriot', 'Deniscke', to_date('05/05/1988', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM3.jpg');
execute insercion_personas(563, 'Deane', 'Felizio', 'Riches', 'Girtin', to_date('03/04/1988', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM2.jpg');
execute insercion_personas(564, 'Lovell', 'Derwin', 'Dundredge', 'Metrick', to_date('03/12/1990', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM3.jpg');
execute insercion_personas(565, 'Michel', 'Moishe', 'O''Shaughnessy', 'Rodders', to_date('08/08/2004', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM9.jpg');
execute insercion_personas(566, 'Merrel', 'Giorgio', 'Picken', 'Delahunty', to_date('02/08/1965', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM15.jpg');
execute insercion_personas(567, 'Dare', 'Conny', 'Cristofor', 'Fillon', to_date('05/05/1994', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM6.jpg');
execute insercion_personas(568, 'Kelly', 'Zak', 'Colecrough', 'Houlston', to_date('26/02/2002', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM3.jpg');
execute insercion_personas(569, 'Shepperd', 'Ashby', 'Huntington', 'Ruos', to_date('26/11/2007', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM1.jpg');
execute insercion_personas(570, 'Hirsch', 'Judah', 'Berdale', 'Amy', to_date('30/07/1983', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM18.jpg');
execute insercion_personas(571, 'Al', 'Pete', 'Douce', 'Blacklawe', to_date('06/03/1992', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM9.jpg');
execute insercion_personas(572, 'Christoph', 'Rupert', 'Wandless', 'Campa', to_date('20/09/1979', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM9.jpg');
execute insercion_personas(573, 'Raynor', 'Gustav', 'Pressey', 'Underwood', to_date('28/03/1984', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM2.jpg');
execute insercion_personas(574, 'Sammy', 'Kareem', 'Domenc', 'Goullee', to_date('04/06/2003', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM10.jpg');
execute insercion_personas(575, 'Jackson', 'Lowell', 'Traice', 'Whardley', to_date('13/11/1991', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM2.jpg');
execute insercion_personas(576, 'Boris', 'Sholom', 'Keady', 'Lockhart', to_date('18/02/1970', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM4.jpg');
execute insercion_personas(577, 'Hodge', 'Hayden', 'Spadelli', 'Gerleit', to_date('28/03/1994', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM6.jpg');
execute insercion_personas(578, 'Chauncey', 'Raymund', 'Knibb', 'Avramovic', to_date('15/06/1983', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM9.jpg');
execute insercion_personas(579, 'Horst', 'Kristofor', 'Carville', 'Le Bosse', to_date('13/12/2006', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM8.jpg');
execute insercion_personas(580, 'Ken', 'Christoph', 'Vasilyev', 'Verrall', to_date('27/01/1965', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM7.jpg');
execute insercion_personas(581, 'Simeon', 'Kristoffer', 'Giuron', 'Roches', to_date('05/06/2000', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM4.jpg');
execute insercion_personas(582, 'Norby', 'Hort', 'Dunbavin', 'Liffe', to_date('22/09/1973', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM6.jpg');
execute insercion_personas(583, 'Isadore', 'Gar', 'Saffle', 'Stitwell', to_date('03/01/2002', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM8.jpg');
execute insercion_personas(584, 'Dilly', 'Woody', 'Slimming', 'Exell', to_date('01/12/1991', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM9.jpg');
execute insercion_personas(585, 'Jule', 'Shep', 'Moralis', 'Skilling', to_date('08/02/1996', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM11.jpg');
execute insercion_personas(586, 'Demetre', 'Cris', 'Randalston', 'Benton', to_date('31/03/1969', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM9.jpg');
execute insercion_personas(587, 'Byran', 'Vernor', 'Hawtry', 'Eskriet', to_date('19/01/1963', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM15.jpg');
execute insercion_personas(588, 'Marchall', 'Read', 'Milley', 'Normand', to_date('29/10/1961', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM17.jpg');
execute insercion_personas(589, 'Ogdan', 'Wilfrid', 'Coole', 'Marty', to_date('04/12/2006', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM7.jpg');
execute insercion_personas(590, 'Mickey', 'Alyosha', 'Wardell', 'Yanson', to_date('14/03/1973', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM8.jpg');
execute insercion_personas(591, 'Lock', 'Kevin', 'Dreossi', 'Larver', to_date('27/08/2007', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM14.jpg');
execute insercion_personas(592, 'Waverley', 'Egbert', 'Snaith', 'Struan', to_date('06/06/1964', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM9.jpg');
execute insercion_personas(593, 'Mick', 'Gard', 'Shemelt', 'Canet', to_date('12/05/1974', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM18.jpg');
execute insercion_personas(594, 'Mortimer', 'Claiborn', 'MacGall', 'Brigman', to_date('06/02/1975', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM5.jpg');
execute insercion_personas(595, 'Hugibert', 'Hillel', 'Kybbye', 'Karlolczak', to_date('09/07/1963', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM17.jpg');
execute insercion_personas(596, 'Donnell', 'Basil', 'Blackburne', 'Koenen', to_date('15/09/1987', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM16.jpg');
execute insercion_personas(597, 'Dexter', 'Staford', 'Pales', 'Threadgould', to_date('23/07/2004', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM1.jpg');
execute insercion_personas(598, 'Toddie', 'Jeremy', 'Hark', 'Sorrell', to_date('15/01/1960', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM18.jpg');
execute insercion_personas(599, 'Irwinn', 'Vaughan', 'Stonehouse', 'Onraet', to_date('17/10/1976', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM9.jpg');
execute insercion_personas(600, 'Jeramey', 'Pernell', 'Kahen', 'Emslie', to_date('27/08/1965', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM18.jpg');
execute insercion_personas(601, 'Gearalt', 'Maje', 'Cooke', 'Pierce', to_date('12/05/1972', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM16.jpg');
execute insercion_personas(602, 'Constantine', 'Maxim', 'Waulker', 'Merdew', to_date('16/07/1972', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM7.jpg');
execute insercion_personas(603, 'Finn', 'Sansone', 'Webburn', 'Thomazet', to_date('08/12/2007', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM12.jpg');
execute insercion_personas(604, 'Alfy', 'Sylas', 'Chesher', 'Wolfe', to_date('05/10/1988', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM7.jpg');
execute insercion_personas(605, 'Ken', 'Luther', 'Mence', 'Dennistoun', to_date('16/10/1973', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM11.jpg');
execute insercion_personas(606, 'Reider', 'Gherardo', 'Davidofski', 'Jiggle', to_date('30/08/2000', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM11.jpg');
execute insercion_personas(607, 'Thom', 'Rafi', 'La Vigne', 'O''Currine', to_date('14/08/1992', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM7.jpg');
execute insercion_personas(608, 'Justus', 'Sunny', 'Timberlake', 'Brecken', to_date('08/07/1989', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM5.jpg');
execute insercion_personas(609, 'Tiebout', 'Glendon', 'Cooch', 'Mapis', to_date('18/01/1971', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM4.jpg');
execute insercion_personas(610, 'Elihu', 'Dallas', 'Swindle', 'Rawll', to_date('30/06/1982', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM5.jpg');
execute insercion_personas(611, 'Wilmar', 'Raddie', 'Wingeat', 'Kringe', to_date('23/11/1964', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM6.jpg');
execute insercion_personas(612, 'Clywd', 'Wake', 'Izkoveski', 'Montfort', to_date('27/08/1963', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM2.jpg');
execute insercion_personas(613, 'Abrahan', 'Granthem', 'Beidebeke', 'Chipman', to_date('08/01/2004', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM6.jpg');
execute insercion_personas(614, 'Trip', 'Cornie', 'Pavis', 'Macconachy', to_date('28/10/1970', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM15.jpg');
execute insercion_personas(615, 'Feodor', 'Dannel', 'Nares', 'Windaybank', to_date('06/12/2006', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM18.jpg');
execute insercion_personas(616, 'Parnell', 'Gan', 'Worman', 'Sadat', to_date('01/03/1995', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM17.jpg');
execute insercion_personas(617, 'Selig', 'Branden', 'Iwanicki', 'Vaskin', to_date('15/08/1991', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 34, 'imgM1.jpg');
execute insercion_personas(618, 'Godwin', 'Aguie', 'Matovic', 'Gannicleff', to_date('06/09/1979', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM12.jpg');
execute insercion_personas(619, 'Obediah', 'Alfons', 'Crannell', 'Twell', to_date('25/11/1995', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 34, 'imgM1.jpg');
execute insercion_personas(620, 'Wilden', 'Orran', 'Alvar', 'Beningfield', to_date('09/07/1994', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 34, 'imgM14.jpg');
execute insercion_personas(621, 'Chrisy', 'Armstrong', 'Peealess', 'Pollok', to_date('22/02/1969', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24, 'imgM7.jpg');
execute insercion_personas(622, 'Ferdy', 'Marion', 'Roycroft', 'Toghill', to_date('13/08/1966', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 25, 'imgM13.jpg');
execute insercion_personas(623, 'Burlie', 'Cleon', 'Culp', 'Piggford', to_date('07/04/1984', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM4.jpg');
execute insercion_personas(624, 'Obadias', 'Wait', 'Rings', 'Kitt', to_date('21/06/1984', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 25, 'imgM14.jpg');
execute insercion_personas(625, 'Curr', 'Fielding', 'Dadswell', 'Hexham', to_date('20/09/2001', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 32, 'imgM13.jpg');
execute insercion_personas(626, 'Coleman', 'Hewitt', 'Robbert', 'Jedrzaszkiewicz', to_date('24/12/2005', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 26, 'imgM11.jpg');
execute insercion_personas(627, 'Kimbell', 'Keefe', 'Callway', 'Worster', to_date('15/10/1980', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM9.jpg');
execute insercion_personas(628, 'Tremayne', 'Sammy', 'Grebner', 'Adam', to_date('02/10/1982', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM14.jpg');
execute insercion_personas(629, 'Markos', 'Javier', 'Dossett', 'Shildrake', to_date('14/08/1990', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 34, 'imgM11.jpg');
execute insercion_personas(630, 'Phip', 'Giorgi', 'Mordey', 'McCory', to_date('06/12/1989', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM13.jpg');
execute insercion_personas(631, 'Sherwood', 'Leeland', 'Moreno', 'Dadge', to_date('30/09/1995', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 34, 'imgM17.jpg');
execute insercion_personas(632, 'Othello', 'Kevan', 'Antonowicz', 'McKeefry', to_date('06/10/1976', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM2.jpg');
execute insercion_personas(633, 'Caleb', 'Hamnet', 'Bartholomaus', 'Hardwidge', to_date('11/04/1993', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 28, 'imgM3.jpg');
execute insercion_personas(634, 'Nappy', 'Boothe', 'Dissman', 'Soro', to_date('12/01/1979', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 32, 'imgM16.jpg');
execute insercion_personas(635, 'Gale', 'Giusto', 'Kubis', 'Cardo', to_date('24/08/1977', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 35, 'imgM12.jpg');
execute insercion_personas(636, 'Harcourt', 'Robbert', 'McNay', 'Shurrock', to_date('21/08/1973', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 26, 'imgM11.jpg');
execute insercion_personas(637, 'Devland', 'Weber', 'Largan', 'Gogie', to_date('25/12/1983', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM11.jpg');
execute insercion_personas(638, 'Jodie', 'Geoff', 'Ortiger', 'Spoward', to_date('20/12/1962', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM12.jpg');
execute insercion_personas(639, 'Urbano', 'Hamlen', 'Corbridge', 'Lomasney', to_date('11/11/1982', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 35, 'imgM15.jpg');
execute insercion_personas(640, 'Alfonso', 'Lou', 'Bichener', 'Gledstane', to_date('18/12/1965', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 25, 'imgM7.jpg');
execute insercion_personas(641, 'Dougie', 'Yuri', 'Kittle', 'Greensted', to_date('05/05/1976', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM15.jpg');
execute insercion_personas(642, 'Tod', 'Iver', 'Woodyatt', 'Hammerton', to_date('05/12/1970', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 21, 'imgM6.jpg');
execute insercion_personas(643, 'Ignaz', 'Shelley', 'de Voiels', 'Gooderick', to_date('29/04/1983', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 26, 'imgM4.jpg');
execute insercion_personas(644, 'Rafe', 'Raynard', 'Baudasso', 'Pavie', to_date('26/04/2004', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM7.jpg');
execute insercion_personas(645, 'Jerrie', 'Roberto', 'Mansell', 'Hargraves', to_date('17/01/1994', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM14.jpg');
execute insercion_personas(646, 'Sydney', 'Nichols', 'Petrasso', 'Kiley', to_date('09/08/1960', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 35, 'imgM2.jpg');
execute insercion_personas(647, 'Olag', 'Lisle', 'Rakestraw', 'Jerke', to_date('18/02/1990', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24, 'imgM15.jpg');
execute insercion_personas(648, 'Ash', 'Padraig', 'Mulloch', 'Baldocci', to_date('03/02/1985', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 30, 'imgM18.jpg');
execute insercion_personas(649, 'Gray', 'Tobie', 'Newcome', 'Dunaway', to_date('01/09/1961', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM4.jpg');
execute insercion_personas(650, 'Ernestus', 'Ryley', 'Feldheim', 'Birkmyr', to_date('11/07/2008', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM18.jpg');
execute insercion_personas(651, 'Delmor', 'Hyatt', 'Sagar', 'Arnall', to_date('27/11/1969', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 31, 'imgM16.jpg');
execute insercion_personas(652, 'Osbourn', 'Bourke', 'MacTrustam', 'Forst', to_date('10/07/1965', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 32, 'imgM1.jpg');
execute insercion_personas(653, 'Eddie', 'Sebastian', 'Bleier', 'Cusworth', to_date('16/07/2006', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM8.jpg');
execute insercion_personas(654, 'Park', 'Symon', 'Dymott', 'Bedham', to_date('08/10/2003', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM12.jpg');
execute insercion_personas(655, 'Webster', 'Lawton', 'Jeavon', 'O''Hegertie', to_date('22/06/1973', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 30, 'imgM18.jpg');
execute insercion_personas(656, 'Cointon', 'Gamaliel', 'Manning', 'Eastwood', to_date('19/04/2003', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 26, 'imgM4.jpg');
execute insercion_personas(657, 'Inglis', 'Bryn', 'Paddemore', 'Kinrade', to_date('09/07/1992', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM4.jpg');
execute insercion_personas(658, 'Lenci', 'Gunther', 'Blaksley', 'Legier', to_date('07/08/1996', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM1.jpg');
execute insercion_personas(659, 'Bondon', 'Benji', 'Holburn', 'Lalonde', to_date('27/01/1962', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 26, 'imgM2.jpg');
execute insercion_personas(660, 'Zaccaria', 'Saxon', 'Crackel', 'Donohoe', to_date('04/03/1996', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 25, 'imgM7.jpg');
execute insercion_personas(661, 'Briggs', 'Franky', 'Stitfall', 'Howton', to_date('03/06/1997', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM4.jpg');
execute insercion_personas(662, 'Alford', 'Desi', 'Bagot', 'Halso', to_date('21/01/1985', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 32, 'imgM11.jpg');
execute insercion_personas(663, 'Tyson', 'Zachariah', 'Heads', 'Ronayne', to_date('17/11/1961', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 28, 'imgM14.jpg');
execute insercion_personas(664, 'Jere', 'Garrot', 'Rudwell', 'Gillise', to_date('26/09/1964', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 32, 'imgM9.jpg');
execute insercion_personas(665, 'Algernon', 'Elden', 'Wonfar', 'Maryon', to_date('10/04/1978', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM6.jpg');
execute insercion_personas(666, 'Franklin', 'Levy', 'Williamson', 'Buesden', to_date('12/02/1973', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 30, 'imgM4.jpg');
execute insercion_personas(667, 'Shepherd', 'Bertie', 'Doylend', 'Gounot', to_date('28/09/1960', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM11.jpg');
execute insercion_personas(668, 'Archer', 'Biron', 'Pipkin', 'Ashburne', to_date('04/04/1998', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM18.jpg');
execute insercion_personas(669, 'Cosme', 'Mario', 'Richin', 'Meatcher', to_date('09/01/1966', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 35, 'imgM17.jpg');
execute insercion_personas(670, 'Briant', 'Chicky', 'Dengel', 'Renneke', to_date('13/09/1963', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM5.jpg');
execute insercion_personas(671, 'Caryl', 'Connor', 'Tweddell', 'Buffey', to_date('24/09/1970', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 32, 'imgM14.jpg');
execute insercion_personas(672, 'Pooh', 'Yorke', 'Jayume', 'Facey', to_date('24/05/2003', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM8.jpg');
execute insercion_personas(673, 'Derby', 'Geoffry', 'Hember', 'Birkenshaw', to_date('30/08/1997', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 25, 'imgM4.jpg');
execute insercion_personas(674, 'Christiano', 'Arman', 'King', 'Kershow', to_date('20/02/1994', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM3.jpg');
execute insercion_personas(675, 'Gustaf', 'Maynord', 'Jellis', 'Pieters', to_date('10/09/1961', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 25, 'imgM11.jpg');
execute insercion_personas(676, 'Giles', 'Gaby', 'Liddell', 'Kiggel', to_date('06/04/1984', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 33, 'imgM10.jpg');
execute insercion_personas(677, 'Derek', 'Kirk', 'Jeffry', 'Keays', to_date('25/08/2003', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM16.jpg');
execute insercion_personas(678, 'Ryley', 'Paige', 'Whyman', 'Vispo', to_date('02/10/1969', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 23, 'imgM10.jpg');
execute insercion_personas(679, 'Giraud', 'Rem', 'Tofanini', 'Loynes', to_date('04/09/1967', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 33, 'imgM9.jpg');
execute insercion_personas(680, 'Jessey', 'Boy', 'Mouat', 'Iglesia', to_date('27/06/2000', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM12.jpg');
execute insercion_personas(681, 'Tadd', 'Lamond', 'Limpkin', 'McLennan', to_date('05/04/1977', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 31, 'imgM17.jpg');
execute insercion_personas(682, 'Lorne', 'Enrique', 'Leftley', 'Gerbl', to_date('18/11/1967', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM3.jpg');
execute insercion_personas(683, 'Esdras', 'Stewart', 'Porrett', 'Heeps', to_date('11/04/1977', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 31, 'imgM17.jpg');
execute insercion_personas(684, 'Bartel', 'Christiano', 'McGeoch', 'Whitechurch', to_date('18/05/1963', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 26, 'imgM5.jpg');
execute insercion_personas(685, 'Aldous', 'Far', 'Arnhold', 'Calliss', to_date('01/02/1980', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM8.jpg');
execute insercion_personas(686, 'Abraham', 'Wheeler', 'Gidden', 'Penburton', to_date('01/03/2007', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 31, 'imgM14.jpg');
execute insercion_personas(687, 'Noby', 'Arnold', 'Dearnley', 'Baseley', to_date('22/07/1993', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 24, 'imgM5.jpg');
execute insercion_personas(688, 'Agosto', 'Kingsley', 'Dorracott', 'Land', to_date('22/12/1998', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 24, 'imgM6.jpg');
execute insercion_personas(689, 'Ryun', 'Mathian', 'Dangerfield', 'Colecrough', to_date('13/07/1992', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 30, 'imgM12.jpg');
execute insercion_personas(690, 'Errick', 'Marvin', 'Brion', 'Davidov', to_date('23/04/1969', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM17.jpg');
execute insercion_personas(691, 'Barnabas', 'Aymer', 'Devonish', 'Gabbitis', to_date('19/06/1965', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM10.jpg');
execute insercion_personas(692, 'Godfree', 'Bondon', 'Ranstead', 'Coxhead', to_date('23/03/1974', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM5.jpg');
execute insercion_personas(693, 'Payton', 'Huntlee', 'Troni', 'Menico', to_date('10/05/1961', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 27, 'imgM3.jpg');
execute insercion_personas(694, 'Wally', 'Dante', 'Bernt', 'Sommersett', to_date('19/07/1974', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 26, 'imgM5.jpg');
execute insercion_personas(695, 'Ignace', 'Tuckie', 'Spenclay', 'Lowensohn', to_date('12/09/2001', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 34, 'imgM17.jpg');
execute insercion_personas(696, 'Rem', 'Matthieu', 'Tumility', 'Geake', to_date('09/12/1967', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM4.jpg');
execute insercion_personas(697, 'Tedie', 'Merv', 'Matessian', 'Wondraschek', to_date('31/12/1970', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 34, 'imgM18.jpg');
execute insercion_personas(698, 'Shannan', 'Woodie', 'Betonia', 'Woolpert', to_date('13/10/1982', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 21, 'imgM13.jpg');
execute insercion_personas(699, 'Grover', 'Samuele', 'Riddler', 'Borland', to_date('28/08/1983', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 35, 'imgM14.jpg');
execute insercion_personas(700, 'Tammy', 'Robert', 'Boddam', 'Druce', to_date('29/11/1983', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM7.jpg');
execute insercion_personas(701, 'Manuel', 'Axel', 'Bartalucci', 'Goose', to_date('29/09/1993', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM1.jpg');
execute insercion_personas(702, 'Shurlock', 'Arty', 'McGinn', 'Mattacks', to_date('03/07/1975', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 34, 'imgM17.jpg');
execute insercion_personas(703, 'Winnie', 'Teodorico', 'Newiss', 'Hayward', to_date('23/04/1996', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM10.jpg');
execute insercion_personas(704, 'Muffin', 'Say', 'Bessell', 'Laurenz', to_date('19/11/1980', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 28, 'imgM2.jpg');
execute insercion_personas(705, 'Julie', 'Jerrold', 'Ostick', 'Wilderspoon', to_date('09/07/1998', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM16.jpg');
execute insercion_personas(706, 'Mayer', 'Malvin', 'Sapir', 'Gashion', to_date('23/02/1983', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 26, 'imgM10.jpg');
execute insercion_personas(707, 'Hall', 'Torin', 'Helbeck', 'Tuohy', to_date('31/10/1961', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 32, 'imgM15.jpg');
execute insercion_personas(708, 'Del', 'Bernard', 'Kraut', 'Gething', to_date('11/06/1977', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 30, 'imgM12.jpg');
execute insercion_personas(709, 'Dalt', 'Stacy', 'Zum Felde', 'Percy', to_date('03/04/1962', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 23, 'imgM14.jpg');
execute insercion_personas(710, 'Samuele', 'Benny', 'Legan', 'St Louis', to_date('11/09/2003', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 34, 'imgM5.jpg');
execute insercion_personas(711, 'Branden', 'Javier', 'Lougheid', 'Gooke', to_date('15/10/1987', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 27, 'imgM11.jpg');
execute insercion_personas(712, 'Karim', 'Xerxes', 'Speed', 'Catterick', to_date('28/05/1996', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 34, 'imgM12.jpg');
execute insercion_personas(713, 'Roi', 'Dougy', 'Haborn', 'Spehr', to_date('04/02/1960', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM10.jpg');
execute insercion_personas(714, 'Elston', 'Shelton', 'Gever', 'Wescott', to_date('21/09/1999', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24, 'imgM17.jpg');
execute insercion_personas(715, 'Roderick', 'Moe', 'Pagram', 'Tribbeck', to_date('19/12/1968', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 25, 'imgM17.jpg');
execute insercion_personas(716, 'Joshuah', 'Darcy', 'Coucha', 'Heiner', to_date('07/04/1978', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 26, 'imgM8.jpg');
execute insercion_personas(717, 'Orion', 'Arnuad', 'Harler', 'Iacovini', to_date('28/12/1992', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 30, 'imgM18.jpg');
execute insercion_personas(718, 'Mort', 'Matt', 'Couper', 'Louthe', to_date('15/04/1962', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM2.jpg');
execute insercion_personas(719, 'Troy', 'Travers', 'Roch', 'Rushsorth', to_date('24/04/1977', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 32, 'imgM15.jpg');
execute insercion_personas(720, 'Saunders', 'Yvor', 'McKeaveney', 'Gregori', to_date('09/04/1981', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 35, 'imgM16.jpg');
execute insercion_personas(721, 'Sinclare', 'Reese', 'Brittlebank', 'Crease', to_date('23/08/1968', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM11.jpg');
execute insercion_personas(722, 'Zacharie', 'Farris', 'Vant', 'Gumn', to_date('22/08/1979', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 26, 'imgM6.jpg');
execute insercion_personas(723, 'Douglass', 'Mackenzie', 'Giacobillo', 'Gyurko', to_date('05/05/1976', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM5.jpg');
execute insercion_personas(724, 'Ben', 'Dionysus', 'Firby', 'Faulks', to_date('29/09/1961', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM9.jpg');
execute insercion_personas(725, 'Kleon', 'Huntlee', 'Pattillo', 'Dabernott', to_date('16/08/1960', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 28, 'imgM3.jpg');
execute insercion_personas(726, 'Dean', 'Sammie', 'Chrisp', 'Byne', to_date('23/05/1963', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 23, 'imgM11.jpg');
execute insercion_personas(727, 'Tod', 'Bancroft', 'Citrine', 'Ogdahl', to_date('23/07/1984', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM1.jpg');
execute insercion_personas(728, 'Gonzalo', 'Lincoln', 'Falck', 'Osgar', to_date('17/05/1967', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 25, 'imgM12.jpg');
execute insercion_personas(729, 'Irvine', 'Cosme', 'Annesley', 'Townsend', to_date('11/12/1995', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24, 'imgM12.jpg');
execute insercion_personas(730, 'Jereme', 'Christoph', 'Sapshed', 'Assinder', to_date('02/08/1972', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 32, 'imgM2.jpg');
execute insercion_personas(731, 'Yuri', 'Obidiah', 'O''Hearn', 'Michelle', to_date('26/06/2005', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM16.jpg');
execute insercion_personas(732, 'Lou', 'Tanny', 'Hargie', 'Dubery', to_date('01/08/2008', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 32, 'imgM17.jpg');
execute insercion_personas(733, 'Paige', 'Pablo', 'Petrolli', 'Denny', to_date('05/12/1963', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 26, 'imgM11.jpg');
execute insercion_personas(734, 'Armando', 'Lem', 'Elvy', 'Jensen', to_date('10/11/1969', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24, 'imgM14.jpg');
execute insercion_personas(735, 'Franky', 'Napoleon', 'Steventon', 'Ingold', to_date('21/05/1995', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 22, 'imgM1.jpg');
execute insercion_personas(736, 'Shane', 'Durante', 'Gingle', 'Verrills', to_date('15/07/1993', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 32, 'imgM17.jpg');
execute insercion_personas(737, 'Brad', 'Phip', 'Salvatore', 'Orlton', to_date('04/03/1978', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM6.jpg');
execute insercion_personas(738, 'Craig', 'Burke', 'Porrett', 'Strick', to_date('02/01/1961', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 24, 'imgM8.jpg');
execute insercion_personas(739, 'Ward', 'Hunt', 'Folger', 'Lube', to_date('04/02/1983', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 22, 'imgM16.jpg');
execute insercion_personas(740, 'Gian', 'Gordon', 'Hollerin', 'Ingleby', to_date('03/04/1986', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 29, 'imgM15.jpg');
execute insercion_personas(741, 'Farrel', 'Brantley', 'Hannon', 'Methven', to_date('11/07/1964', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 22, 'imgM1.jpg');
execute insercion_personas(742, 'Hersch', 'Filip', 'Axleby', 'Finnan', to_date('07/10/1988', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 29, 'imgM3.jpg');
execute insercion_personas(743, 'Wallace', 'Morie', 'MacColl', 'Elmore', to_date('20/04/2000', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 27, 'imgM11.jpg');
execute insercion_personas(744, 'Aguste', 'Jermain', 'Fillis', 'Larkby', to_date('11/07/2005', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 35, 'imgM6.jpg');
execute insercion_personas(745, 'Salomone', 'Payton', 'Cremen', 'Webbe', to_date('23/09/1977', 'DD/MM/YYYY'), 'F', 'Sano', null, null, 24, 'imgM8.jpg');
execute insercion_personas(746, 'Myrvyn', 'Pippo', 'Tiltman', 'Sharpless', to_date('30/11/1979', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 29, 'imgM15.jpg');
execute insercion_personas(747, 'Karl', 'Noble', 'Haensel', 'Gayton', to_date('08/04/1971', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 35, 'imgM12.jpg');
execute insercion_personas(748, 'Antoni', 'Raleigh', 'Treadgear', 'Gianetti', to_date('04/06/1989', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 33, 'imgM12.jpg');
execute insercion_personas(749, 'Jereme', 'Tirrell', 'Codrington', 'Medling', to_date('04/04/1998', 'DD/MM/YYYY'), 'F', 'Infectado', null, null, 25, 'imgM14.jpg');
execute insercion_personas(750, 'Parry', 'Jeno', 'Franseco', 'Shewan', to_date('25/02/2005', 'DD/MM/YYYY'), 'F', 'Aislado', null, null, 21, 'imgM6.jpg');

-- PER_VUE --
-- Vuelo #1
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (1, identificacion(EMPTY_BLOB(), 'Laser'), to_timestamp('18/12/2019 03:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('18/12/2019 06:00', 'DD/MM/YYYY HH24:MI'), 29, 33);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 1;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Laser.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #1
insert into per_vue values (5, 1, 29, 33);
insert into per_vue values (12, 1, 29, 33);
insert into per_vue values (34, 1, 29, 33);
insert into per_vue values (55, 1, 29, 33);
/
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (2, identificacion(EMPTY_BLOB(), 'Avior Airlines'), to_timestamp('23/12/2019 13:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('23/12/2019 18:00', 'DD/MM/YYYY HH24:MI'), 30, 33);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 2;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Avior Airlines.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #2
insert into per_vue values (53, 2, 30, 33);
insert into per_vue values (8, 2, 30, 33);
insert into per_vue values (28, 2, 30, 33);
insert into per_vue values (22, 2, 30, 33);
insert into per_vue values (48, 2, 30, 33);
-- Vuelo #3
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (3, identificacion(EMPTY_BLOB(), 'Delta'), to_timestamp('29/12/2019 02:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('29/12/2019 05:00', 'DD/MM/YYYY HH24:MI'), 25, 22);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 3;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Delta.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #3
insert into per_vue values (34, 3, 25, 22);
insert into per_vue values (12, 3, 25, 22);
insert into per_vue values (20, 3, 25, 22);
insert into per_vue values (32, 3, 25, 22);
-- Vuelo #4
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (4, identificacion(EMPTY_BLOB(), 'Turkish Airlines'), to_timestamp('03/01/2020 11:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('03/01/2020 16:00', 'DD/MM/YYYY HH24:MI'), 32, 23);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 4;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Turkish Airlines.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #4
insert into per_vue values (2, 4, 32, 23);
insert into per_vue values (35, 4, 32, 23);
insert into per_vue values (17, 4, 32, 23);
insert into per_vue values (41, 4, 32, 23);
insert into per_vue values (37, 4, 32, 23);
-- Vuelo #5
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (5, identificacion(EMPTY_BLOB(), 'Emirates Airlines'), to_timestamp('09/01/2020 19:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('09/01/2020 23:00', 'DD/MM/YYYY HH24:MI'), 28, 30);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 5;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Emirates Airlines.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #5
insert into per_vue values (51, 5, 28, 30);
insert into per_vue values (38, 5, 28, 30);
insert into per_vue values (49, 5, 28, 30);
insert into per_vue values (70, 5, 28, 30);
insert into per_vue values (24, 5, 28, 30);
-- Vuelo #6
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (6, identificacion(EMPTY_BLOB(), 'Air France'), to_timestamp('16/01/2020 04:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('16/01/2020 11:00', 'DD/MM/YYYY HH24:MI'), 24, 30);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 6;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Air France.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #6
insert into per_vue values (74, 6, 24, 30);
insert into per_vue values (26, 6, 24, 30);
insert into per_vue values (13, 6, 24, 30);
insert into per_vue values (48, 6, 24, 30);
insert into per_vue values (62, 6, 24, 30);
-- Vuelo #7
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (7, identificacion(EMPTY_BLOB(), 'TAP Portugal'), to_timestamp('22/01/2020 15:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('22/01/2020 22:00', 'DD/MM/YYYY HH24:MI'), 22, 28);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 7;

  l_bfile := BFILENAME('DIR_IMAGENES', 'TAP Portugal.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #7
insert into per_vue values (59, 7, 22, 28);
insert into per_vue values (29, 7, 22, 28);
insert into per_vue values (6, 7, 22, 28);
insert into per_vue values (50, 7, 22, 28);
insert into per_vue values (60, 7, 22, 28);
-- Vuelo #8
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (8, identificacion(EMPTY_BLOB(), 'Plus Ultra'), to_timestamp('28/01/2020 02:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('28/01/2020 10:00', 'DD/MM/YYYY HH24:MI'), 35, 30);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 8;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Plus Ultra.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #8
insert into per_vue values (45, 8, 35, 30);
insert into per_vue values (3, 8, 35, 30);
insert into per_vue values (61, 8, 35, 30);
insert into per_vue values (68, 8, 35, 30);
insert into per_vue values (23, 8, 35, 30);
-- Vuelo #9
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (9, identificacion(EMPTY_BLOB(), 'Conviasa'), to_timestamp('01/02/2020 16:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('01/02/2020 21:00', 'DD/MM/YYYY HH24:MI'), 27, 35);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 9;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Conviasa.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #9
insert into per_vue values (63, 9, 27, 35);
insert into per_vue values (55, 9, 27, 35);
insert into per_vue values (47, 9, 27, 35);
insert into per_vue values (44, 9, 27, 35);
insert into per_vue values (23, 9, 27, 35);
-- Vuelo #10
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (10, identificacion(EMPTY_BLOB(), 'Air Europa'), to_timestamp('08/02/2020 05:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('08/02/2020 10:00', 'DD/MM/YYYY HH24:MI'), 21, 32);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 10;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Air Europa.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #10
insert into per_vue values (26, 10, 21, 32);
insert into per_vue values (74, 10, 21, 32);
insert into per_vue values (9, 10, 21, 32);
insert into per_vue values (75, 10, 21, 32);
insert into per_vue values (18, 10, 21, 32);
-- Vuelo #11
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (11, identificacion(EMPTY_BLOB(), 'Avior Airlines'), to_timestamp('11/02/2020 14:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('11/02/2020 22:00', 'DD/MM/YYYY HH24:MI'), 27, 31);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 11;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Avior Airlines.jpg');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #11
insert into per_vue values (11, 11, 27, 31);
insert into per_vue values (70, 11, 27, 31);
insert into per_vue values (28, 11, 27, 31);
insert into per_vue values (10, 11, 27, 31);
insert into per_vue values (13, 11, 27, 31);
-- Vuelo #12
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (12, identificacion(EMPTY_BLOB(), 'Conviasa'), to_timestamp('17/02/2020 06:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('17/02/2020 09:00', 'DD/MM/YYYY HH24:MI'), 26, 32);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 12;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Conviasa.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #12
insert into per_vue values (60, 12, 26, 32); --regresa
insert into per_vue values (55, 12, 26, 32);
insert into per_vue values (43, 12, 26, 32);
insert into per_vue values (58, 12, 26, 32); --regresa
insert into per_vue values (57, 12, 26, 32); --regresa
/
-- Vuelo #13
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (13, identificacion(EMPTY_BLOB(), 'Conviasa'), to_timestamp('20/02/2020 12:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('20/02/2020 20:00', 'DD/MM/YYYY HH24:MI'), 31, 22);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 13;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Conviasa.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #13
insert into per_vue values (39, 13, 31, 22);
insert into per_vue values (55, 13, 31, 22);
insert into per_vue values (22, 13, 31, 22);
insert into per_vue values (56, 13, 31, 22);
insert into per_vue values (24, 13, 31, 22);
-- Vuelo #14
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (14, identificacion(EMPTY_BLOB(), 'Turkish Airlines'), to_timestamp('24/02/2020 23:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('25/02/2020 03:00', 'DD/MM/YYYY HH24:MI'), 28, 24);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 14;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Turkish Airlines.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #14
insert into per_vue values (28, 14, 28, 24);
insert into per_vue values (20, 14, 28, 24); --regresa
insert into per_vue values (60, 14, 28, 24);
insert into per_vue values (19, 14, 28, 24); --regresa
insert into per_vue values (17, 14, 28, 24); --regresa
-- Vuelo #15
DECLARE
  l_bfile  BFILE;
  l_blob   BLOB;
BEGIN
  insert into vuelo values (15, identificacion(EMPTY_BLOB(), 'Air France'), to_timestamp('29/02/2020 08:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('29/02/2020 13:00', 'DD/MM/YYYY HH24:MI'), 32, 23);
  select v.identificacion_aerolinea.imagen INTO l_blob from vuelo v where v.numero_vuelo = 15;

  l_bfile := BFILENAME('DIR_IMAGENES', 'Air France.png');
  DBMS_LOB.fileopen(l_bfile, Dbms_Lob.File_Readonly);
  DBMS_LOB.loadfromfile(l_blob,l_bfile,DBMS_LOB.getlength(l_bfile));
  DBMS_LOB.fileclose(l_bfile);
  COMMIT;
 
EXCEPTION WHEN OTHERS THEN
   ROLLBACK;
   RAISE;
END;
/
-- Persona_Vuelo #15
insert into per_vue values (54, 15, 32, 23);
insert into per_vue values (73, 15, 32, 23);
insert into per_vue values (11, 15, 32, 23); --regresa
insert into per_vue values (15, 15, 32, 23); --regresa
insert into per_vue values (13, 15, 32, 23); --regresa

--SINTOMA
insert into sintoma values (1, 'Fiebre');
insert into sintoma values (2, 'Cansancio');
insert into sintoma values (3, 'Tos seca');
insert into sintoma values (4, 'Dolores');
insert into sintoma values (5, 'Congestion nasal');
insert into sintoma values (6, 'Rinorrea');
insert into sintoma values (7, 'Dolor de garganta');
insert into sintoma values (8, 'Diarrea');

-- PER_SIN 
insert into per_sin values(to_date('20/06/2020', 'DD/MM/YYYY'),'No',1,1);
insert into per_sin values(to_date('21/06/2020', 'DD/MM/YYYY'),'No',1,2);
insert into per_sin values(to_date('23/06/2020', 'DD/MM/YYYY'),'Si',1,3);

insert into per_sin values(to_date('22/06/2020', 'DD/MM/YYYY'),'No',2,1);
insert into per_sin values(to_date('23/06/2020', 'DD/MM/YYYY'),'No',2,2);
insert into per_sin values(to_date('26/06/2020', 'DD/MM/YYYY'),'No',2,4);

insert into per_sin values(to_date('25/06/2020', 'DD/MM/YYYY'),'No',3,2);
insert into per_sin values(to_date('27/06/2020', 'DD/MM/YYYY'),'Si',3,4);
insert into per_sin values(to_date('29/06/2020', 'DD/MM/YYYY'),'Si',3,5);

insert into per_sin values(to_date('23/06/2020', 'DD/MM/YYYY'),'No',4,2);
insert into per_sin values(to_date('28/06/2020', 'DD/MM/YYYY'),'No',4,4);

insert into per_sin values(to_date('27/06/2020', 'DD/MM/YYYY'),'Si',5,3);
insert into per_sin values(to_date('03/07/2020', 'DD/MM/YYYY'),'Si',5,7);

insert into per_sin values(to_date('24/06/2020', 'DD/MM/YYYY'),'No',6,1);
insert into per_sin values(to_date('27/06/2020', 'DD/MM/YYYY'),'No',6,2);
insert into per_sin values(to_date('29/06/2020', 'DD/MM/YYYY'),'Si',6,3);
insert into per_sin values(to_date('04/07/2020', 'DD/MM/YYYY'),'Si',6,4);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'No',7,1);

insert into per_sin values(to_date('05/07/2020', 'DD/MM/YYYY'),'No',8,1);
insert into per_sin values(to_date('06/07/2020', 'DD/MM/YYYY'),'No',8,2);
insert into per_sin values(to_date('08/07/2020', 'DD/MM/YYYY'),'No',8,4);
insert into per_sin values(to_date('10/07/2020', 'DD/MM/YYYY'),'Si',8,8);

insert into per_sin values(to_date('03/07/2020', 'DD/MM/YYYY'),'No',9,4);
insert into per_sin values(to_date('06/07/2020', 'DD/MM/YYYY'),'No',9,5);

insert into per_sin values(to_date('22/06/2020', 'DD/MM/YYYY'),'No',10,2);
insert into per_sin values(to_date('24/06/2020', 'DD/MM/YYYY'),'Si',10,4);

insert into per_sin values(to_date('24/06/2020', 'DD/MM/YYYY'),'Si',11,1);
insert into per_sin values(to_date('25/06/2020', 'DD/MM/YYYY'),'No',11,2);
insert into per_sin values(to_date('28/06/2020', 'DD/MM/YYYY'),'Si',11,3);
insert into per_sin values(to_date('06/07/2020', 'DD/MM/YYYY'),'No',11,4);
insert into per_sin values(to_date('07/07/2020', 'DD/MM/YYYY'),'Si',11,7);

insert into per_sin values(to_date('08/07/2020', 'DD/MM/YYYY'),'No',12,2);
insert into per_sin values(to_date('10/07/2020', 'DD/MM/YYYY'),'Si',12,3);
insert into per_sin values(to_date('15/07/2020', 'DD/MM/YYYY'),'Si',12,4);

insert into per_sin values(to_date('22/06/2020', 'DD/MM/YYYY'),'No',13,1);
insert into per_sin values(to_date('24/06/2020', 'DD/MM/YYYY'),'No',13,2);
insert into per_sin values(to_date('28/06/2020', 'DD/MM/YYYY'),'No',13,3);
insert into per_sin values(to_date('29/06/2020', 'DD/MM/YYYY'),'No',13,4);
insert into per_sin values(to_date('02/07/2020', 'DD/MM/YYYY'),'Si',13,5);
insert into per_sin values(to_date('05/07/2020', 'DD/MM/YYYY'),'Si',13,7);

insert into per_sin values(to_date('20/06/202', 'DD/MM/YYYY'),'Si',14,1);
--- DEL 16 AL 30------------------------------------------------
insert into per_sin values(to_date('27/06/2020', 'DD/MM/YYYY'),'No',16,2);
insert into per_sin values(to_date('28/06/2020', 'DD/MM/YYYY'),'No',16,4);
insert into per_sin values(to_date('05/07/2020', 'DD/MM/YYYY'),'No',16,5);

insert into per_sin values(to_date('03/07/202', 'DD/MM/YYYY'),'Si',17,1);
insert into per_sin values(to_date('07/07/202', 'DD/MM/YYYY'),'Si',17,2);

insert into per_sin values(to_date('28/06/202', 'DD/MM/YYYY'),'Si',19,3);

insert into per_sin values(to_date('29/06/202', 'DD/MM/YYYY'),'Si',20,1);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',20,7);

insert into per_sin values(to_date('09/07/202', 'DD/MM/YYYY'),'Si',21,3);

insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'No',22,4);

insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',23,2);
insert into per_sin values(to_date('10/07/202', 'DD/MM/YYYY'),'No',23,3);

insert into per_sin values(to_date('24/06/202', 'DD/MM/YYYY'),'Si',24,1);
insert into per_sin values(to_date('29/06/202', 'DD/MM/YYYY'),'No',24,4);

insert into per_sin values(to_date('30/06/202', 'DD/MM/YYYY'),'Si',25,3);
insert into per_sin values(to_date('06/06/202', 'DD/MM/YYYY'),'Si',25,5);

insert into per_sin values(to_date('12/07/202', 'DD/MM/YYYY'),'Si',26,3);
insert into per_sin values(to_date('15/07/202', 'DD/MM/YYYY'),'Si',26,6);

insert into per_sin values(to_date('15/07/202', 'DD/MM/YYYY'),'Si',27,1);
insert into per_sin values(to_date('18/07/202', 'DD/MM/YYYY'),'No',27,2);
insert into per_sin values(to_date('20/07/202', 'DD/MM/YYYY'),'Si',27,8);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'No',28,2);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',28,5);

insert into per_sin values(to_date('23/06/202', 'DD/MM/YYYY'),'Si',30,1);
insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'No',30,2);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',30,3);
insert into per_sin values(to_date('07/07/202', 'DD/MM/YYYY'),'No',30,5);
--- DEL 31 AL 45----------------------------------------------
insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'No',31,2);
insert into per_sin values(to_date('27/06/202', 'DD/MM/YYYY'),'No',31,4);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'Si',32,7);

insert into per_sin values(to_date('28/06/202', 'DD/MM/YYYY'),'No',33,2);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',33,3);

insert into per_sin values(to_date('26/06/202', 'DD/MM/YYYY'),'Si',34,4);

insert into per_sin values(to_date('07/07/202', 'DD/MM/YYYY'),'Si',35,3);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'Si',36,1);
insert into per_sin values(to_date('08/07/202', 'DD/MM/YYYY'),'No',36,4);

insert into per_sin values(to_date('29/06/202', 'DD/MM/YYYY'),'Si',37,1);
insert into per_sin values(to_date('02/07/202', 'DD/MM/YYYY'),'Si',37,5);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'Si',38,1);
insert into per_sin values(to_date('27/06/202', 'DD/MM/YYYY'),'No',38,2);
insert into per_sin values(to_date('28/06/202', 'DD/MM/YYYY'),'No',38,4);
insert into per_sin values(to_date('03/07/202', 'DD/MM/YYYY'),'Si',38,7);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',38,8);

insert into per_sin values(to_date('01/07/202', 'DD/MM/YYYY'),'Si',39,4);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'No',40,4);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',40,5);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'No',41,2);
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'Si',41,4);

insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',43,1);
insert into per_sin values(to_date('15/07/202', 'DD/MM/YYYY'),'No',43,2);
insert into per_sin values(to_date('18/07/202', 'DD/MM/YYYY'),'Si',43,3);
insert into per_sin values(to_date('19/07/202', 'DD/MM/YYYY'),'Si',43,4);
insert into per_sin values(to_date('20/07/202', 'DD/MM/YYYY'),'Si',43,7);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'Si',44,4);

insert into per_sin values(to_date('25/06/202', 'DD/MM/YYYY'),'Si',45,1);
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'Si',45,3);
--- DEL 46 AL 60----------------------------------------------
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'No',46,1);

insert into per_sin values(to_date('02/07/202', 'DD/MM/YYYY'),'No',47,2);
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'Si',47,5);

insert into per_sin values(to_date('24/06/202', 'DD/MM/YYYY'),'Si',48,1);
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'No',48,2);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',48,8);

insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'No',49,2);
insert into per_sin values(to_date('06/07/202', 'DD/MM/YYYY'),'No',49,4);
insert into per_sin values(to_date('09/07/202', 'DD/MM/YYYY'),'Si',49,6);

insert into per_sin values(to_date('27/06/202', 'DD/MM/YYYY'),'Si',50,5);

insert into per_sin values(to_date('27/06/202', 'DD/MM/YYYY'),'Si',51,1);
insert into per_sin values(to_date('28/06/202', 'DD/MM/YYYY'),'Si',51,3);
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'Si',51,4);

insert into per_sin values(to_date('02/07/202', 'DD/MM/YYYY'),'Si',52,3);
insert into per_sin values(to_date('06/07/202', 'DD/MM/YYYY'),'Si',52,7);

insert into per_sin values(to_date('09/07/202', 'DD/MM/YYYY'),'No',53,4);

insert into per_sin values(to_date('24/06/202', 'DD/MM/YYYY'),'No',54,2);
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'Si',54,3);

insert into per_sin values(to_date('01/07/202', 'DD/MM/YYYY'),'Si',55,1);

insert into per_sin values(to_date('08/07/202', 'DD/MM/YYYY'),'Si',56,1);

insert into per_sin values(to_date('26/06/202', 'DD/MM/YYYY'),'No',57,7);

insert into per_sin values(to_date('26/06/202', 'DD/MM/YYYY'),'Si',58,2);
insert into per_sin values(to_date('03/07/202', 'DD/MM/YYYY'),'No',58,8);

insert into per_sin values(to_date('22/06/202', 'DD/MM/YYYY'),'Si',59,4);
insert into per_sin values(to_date('24/06/202', 'DD/MM/YYYY'),'No',59,6);

insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'No',60,4);
--- DEL 61 AL 75----------------------------------------------
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'Si',61,1);
insert into per_sin values(to_date('06/07/202', 'DD/MM/YYYY'),'No',61,2);
insert into per_sin values(to_date('09/07/202', 'DD/MM/YYYY'),'Si',61,3);

insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'Si',62,1);
insert into per_sin values(to_date('07/07/202', 'DD/MM/YYYY'),'No',62,2);
insert into per_sin values(to_date('14/07/202', 'DD/MM/YYYY'),'Si',62,3);
insert into per_sin values(to_date('24/07/202', 'DD/MM/YYYY'),'Si',62,4);
insert into per_sin values(to_date('25/07/202', 'DD/MM/YYYY'),'Si',62,5);
insert into per_sin values(to_date('27/07/202', 'DD/MM/YYYY'),'No',62,6);
insert into per_sin values(to_date('29/07/202', 'DD/MM/YYYY'),'Si',62,7);

insert into per_sin values(to_date('19/06/202', 'DD/MM/YYYY'),'Si',63,1);
insert into per_sin values(to_date('27/06/202', 'DD/MM/YYYY'),'Si',63,2);
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'No',63,8);

insert into per_sin values(to_date('02/07/202', 'DD/MM/YYYY'),'No',64,2);

insert into per_sin values(to_date('24/06/202', 'DD/MM/YYYY'),'No',65,4);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'Si',65,5);

insert into per_sin values(to_date('22/06/202', 'DD/MM/YYYY'),'No',66,2);
insert into per_sin values(to_date('01/07/202', 'DD/MM/YYYY'),'No',66,4);

insert into per_sin values(to_date('08/07/202', 'DD/MM/YYYY'),'Si',67,3);

insert into per_sin values(to_date('06/07/202', 'DD/MM/YYYY'),'Si',68,1);
insert into per_sin values(to_date('19/07/202', 'DD/MM/YYYY'),'No',68,4);

insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'No',69,2);
insert into per_sin values(to_date('07/07/202', 'DD/MM/YYYY'),'No',69,3);
insert into per_sin values(to_date('14/07/202', 'DD/MM/YYYY'),'No',69,4);

insert into per_sin values(to_date('22/06/202', 'DD/MM/YYYY'),'Si',70,1);
insert into per_sin values(to_date('28/06/202', 'DD/MM/YYYY'),'No',70,2);
insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'No',70,3);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'No',70,4);
insert into per_sin values(to_date('08/07/202', 'DD/MM/YYYY'),'No',70,5);
insert into per_sin values(to_date('09/07/202', 'DD/MM/YYYY'),'Si',70,6);
insert into per_sin values(to_date('14/07/202', 'DD/MM/YYYY'),'Si',70,7);
insert into per_sin values(to_date('17/07/202', 'DD/MM/YYYY'),'No',70,8);

insert into per_sin values(to_date('03/07/202', 'DD/MM/YYYY'),'No',71,5);

insert into per_sin values(to_date('01/07/202', 'DD/MM/YYYY'),'No',72,2);
insert into per_sin values(to_date('06/07/202', 'DD/MM/YYYY'),'No',72,4);

insert into per_sin values(to_date('23/06/202', 'DD/MM/YYYY'),'Si',73,1);
insert into per_sin values(to_date('28/06/202', 'DD/MM/YYYY'),'Si',73,2);
insert into per_sin values(to_date('03/07/202', 'DD/MM/YYYY'),'No',73,3);
insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'No',73,7);
insert into per_sin values(to_date('09/07/202', 'DD/MM/YYYY'),'No',73,3);

insert into per_sin values(to_date('04/07/202', 'DD/MM/YYYY'),'Si',74,3);
insert into per_sin values(to_date('08/07/202', 'DD/MM/YYYY'),'No',74,4);

insert into per_sin values(to_date('05/07/202', 'DD/MM/YYYY'),'No',75,1);
insert into per_sin values(to_date('12/07/202', 'DD/MM/YYYY'),'No',75,4);

--PATOLOGIA
insert into patologia values (1, 'Sin. resp. de Oriente Medio');
insert into patologia values (2, 'Sin. resp. agudo severo');
insert into patologia values (3, 'Diabetes');
insert into patologia values (4, 'Hepatitis');
insert into patologia values (5, 'Obesidad');
insert into patologia values (6, 'Hipertiroidismo');
insert into patologia values (7, 'Hipertensión arterial');
insert into patologia values (8, 'aspiración pulmonar');
insert into patologia values (9, 'Bronquiectasias');
insert into patologia values (10, 'Riesgo cardiovascular');
insert into patologia values (11, 'Faringoamigdalitis');
insert into patologia values (12, 'Fibrosis pulmonar idiopática');
insert into patologia values (13, 'Infarto de miocardio');
insert into patologia values (14, 'Insuficiencia cardiaca');
insert into patologia values (15, 'Neumonía');

-- PER_PAT    
insert into per_pat values(1,1);
insert into per_pat values(1,2);
insert into per_pat values(1,3);
insert into per_pat values(2,3);
insert into per_pat values(2,4);
insert into per_pat values(2,5);
insert into per_pat values(2,6);
insert into per_pat values(3,6);
insert into per_pat values(3,7);
insert into per_pat values(4,8);
insert into per_pat values(4,9);
insert into per_pat values(4,10);
insert into per_pat values(5,11);
insert into per_pat values(5,12);
insert into per_pat values(6,13);
insert into per_pat values(6,14);
insert into per_pat values(6,15);
insert into per_pat values(7,1);
insert into per_pat values(7,2);
insert into per_pat values(8,3);
insert into per_pat values(8,4);
insert into per_pat values(8,5);
insert into per_pat values(8,6);
insert into per_pat values(9,7);
insert into per_pat values(10,8);
insert into per_pat values(11,9);
insert into per_pat values(11,10);
insert into per_pat values(11,11);
insert into per_pat values(12,12);
insert into per_pat values(12,13);
insert into per_pat values(13,14);
insert into per_pat values(13,15);
insert into per_pat values(13,1);
insert into per_pat values(14,2);
insert into per_pat values(14,3);

------------------PERSONAS CON PATOLOGIA DEL 16 AL 30----
insert into per_pat values(16,6);
insert into per_pat values(16,7);
insert into per_pat values(17,8);

insert into per_pat values(19,9);
insert into per_pat values(20,10);
insert into per_pat values(20,11);
insert into per_pat values(21,12);
insert into per_pat values(22,13);
insert into per_pat values(23,14);
insert into per_pat values(24,15);
insert into per_pat values(25,1);
insert into per_pat values(26,2);
insert into per_pat values(27,3);
insert into per_pat values(27,4);
insert into per_pat values(28,5);

insert into per_pat values(30,7);
insert into per_pat values(30,8);
insert into per_pat values(30,9);
------------------PERSONAS CON PATOLOGIA DEL 31 AL 45----
insert into per_pat values(31,10);
insert into per_pat values(32,11);
insert into per_pat values(33,12);
insert into per_pat values(34,13);
insert into per_pat values(35,14);
insert into per_pat values(36,15);
insert into per_pat values(37,1);
insert into per_pat values(38,2);
insert into per_pat values(38,3);
insert into per_pat values(38,4);
insert into per_pat values(38,5);
insert into per_pat values(39,6);
insert into per_pat values(40,7);
insert into per_pat values(41,8);

insert into per_pat values(43,10);
insert into per_pat values(43,11);
insert into per_pat values(43,12);
insert into per_pat values(44,13);
insert into per_pat values(45,14);
insert into per_pat values(45,15);
------------------PERSONAS CON PATOLOGIA DEL 46 AL 60----
insert into per_pat values(46,1);
insert into per_pat values(47,2);
insert into per_pat values(48,3);
insert into per_pat values(48,4);
insert into per_pat values(49,5);
insert into per_pat values(49,6);
insert into per_pat values(50,7);
insert into per_pat values(51,8);
insert into per_pat values(51,9);
insert into per_pat values(51,10);
insert into per_pat values(52,11);
insert into per_pat values(52,12);
insert into per_pat values(53,13);
insert into per_pat values(54,14);
insert into per_pat values(55,15);
insert into per_pat values(56,1);
insert into per_pat values(57,2);
insert into per_pat values(58,3);
insert into per_pat values(58,4);
insert into per_pat values(58,5);
insert into per_pat values(59,6);
insert into per_pat values(59,7);
insert into per_pat values(60,8);
------------------PERSONAS CON PATOLOGIA DEL 61 AL 75----
insert into per_pat values(61,9);
insert into per_pat values(62,10);
insert into per_pat values(62,11);
insert into per_pat values(62,13);
insert into per_pat values(62,14);
insert into per_pat values(62,15);
insert into per_pat values(62,1);
insert into per_pat values(62,2);
insert into per_pat values(63,3);
insert into per_pat values(63,4);
insert into per_pat values(63,5);
insert into per_pat values(64,6);
insert into per_pat values(65,7);
insert into per_pat values(66,8);
insert into per_pat values(67,9);
insert into per_pat values(68,10);
insert into per_pat values(68,11);
insert into per_pat values(69,12);
insert into per_pat values(69,13);
insert into per_pat values(69,14);
insert into per_pat values(70,15);
insert into per_pat values(70,1);
insert into per_pat values(70,2);
insert into per_pat values(70,3);
insert into per_pat values(70,4);
insert into per_pat values(70,5);
insert into per_pat values(70,6);
insert into per_pat values(71,7);
insert into per_pat values(72,8);
insert into per_pat values(73,9);
insert into per_pat values(73,10);
insert into per_pat values(73,11);
insert into per_pat values(73,12);
insert into per_pat values(74,13);
insert into per_pat values(74,14);
insert into per_pat values(75,15);

--INSUMO
insert into insumo values (1, 'Mascarillas');
insert into insumo values (2, 'Gasas');
insert into insumo values (3, 'Gel antibacterial');
insert into insumo values (4, 'Guantes quirurgicos');
insert into insumo values (5, 'Alcohol');
insert into insumo values (6, 'Batas descartables');
insert into insumo values (7, 'Algodon');
insert into insumo values (8, 'Solucion salina');
insert into insumo values (9, 'Agujas');
insert into insumo values (10, 'Sondas');
insert into insumo values (11, 'Termometros');
insert into insumo values (12, 'Cateteres');
insert into insumo values (13, 'Pruebas de deteccion de COVID');
insert into insumo values (14, 'Baja lengua');
insert into insumo values (15, 'Gorros descartables');

--CENTRO SALUD
insert into centro_salud values (1, 'Hospital Victorino Santaella', direccion('Avenida Bicentenaria', null, 'El tambor'), 'Hospital', 100, 21);
insert into centro_salud values (2, 'Universitario de los andes', direccion('Av. 16 de Septiembre', null, 'Merida'), 'Hospital', 300, 22);
insert into centro_salud values (3, 'Hospital Vargas ', direccion('San Simeon','Monte Carmelo', 'La candelaria'), 'Hospital', 50, 23);
insert into centro_salud values (4, 'Huntington Hospital', direccion('100 W','California Blvd', null), 'Hospital', 640, 24);
insert into centro_salud values (5, 'Centro Hospitalario Bellevue', direccion('462','1st Avenue', null), 'Clinica', 1230, 25);
insert into centro_salud values (6, 'Mercy Hospital', direccion('3663 S','Miami Ave', null), 'Hospital', 870, 26);
insert into centro_salud values (7, 'Hospital Samaritano', direccion('R. Bambina','98 - Botafogo', null), 'Hospital', 480, 27);
insert into centro_salud values (8, 'Hospital Santa Julia', direccion('Centro','', null), 'Hospital', 350, 28);
insert into centro_salud values (9, 'Hospital Brasília', direccion('St. de Habitações Individuais Sul QI 15','Lago Sul', null), 'Hospital', 500, 29);
insert into centro_salud values (10, 'Hospital General Tijuana', direccion('Centenario 10851','Zona Río', null), 'Hospital', 870, 30);
insert into centro_salud values (11, 'Hospital General de México', direccion('Dr. Balmis 148','Cuauhtémoc, 06720', null), 'Hospital', 690, 31);
insert into centro_salud values (12, 'Hospital San Javier Guadalajara', direccion('Av Pablo Casals 640','Prados Providencia', null), 'Hospital', 1000, 32);
insert into centro_salud values (13, 'Hospital Santa Cristina', direccion('Calle Maestro Vives','2', null), 'Hospital', 700, 33);
insert into centro_salud values (14, 'Hospital Universitario HM Madrid', direccion('Pl. del Conde del Valle de Súchil','16', null), 'Hospital', 820, 34);
insert into centro_salud values (15, 'Hospital Clínico Y Provincial de Barcelona', direccion('Carrer de Villarroel','170', null), 'Clinica', 960, 35);

--DONCACION
--ESTADOS UNIDOS A VENEZUELA
insert into donacion values (1, to_date('10/03/2020','DD/MM/YYYY'), 'Mascarillas', 100000, 1000000, 1, 2);
insert into donacion values (2, to_date('10/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 20000, 20000000, 1, 2);
insert into donacion values (3, to_date('10/03/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 1, 2);
insert into donacion values (4, to_date('10/05/2020','DD/MM/YYYY'), 'Mascarillas', 100000, 1000000, 1, 2);
insert into donacion values (5, to_date('10/05/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 5000, 500000, 1, 2);
insert into donacion values (6, to_date('10/05/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 1, 2);
--ESTADOS UNIDOS A BRASIL
insert into donacion values (7, to_date('15/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 3, 2);
insert into donacion values (8, to_date('15/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 3, 2);
insert into donacion values (9, to_date('01/06/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 3, 2);
insert into donacion values (10, to_date('01/06/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 3, 2);
insert into donacion values (11, to_date('01/06/2020','DD/MM/YYYY'), 'Alcohol', 100000, 100000, 3, 2);
--ESTADOS UNIDOS A MEXICO
insert into donacion values (12, to_date('01/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 2);
insert into donacion values (13, to_date('01/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 4, 2);
insert into donacion values (14, to_date('01/02/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 4, 2);
insert into donacion values (15, to_date('01/02/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 4, 2);
insert into donacion values (16, to_date('15/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 2);
insert into donacion values (17, to_date('15/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 4, 2);
insert into donacion values (18, to_date('15/04/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 4, 2);
insert into donacion values (19, to_date('15/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 4, 2);
--ESTADOS UNIDOS A ESPAÑA
insert into donacion values (20, to_date('22/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 2);
insert into donacion values (21, to_date('22/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 2);
insert into donacion values (22, to_date('22/02/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 2);
insert into donacion values (23, to_date('22/02/2020','DD/MM/YYYY'), 'Termometros', 20000, 40000, 5, 2);
insert into donacion values (24, to_date('11/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 2);
insert into donacion values (25, to_date('11/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 2);
insert into donacion values (26, to_date('11/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 2);
insert into donacion values (27, to_date('11/04/2020','DD/MM/YYYY'), 'Termometros', 20000, 40000, 5, 2);
--ESPAÑA A VENEZUELA
insert into donacion values (28, to_date('12/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 1, 5);
insert into donacion values (29, to_date('12/03/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 1, 5);
insert into donacion values (30, to_date('12/03/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 1, 5);
insert into donacion values (31, to_date('12/03/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 1, 5);
insert into donacion values (32, to_date('18/05/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 1, 5);
insert into donacion values (33, to_date('18/05/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 1, 5);
insert into donacion values (34, to_date('18/05/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 1, 5);
insert into donacion values (35, to_date('18/05/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 1, 5);
--ESPAÑA A ESTADOS UNIDOS
insert into donacion values (36, to_date('27/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 5);
insert into donacion values (37, to_date('27/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 5);
insert into donacion values (38, to_date('27/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 2, 5);
insert into donacion values (39, to_date('27/04/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 2, 5);
insert into donacion values (40, to_date('05/05/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 5);
insert into donacion values (41, to_date('05/05/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 5);
insert into donacion values (42, to_date('05/05/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 2, 5);
insert into donacion values (43, to_date('05/05/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 2, 5);
--ESPAÑA A MEXICO
insert into donacion values (44, to_date('01/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 5);
insert into donacion values (45, to_date('01/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 4, 5);
insert into donacion values (46, to_date('01/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 4, 5);
insert into donacion values (47, to_date('01/06/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 5);
insert into donacion values (48, to_date('01/06/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 4, 5);
insert into donacion values (49, to_date('01/06/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 4, 5);
--BRASIL A ESTADOS UNIDOS
insert into donacion values (50, to_date('30/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 3);
insert into donacion values (51, to_date('30/03/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 3);
--BRASIL A VENEZUELA
insert into donacion values (52, to_date('27/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 1, 3);
insert into donacion values (53, to_date('27/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 1, 3);
insert into donacion values (54, to_date('27/02/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 1, 3);
--MEXICO A VENEZUELA
insert into donacion values (55, to_date('18/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 1, 4);
insert into donacion values (56, to_date('18/03/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 1, 4);
insert into donacion values (57, to_date('18/03/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 1, 4);
insert into donacion values (58, to_date('18/03/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 1, 4);
insert into donacion values (59, to_date('18/03/2020','DD/MM/YYYY'), 'Gorros descartables', 200000, 1000000, 1, 4);
--MEXICO A ESTADOS UNIDOS
insert into donacion values (60, to_date('03/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 4);
insert into donacion values (61, to_date('03/03/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 4);
--MEXICO A BRASIL
insert into donacion values (62, to_date('15/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 3, 4);
insert into donacion values (63, to_date('15/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 3, 4);
insert into donacion values (64, to_date('15/04/2020','DD/MM/YYYY'), 'Termometros', 20000, 40000, 3, 4);
--MEXICO A ESPAÑA
insert into donacion values (65, to_date('17/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 4);
insert into donacion values (66, to_date('17/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 4);
insert into donacion values (67, to_date('17/02/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 4);
--VENEZUELA A MEXICO
insert into donacion values (68, to_date('15/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 1);
insert into donacion values (69, to_date('15/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 4, 1);
--VENEZUELA A BRASIL
insert into donacion values (70, to_date('15/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 3, 1);
insert into donacion values (71, to_date('15/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 3, 1);


--INVENTARIO
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (1, 1, 8000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (1, 4, 700);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (1, 13, 1000, 2);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (2, 1, 200);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (2, 4, 700);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (2, 13, 1000, 2);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (3, 1, 200);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (3, 4, 700);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (3, 13, 15000, 2);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (4, 1, 8000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (4, 4, 500);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (4, 13, 5000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (5, 1, 8000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (5, 4, 700);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (5, 13, 3500);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (6, 1, 7800);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (6, 4, 6000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (6, 13, 15000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (7, 1, 8000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (7, 4, 6000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (7, 13, 1000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (8, 1, 8000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (8, 4, 6000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (8, 13, 15000, 4);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (9, 1, 200);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (9, 4, 6000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (9, 13, 1000, 1);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (10, 1, 7530);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (10, 4, 700);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (10, 13, 3500, 2);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (11, 1, 8000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (11, 4, 900);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (11, 13, 1000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (12, 1, 7800);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (12, 4, 900);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (12, 13, 1000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (13, 1, 200);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (13, 4, 700);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (13, 13, 3500, 4);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (14, 1, 8000);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (14, 4, 900);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (14, 13, 3500, 4);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (15, 1, 7530);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario) values (15, 4, 700);
insert into inventario (id_csalud_inventario, id_insumo_inventario, cantidad_inventario, id_donacion_inventario) values (15, 13, 15000, 4);

--HIS_MEDICO
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (1, 1, to_date('10/06/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (3, 1, to_date('10/06/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (5, 1, to_date('10/06/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (8, 2, to_date('15/10/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (7, 2, to_date('15/10/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (10, 2, to_date('15/10/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (11, 3, to_date('01/04/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (15, 3, to_date('01/04/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (16, 4, to_date('22/06/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (17, 4, to_date('22/06/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (18, 4, to_date('22/06/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (20, 5, to_date('03/04/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (21, 5, to_date('03/04/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (23, 5, to_date('03/04/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (29, 6, to_date('15/01/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (30, 6, to_date('15/01/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (33, 7, to_date('22/06/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (35, 7, to_date('22/06/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (37, 8, to_date('03/05/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (39, 8, to_date('03/05/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (41, 9, to_date('10/10/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (44, 9, to_date('10/10/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (45, 9, to_date('10/10/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (46, 10, to_date('03/06/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (47, 10, to_date('03/06/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (49, 10, to_date('03/06/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (50, 10, to_date('03/06/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (51, 11, to_date('01/05/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (53, 11, to_date('01/05/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (57, 12, to_date('15/04/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (60, 12, to_date('15/04/2019', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (62, 13, to_date('15/01/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (65, 13, to_date('15/01/2018', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (67, 14, to_date('01/10/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (68, 14, to_date('01/10/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (70, 14, to_date('01/10/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (71, 15, to_date('10/06/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (72, 15, to_date('10/06/2020', 'DD/MM/YYYY'));
insert into his_medico (pasaporte_persona_histm, id_csalud_histm, fecasistencia_histm) values (74, 15, to_date('10/06/2020', 'DD/MM/YYYY'));
