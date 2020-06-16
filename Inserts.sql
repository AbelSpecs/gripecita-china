--LUGAR
--Paises
insert into lugar values (1, identificacion(null, 'Venezuela'), 'Pais', 30000000, null);
insert into lugar values (2, identificacion(null, 'Estados Unidos'), 'Pais', 328000000, null);
insert into lugar values (3, identificacion(null, 'Brasil'), 'Pais', 209000000, null);
insert into lugar values (4, identificacion(null, 'Mexico'), 'Pais', 126000000, null);
insert into lugar values (5, identificacion(null, 'España'), 'Pais', 4177000000, null);
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
insert into proveedor values (1, identificacion(null, 'Cantv'), 2, 5);
insert into proveedor values (2, identificacion(null, 'Movistar'), 2, 7);
insert into proveedor values (3, identificacion(null, 'Digitel'), 2, 5);
insert into proveedor values (4, identificacion(null, 'Inter'), 2, 10);
insert into proveedor values (5, identificacion(null, 'T-Online'), 5, 10);
insert into proveedor values (6, identificacion(null, 'UOL'), 8, 8);
insert into proveedor values (7, identificacion(null, 'Unitel' ), 7, 7);
insert into proveedor values (8, identificacion(null, 'Earthlink' ), 100, 100);
insert into proveedor values (9, identificacion(null, 'AT and T'), 50, 50);
insert into proveedor values (10, identificacion(null, 'GTT'), 20, 50);
insert into proveedor values (11, identificacion(null, 'T-Mobile'), 30, 20);
insert into proveedor values (12, identificacion(null, 'Global Telecom'), 20, 25);
insert into proveedor values (13, identificacion(null, 'Deutsche Telekom'), 50, 40);
insert into proveedor values (14, identificacion(null, 'KPN International'), 70, 30);
insert into proveedor values (15, identificacion(null, 'Orange'), 50, 50);

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

-- VUELO
insert into vuelo values (1, identificacion(null, 'Air France'), to_timestamp('17/12/2019 08:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('17/12/2019 16:00', 'DD/MM/YYYY HH24:MI'), 27, 30);
insert into vuelo values (2, identificacion(null, 'Air France'), to_timestamp('22/12/2019 00:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('22/12/2019 03:00', 'DD/MM/YYYY HH24:MI'), 24, 32);
insert into vuelo values (3, identificacion(null, 'Emirates Airlines'), to_timestamp('26/12/2019 06:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('26/12/2019 11:00', 'DD/MM/YYYY HH24:MI'), 24, 32);
insert into vuelo values (4, identificacion(null, 'Air France'), to_timestamp('29/12/2019 15:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('29/12/2019 22:00', 'DD/MM/YYYY HH24:MI'), 21, 26);
insert into vuelo values (5, identificacion(null, 'Emirates Airlines'), to_timestamp('05/01/2020 01:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('05/01/2020 06:00', 'DD/MM/YYYY HH24:MI'), 29, 26);
insert into vuelo values (6, identificacion(null, 'Plus Ultra'), to_timestamp('08/01/2020 12:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('08/01/2020 19:00', 'DD/MM/YYYY HH24:MI'), 23, 29);
insert into vuelo values (7, identificacion(null, 'Conviasa'), to_timestamp('12/01/2020 22:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('13/01/2020 02:00', 'DD/MM/YYYY HH24:MI'), 35, 24);
insert into vuelo values (8, identificacion(null, 'Air Europa'), to_timestamp('18/01/2020 08:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('18/01/2020 12:00', 'DD/MM/YYYY HH24:MI'), 27, 31);
insert into vuelo values (9, identificacion(null, 'Conviasa'), to_timestamp('24/01/2020 15:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('24/01/2020 18:00', 'DD/MM/YYYY HH24:MI'), 33, 27);
insert into vuelo values (10, identificacion(null, 'Iberia'), to_timestamp('29/01/2020 23:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('30/01/2020 02:00', 'DD/MM/YYYY HH24:MI'), 25, 22);
insert into vuelo values (11, identificacion(null, 'Conviasa'), to_timestamp('05/02/2020 08:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('05/02/2020 14:00', 'DD/MM/YYYY HH24:MI'), 32, 25);
insert into vuelo values (12, identificacion(null, 'Delta'), to_timestamp('09/02/2020 18:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('09/02/2020 21:00', 'DD/MM/YYYY HH24:MI'), 26, 30);
insert into vuelo values (13, identificacion(null, 'Avior Airlines'), to_timestamp('13/02/2020 05:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('13/02/2020 08:00', 'DD/MM/YYYY HH24:MI'), 29, 34);
insert into vuelo values (14, identificacion(null, 'Emirates Airlines'), to_timestamp('16/02/2020 13:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('16/02/2020 21:00', 'DD/MM/YYYY HH24:MI'), 28, 21);
insert into vuelo values (15, identificacion(null, 'American Airlines'), to_timestamp('23/02/2020 01:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('23/02/2020 09:00', 'DD/MM/YYYY HH24:MI'), 35, 23);

-- PERSONA --
-- VENEZUELA
insert into persona values (1, 'Lamont', null, 'Walter', 'Rath', to_date('10/11/1956', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 21);
insert into persona values (2, 'Burton', 'Art', 'Sawayn', 'Hahn', to_date('12/10/1940', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 21);
insert into persona values (3, 'Ramiro', 'Cornell', 'Balistreri', 'Shanahan', to_date('19/01/1975', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 21);
insert into persona values (4, 'Keli', null, 'Johns', 'Bailey', to_date('14/05/1976', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 21);
insert into persona values (5, 'Jonah', 'Stanford', 'Braun', 'Nader', to_date('08/09/1995', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 21); 
insert into persona values (6, 'Tandy', 'Nickie', 'McClure', 'Wolf', to_date('14/03/1976', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 22);
insert into persona values (7, 'Charlene', 'Silas', 'Price', 'Smitham', to_date('28/10/1965', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 22);
insert into persona values (8, 'Alyssa', 'Nereida', 'Sawayn', 'Skiles', to_date('06/08/1989', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 22);
insert into persona values (9, 'Amber', 'Shawnna', 'Larson', 'Moen', to_date('11/07/2000', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 22);
insert into persona values (10, 'Kraig', 'Noemi', 'Morissette', 'Bradtke', to_date('28/05/1989', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 22);
insert into persona values (11, 'Alane', 'Noelle', 'Kuhic', 'Luettgen', to_date('20/10/1985', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 23);
insert into persona values (12, 'Michael', null, 'Stehr', 'Dietrich', to_date('13/11/1992', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 23);
insert into persona values (13, 'Layne', 'Charley', 'Simonis', 'Hamill', to_date('10/04/1981', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 23);
insert into persona values (14, 'Roberta', null, 'Sawayn', 'Macejkovic', to_date('31/05/1988', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 23);
insert into persona values (15, 'Wyatt', 'Wilmer', 'Stiedemann', 'Kertzmann', to_date('19/07/1940', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 23);
-- USA
insert into persona values (16, 'Tegan', 'Winston', 'Ratke', 'Casper', to_date('11/09/1941', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 24);
insert into persona values (17, 'Deshawn', null, 'Kassulke', 'Langworth', to_date('25/09/1988', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 24);
insert into persona values (18, 'Ilse', 'Jae', 'Simonis', 'Wilkinson', to_date('27/06/1963', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 24);
insert into persona values (19, 'Chong', 'Patrick', 'Langworth', 'Zemlak', to_date('12/11/1944', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 24);
insert into persona values (20, 'Peter', null, 'Schimmel', 'Welch', to_date('26/06/1973', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 24);
insert into persona values (21, 'Elina', 'Ignacio', 'Ratke', 'Leffler', to_date('12/04/1974', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 25);
insert into persona values (22, 'Julio', 'Lovie', 'Von', 'Altenwerth', to_date('08/01/1998', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 25);
insert into persona values (23, 'Young', 'Corrin', 'Wintheiser', 'Corkery', to_date('07/09/1964', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 25);
insert into persona values (24, 'Alfonzo', null, 'Skiles', 'Cassin', to_date('28/07/1957', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 25);
insert into persona values (25, 'Isaura', 'Nathaniel', 'Hagenes', 'Ondricka', to_date('08/08/1983', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 25);
insert into persona values (26, 'Nicki', 'Edison', 'Konopelski', 'Bahringer', to_date('13/12/1944', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 26);
insert into persona values (27, 'Kittie', null, 'Wiegand', 'Yost', to_date('09/02/1942', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 26);
insert into persona values (28, 'Albina', null, 'Walter', 'Wiza', to_date('30/09/1958', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 26);
insert into persona values (29, 'Lucien', null, 'Bahringer', 'Sanford', to_date('30/12/1972', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 26);
insert into persona values (30, 'Kathyrn', 'Bennett', 'Lowe', 'Price', to_date('07/04/1959', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 26);
-- BRASIL
insert into persona values (31, 'Chong', 'Daron', 'Maggio', 'Hegmann', to_date('07/11/1942', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 27);
insert into persona values (32, 'Tabetha', null, 'Jerde', 'Schoen', to_date('23/01/1948', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 27);
insert into persona values (33, 'Kimber', null, 'Conroy', 'Russel', to_date('07/07/1944', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 27);
insert into persona values (34, 'Damien', 'Osvaldo', 'Hintz', 'Rempel', to_date('11/01/1944', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 27);
insert into persona values (35, 'Cory', 'Ivelisse', 'Brekke', 'Medhurst', to_date('20/01/1960', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 27);
insert into persona values (36, 'Viviana', 'Doria', 'Stroman', 'Ledner', to_date('13/08/1960', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 28);
insert into persona values (37, 'Clarinda', 'Estelle', 'Lueilwitz', 'McGlynn', to_date('30/03/1981', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 28);
insert into persona values (38, 'Frederic', 'Cassi', 'Collins', 'Greenholt', to_date('01/06/1946', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 28);
insert into persona values (39, 'Ike', 'Shannon', 'Botsford', 'Ferry', to_date('12/07/1943', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 28);
insert into persona values (40, 'Ahmed', 'Sid', 'Cummings', 'Pfannerstill', to_date('17/06/1993', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 28);
insert into persona values (41, 'Lezlie', null, 'Heathcote', 'Stiedemann', to_date('15/07/1953', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 29);
insert into persona values (42, 'Pete', null, 'Gorczany', 'Frami', to_date('28/05/1982', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 29);
insert into persona values (43, 'Milo', null, 'Rutherford', 'Zulauf', to_date('03/04/1941', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 29);
insert into persona values (44, 'Marshall', null, 'Auer', 'Heller', to_date('30/09/1982', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 29);
insert into persona values (45, 'Van', null, 'Maggio', 'Kunde', to_date('18/01/2001', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 29);
-- MEXICO
insert into persona values (46, 'Salome', null, 'Abbott', 'Schmitt', to_date('03/04/1967', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 30);
insert into persona values (47, 'Cristen', null, 'Adams', 'Predovic', to_date('22/12/1979', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 30);
insert into persona values (48, 'Leonia', null, 'Mraz', 'Conroy', to_date('11/06/1993', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 30);
insert into persona values (49, 'Cortez', 'Sallie', 'Hoeger', 'Turcotte', to_date('05/12/1977', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 30);
insert into persona values (50, 'Porfirio', 'Neva', 'Lesch', 'Lemke', to_date('04/10/1968', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 30);
insert into persona values (51, 'Corina', 'Edwardo', 'Friesen', 'Lehner', to_date('20/04/1983', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 31);
insert into persona values (52, 'Jeramy', null, 'Braun', 'Cummerata', to_date('17/04/1954', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 31);
insert into persona values (53, 'Sharolyn', 'Gino', 'Reinger', 'Tremblay', to_date('31/03/1981', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 31);
insert into persona values (54, 'Erick', null, 'Kreiger', 'Gutkowski', to_date('12/06/1943', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 31);
insert into persona values (55, 'Carter', 'Sylvia', 'Spinka', 'OHara', to_date('15/04/1977', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 31);
insert into persona values (56, 'Mack', 'Pearline', 'Nicolas', 'Weber', to_date('28/11/1987', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 32);
insert into persona values (57, 'Audra', null, 'Murphy', 'Roob', to_date('06/06/1952', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 32);
insert into persona values (58, 'Aracelis', 'Lance', 'McCullough', 'Glover', to_date('21/12/1963', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 32);
insert into persona values (59, 'Orval', null, 'Reichert', 'Rohan', to_date('24/03/1977', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 32);
insert into persona values (60, 'Adelaida', null, 'Watsica', 'Baumbach', to_date('04/06/1976', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 32);
-- ESPANA
insert into persona values (61, 'Willy', 'Karena', 'Hintz', 'Moen', to_date('28/01/1992', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 33);
insert into persona values (62, 'Chas', null, 'Ziemann', 'Rath', to_date('15/07/1986', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 33);
insert into persona values (63, 'Salvador', null, 'Murphy', 'Collins', to_date('05/07/1946', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 33);
insert into persona values (64, 'Mafalda', null, 'Stanton', 'Corkery', to_date('10/07/1996', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 33);
insert into persona values (65, 'Season', 'Lina', 'Walsh', 'Stanton', to_date('06/11/1941', 'DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 33);
insert into persona values (66, 'Ivana', 'Erasmo', 'Ryan', 'Watsica', to_date('10/01/1996', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 34);
insert into persona values (67, 'Lee', 'Clint', 'Ortiz', 'Rempel', to_date('06/12/1985', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 34);
insert into persona values (68, 'Randell', null, 'Schulist', 'Hackett', to_date('15/01/1999', 'DD/MM/YYYY'), 'F', null, 'Sano', null, null, 34);
insert into persona values (69, 'Jeromy', 'Alissa', 'Considine', 'Fay', to_date('06/05/1995', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 34);
insert into persona values (70, 'Ramiro', 'Earline', 'King', 'Reichel', to_date('14/08/1942', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 34);
insert into persona values (71, 'Irwin', null, 'Heidenreich', 'Olson', to_date('11/08/1978', 'DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 35);
insert into persona values (72, 'Katelynn', 'Danette', 'OKon', 'Denesik', to_date('23/03/1981', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 35);
insert into persona values (73, 'Glinda', null, 'Macejkovic', 'Padberg', to_date('10/12/1940', 'DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 35);
insert into persona values (74, 'Andrew', null, 'Tremblay', 'Hessel', to_date('25/04/1986', 'DD/MM/YYYY'), 'M', null, 'Sano', null, null, 35);
insert into persona values (75, 'Ermelinda', 'Willian', 'Simonis', 'Emard', to_date('17/04/1994', 'DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 35);
--INSERTS ADICIONALES DE PERSONA
insert into persona values (76, 'Ced', 'Rodolphe', 'Narracott', 'Seyfart', to_date('02/04/1975','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 21);
insert into persona values (77, 'Alvera', 'Minnaminnie', 'Beggan', 'Warne', to_date('08/09/1967','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 21);
insert into persona values (78, 'Lexie', 'Pauletta', 'Tripony', 'Rennie', to_date('01/01/1978','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 21);
insert into persona values (79, 'Marybeth', 'Tierney', 'Honsch', 'Defond', to_date('03/12/1980','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 21);
insert into persona values (80, 'Julee', 'Xena', 'Peatheyjohns', 'Lokier', to_date('02/04/1975','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 21);
insert into persona values (81, 'Robbi', 'Anthea', 'Castiglioni', 'McElhinney', to_date('19/11/1974','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 21);
insert into persona values (82, 'Corbet', 'Willis', 'Simacek', 'Favey', to_date('08/10/1972','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 22);
insert into persona values (83, 'Sharl', 'Jayme', 'Fonte', 'Burren', to_date('08/02/1987','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 22);
insert into persona values (84, 'Donavon', 'Fitz', 'Pitney', 'Fotheringham', to_date('08/09/1967','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 22);
insert into persona values (85, 'Penny', 'Arlena', 'Downton', 'Gault', to_date('03/07/1969','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 22);
insert into persona values (86, 'Elinor', 'Riannon', 'Howbrook', 'Cutford', to_date('08/10/1972','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 22);
insert into persona values (87, 'Lorin', 'Anton', 'Moyes', 'Campagne', to_date('08/09/1967','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 22);
insert into persona values (88, 'Lambert', 'Osmond', 'Rallin', 'Routhorn', to_date('01/01/1978','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 23);
insert into persona values (89, 'Cymbre', 'Yasmin', 'Trobe', 'Caught', to_date('03/07/1969','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 23);
insert into persona values (90, 'Hamid', 'Whit', 'Pool', 'Martlew', to_date('08/02/1987','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 23);
insert into persona values (91, 'Tabbatha', 'Lulu', 'Sautter', 'Greenleaf', to_date('01/01/1978','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 23);
insert into persona values (92, 'Lorrie', 'Jeno', 'Mallinson', 'Minghella', to_date('03/12/1980','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 23);
insert into persona values (93, 'Shermy', 'Thaddeus', 'Lepard', 'Aplin', to_date('03/07/1969','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 23);
insert into persona values (94, 'Darda', 'Dot', 'Durnall', 'O''Spellissey', to_date('10/11/1965','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 24);
insert into persona values (95, 'Charley', 'Miles', 'Brodeau', 'Destouche', to_date('04/05/1967','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 24);
insert into persona values (96, 'Cobby', 'Dermot', 'Sebring', 'Westnedge', to_date('07/04/1989','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 24);
insert into persona values (97, 'Zaria', 'Trude', 'Alberti', 'McTrustey', to_date('13/05/1966','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 24);
insert into persona values (98, 'Kelcie', 'Dina', 'Delea', 'Somerscales', to_date('04/05/1967','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 24);
insert into persona values (99, 'Rosanna', 'Margaux', 'Pryn', 'Mucklestone', to_date('17/03/1978','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 24);
insert into persona values (100, 'Terrell', 'Erie', 'Schole', 'Abbati', to_date('01/01/1978','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 24);
insert into persona values (101, 'Steffi', 'Julee', 'Iggo', 'Pigden', to_date('10/11/1965','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 25);
insert into persona values (102, 'Porter', 'Lucio', 'Bissell', 'Catt', to_date('17/03/1978','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 25);
insert into persona values (103, 'Dene', 'Magnum', 'Blessed', 'Segrott', to_date('03/10/1979','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 25);
insert into persona values (104, 'Cirillo', 'Ari', 'Bruno', 'Bearcroft', to_date('04/05/1967','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 25);
insert into persona values (105, 'Ruttger', 'Free', 'Rennix', 'Kleinfeld', to_date('04/05/1967','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 25);
insert into persona values (106, 'Julian', 'Penny', 'Waszczykowski', 'Lindeboom', to_date('13/05/1966','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 25);
insert into persona values (107, 'Manon', 'Wendye', 'Ruberry', 'Tosney', to_date('19/11/1974','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 26);
insert into persona values (108, 'Zorina', 'Astrix', 'Bountiff', 'Melvin', to_date('01/01/1978','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 26);
insert into persona values (109, 'Godfry', 'Orrin', 'Rumbold', 'Duce', to_date('02/04/1975','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 26);
insert into persona values (110, 'Dannye', 'Maiga', 'McKeowon', 'O''Heffernan', to_date('03/12/1980','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 26);
insert into persona values (111, 'Osbourne', 'Christy', 'Fancutt', 'Ferrolli', to_date('03/04/1971','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 26);
insert into persona values (112, 'Jourdan', 'Kessia', 'Bazoge', 'Guisler', to_date('01/01/1978','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 26);
insert into persona values (113, 'Mano', 'Riccardo', 'Daubney', 'Trenear', to_date('01/01/1978','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 27);
insert into persona values (114, 'Abran', 'Arte', 'England', 'Bosomworth', to_date('17/03/1978','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 27);
insert into persona values (115, 'Wynn', 'Minda', 'Fisk', 'Hamshaw', to_date('19/11/1974','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 27);
insert into persona values (116, 'Muire', 'Nelle', 'Feeham', 'Allward', to_date('17/03/1978','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 27);
insert into persona values (117, 'Millie', 'Honoria', 'Mizzi', 'Vondruska', to_date('13/05/1966','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 27);
insert into persona values (118, 'Minny', 'Bria', 'Weedall', 'Minghi', to_date('08/02/1987','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 27);
insert into persona values (119, 'Anders', 'Lenci', 'Gerlack', 'Semble', to_date('03/04/1971','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 27);
insert into persona values (120, 'Barty', 'Jarrad', 'Standingford', 'McSweeney', to_date('08/09/1967','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 28);
insert into persona values (121, 'Blaine', 'Conrado', 'Baynon', 'Goricke', to_date('04/05/1967','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 28);
insert into persona values (122, 'Conchita', 'Delcine', 'Flanner', 'Bellham', to_date('13/05/1966','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 28);
insert into persona values (123, 'Florrie', 'Bunni', 'Youson', 'Annies', to_date('08/10/1972','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 28);
insert into persona values (124, 'Eula', 'Drucy', 'Seawright', 'Stinson', to_date('03/07/1969','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 28);
insert into persona values (125, 'Darwin', 'Del', 'Helleker', 'Skelhorn', to_date('17/03/1978','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 28);
insert into persona values (126, 'Barth', 'Ab', 'Lukes', 'Winwright', to_date('03/08/1970','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 29);
insert into persona values (127, 'Annmaria', 'Andi', 'MacGregor', 'Colpus', to_date('04/05/1967','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 29);
insert into persona values (128, 'Hasty', 'Ripley', 'Savine', 'Cabell', to_date('08/10/1972','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 29);
insert into persona values (129, 'Starr', 'Marthe', 'Joderli', 'Peers', to_date('01/01/1978','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 29);
insert into persona values (130, 'Raf', 'Scarlet', 'Taggett', 'Oakley', to_date('04/05/1967','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 29);
insert into persona values (131, 'Pascale', 'Howard', 'Nevet', 'Inder', to_date('08/09/1967','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 29);
insert into persona values (132, 'Franky', 'Florri', 'Alflat', 'Rea', to_date('08/09/1967','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 30);
insert into persona values (133, 'Denney', 'Tuck', 'Jales', 'Schoroder', to_date('03/07/1969','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 30);
insert into persona values (134, 'Gan', 'Colver', 'Mace', 'Trattles', to_date('08/09/1967','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 30);
insert into persona values (135, 'Gabriell', 'Eileen', 'Bispo', 'Inderwick', to_date('10/11/1965','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 30);
insert into persona values (136, 'Felix', 'Rafe', 'Kleiner', 'Camois', to_date('03/04/1971','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 30);
insert into persona values (137, 'Jerrilyn', 'Luci', 'Pantling', 'Rosedale', to_date('03/07/1969','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 30);
insert into persona values (138, 'Louis', 'Jakob', 'Nunson', 'Burnard', to_date('17/03/1978','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 31);
insert into persona values (139, 'Brok', 'Reinald', 'Wycliff', 'Gouldeby', to_date('03/08/1970','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 31);
insert into persona values (140, 'Nettle', 'Nicole', 'Pollak', 'Drane', to_date('03/08/1970','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 31);
insert into persona values (141, 'Averyl', 'Joyce', 'Gentric', 'Rosel', to_date('03/08/1970','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 31);
insert into persona values (142, 'Noemi', 'Annabel', 'Picknett', 'Alexis', to_date('03/08/1970','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 31);
insert into persona values (143, 'Mar', 'Jule', 'Leuchars', 'Phripp', to_date('17/03/1978','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 31);
insert into persona values (144, 'Rhett', 'Gabriello', 'Heeran', 'Haxley', to_date('10/11/1965','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 32);
insert into persona values (145, 'Neely', 'Arlen', 'Gepson', 'Oliff', to_date('19/11/1974','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 32);
insert into persona values (146, 'Bentley', 'Rudiger', 'Bosdet', 'Geist', to_date('08/10/1972','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 32);
insert into persona values (147, 'Brand', 'Isidro', 'Lum', 'Hanlon', to_date('10/11/1965','DD/MM/YYYY'), 'M', null, 'Infectado', null, null, 32);
insert into persona values (148, 'Lamar', 'Alonso', 'Della', 'Haggie', to_date('19/11/1974','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 32);
insert into persona values (149, 'Jehu', 'Claire', 'Matula', 'Busain', to_date('01/01/1978','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 32);
insert into persona values (150, 'Lilith', 'Tiffani', 'Bortolussi', 'McCarron', to_date('01/01/1978','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 33);
insert into persona values (151, 'Jeannine', 'Lucine', 'Heelis', 'Lenoir', to_date('07/04/1989','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 33);
insert into persona values (152, 'Lurleen', 'Renie', 'Ebbitt', 'Agent', to_date('08/10/1972','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 33);
insert into persona values (153, 'Dulcinea', 'Drona', 'Barajas', 'O''Fogerty', to_date('04/05/1967','DD/MM/YYYY'), 'F', null, 'Infectado', null, null, 33);
insert into persona values (154, 'Betti', 'Dell', 'Tesche', 'Nicol', to_date('08/10/1972','DD/MM/YYYY'), 'F', null, 'Sano', null, null, 33);
insert into persona values (155, 'Giralda', 'Sophie', 'Shadbolt', 'Golley', to_date('01/01/1978','DD/MM/YYYY'), 'F', null, 'Aislado', null, null, 33);
insert into persona values (156, 'Ezri', 'Reilly', 'Thompkins', 'Hinrichsen', to_date('03/04/1971','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 34);
insert into persona values (157, 'Sebastiano', 'Floyd', 'Squibe', 'Dockray', to_date('17/03/1978','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 34);
insert into persona values (158, 'Alanson', 'Tomlin', 'Kobieriecki', 'Petschel', to_date('17/03/1978','DD/MM/YYYY'), 'M', null, 'Sano', null, null, 34);
insert into persona values (159, 'Cleveland', 'Shermy', 'Kilbride', 'Jurczik', to_date('08/09/1967','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 34);
insert into persona values (160, 'Stacee', 'Wilbert', 'McKerton', 'Croasdale', to_date('13/05/1966','DD/MM/YYYY'), 'M', null, 'Aislado', null, null, 34);


-- PER_VUE --
-- Vuelo #1
insert into vuelo values (1, identificacion(null, 'Laser'), to_timestamp('18/12/2019 03:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('18/12/2019 06:00', 'DD/MM/YYYY HH24:MI'), 29, 33);
-- Persona_Vuelo #1
insert into per_vue values (5, 1, 29, 33);
insert into per_vue values (39, 1, 29, 33);
insert into per_vue values (12, 1, 29, 33);
insert into per_vue values (34, 1, 29, 33);
insert into per_vue values (55, 1, 29, 33);
-- Vuelo #2
insert into vuelo values (2, identificacion(null, 'Avior Airlines'), to_timestamp('23/12/2019 13:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('23/12/2019 18:00', 'DD/MM/YYYY HH24:MI'), 30, 33);
-- Persona_Vuelo #2
insert into per_vue values (53, 2, 30, 33);
insert into per_vue values (8, 2, 30, 33);
insert into per_vue values (28, 2, 30, 33);
insert into per_vue values (22, 2, 30, 33);
insert into per_vue values (48, 2, 30, 33);
-- Vuelo #3
insert into vuelo values (3, identificacion(null, 'Delta'), to_timestamp('29/12/2019 02:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('29/12/2019 05:00', 'DD/MM/YYYY HH24:MI'), 25, 22);
-- Persona_Vuelo #3
insert into per_vue values (34, 3, 25, 22);
insert into per_vue values (12, 3, 25, 22);
insert into per_vue values (20, 3, 25, 22);
insert into per_vue values (32, 3, 25, 22);
-- Vuelo #4
insert into vuelo values (4, identificacion(null, 'Turkish Airlines'), to_timestamp('03/01/2020 11:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('03/01/2020 16:00', 'DD/MM/YYYY HH24:MI'), 32, 23);
-- Persona_Vuelo #4
insert into per_vue values (2, 4, 32, 23);
insert into per_vue values (35, 4, 32, 23);
insert into per_vue values (17, 4, 32, 23);
insert into per_vue values (41, 4, 32, 23);
insert into per_vue values (37, 4, 32, 23);
-- Vuelo #5
insert into vuelo values (5, identificacion(null, 'Emirates Airlines'), to_timestamp('09/01/2020 19:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('09/01/2020 23:00', 'DD/MM/YYYY HH24:MI'), 28, 30);
-- Persona_Vuelo #5
insert into per_vue values (51, 5, 28, 30);
insert into per_vue values (38, 5, 28, 30);
insert into per_vue values (49, 5, 28, 30);
insert into per_vue values (70, 5, 28, 30);
insert into per_vue values (24, 5, 28, 30);
-- Vuelo #6
insert into vuelo values (6, identificacion(null, 'Air France'), to_timestamp('16/01/2020 04:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('16/01/2020 11:00', 'DD/MM/YYYY HH24:MI'), 24, 30);
-- Persona_Vuelo #6
insert into per_vue values (74, 6, 24, 30);
insert into per_vue values (26, 6, 24, 30);
insert into per_vue values (13, 6, 24, 30);
insert into per_vue values (48, 6, 24, 30);
insert into per_vue values (62, 6, 24, 30);
-- Vuelo #7
insert into vuelo values (7, identificacion(null, 'TAP Portugal'), to_timestamp('22/01/2020 15:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('22/01/2020 22:00', 'DD/MM/YYYY HH24:MI'), 22, 28);
-- Persona_Vuelo #7
insert into per_vue values (59, 7, 22, 28);
insert into per_vue values (29, 7, 22, 28);
insert into per_vue values (6, 7, 22, 28);
insert into per_vue values (50, 7, 22, 28);
insert into per_vue values (60, 7, 22, 28);
-- Vuelo #8
insert into vuelo values (8, identificacion(null, 'Plus Ultra'), to_timestamp('28/01/2020 02:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('28/01/2020 10:00', 'DD/MM/YYYY HH24:MI'), 35, 30);
-- Persona_Vuelo #8
insert into per_vue values (45, 8, 35, 30);
insert into per_vue values (3, 8, 35, 30);
insert into per_vue values (61, 8, 35, 30);
insert into per_vue values (68, 8, 35, 30);
insert into per_vue values (23, 8, 35, 30);
-- Vuelo #9
insert into vuelo values (9, identificacion(null, 'Conviasa'), to_timestamp('01/02/2020 16:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('01/02/2020 21:00', 'DD/MM/YYYY HH24:MI'), 27, 35);
-- Persona_Vuelo #9
insert into per_vue values (63, 9, 27, 35);
insert into per_vue values (55, 9, 27, 35);
insert into per_vue values (47, 9, 27, 35);
insert into per_vue values (44, 9, 27, 35);
insert into per_vue values (23, 9, 27, 35);
-- Vuelo #10
insert into vuelo values (10, identificacion(null, 'Air Europa'), to_timestamp('08/02/2020 05:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('08/02/2020 10:00', 'DD/MM/YYYY HH24:MI'), 21, 32);
-- Persona_Vuelo #10
insert into per_vue values (26, 10, 21, 32);
insert into per_vue values (74, 10, 21, 32);
insert into per_vue values (9, 10, 21, 32);
insert into per_vue values (75, 10, 21, 32);
insert into per_vue values (18, 10, 21, 32);
-- Vuelo #11
insert into vuelo values (11, identificacion(null, 'Avior Airlines'), to_timestamp('11/02/2020 14:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('11/02/2020 22:00', 'DD/MM/YYYY HH24:MI'), 27, 31);
-- Persona_Vuelo #11
insert into per_vue values (11, 11, 27, 31);
insert into per_vue values (70, 11, 27, 31);
insert into per_vue values (28, 11, 27, 31);
insert into per_vue values (10, 11, 27, 31);
insert into per_vue values (13, 11, 27, 31);
-- Vuelo #12
insert into vuelo values (12, identificacion(null, 'Conviasa'), to_timestamp('17/02/2020 06:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('17/02/2020 09:00', 'DD/MM/YYYY HH24:MI'), 26, 32);
-- Persona_Vuelo #12
insert into per_vue values (60, 12, 26, 32); --regresa
insert into per_vue values (55, 12, 26, 32);
insert into per_vue values (43, 12, 26, 32);
insert into per_vue values (58, 12, 26, 32); --regresa
insert into per_vue values (57, 12, 26, 32); --regresa
-- Vuelo #13
insert into vuelo values (13, identificacion(null, 'Conviasa'), to_timestamp('20/02/2020 12:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('20/02/2020 20:00', 'DD/MM/YYYY HH24:MI'), 31, 22);
-- Persona_Vuelo #13
insert into per_vue values (39, 13, 31, 22);
insert into per_vue values (55, 13, 31, 22);
insert into per_vue values (22, 13, 31, 22);
insert into per_vue values (56, 13, 31, 22);
insert into per_vue values (24, 13, 31, 22);
-- Vuelo #14
insert into vuelo values (14, identificacion(null, 'Turkish Airlines'), to_timestamp('24/02/2020 23:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('25/02/2020 03:00', 'DD/MM/YYYY HH24:MI'), 28, 24);
-- Persona_Vuelo #14
insert into per_vue values (28, 14, 28, 24);
insert into per_vue values (20, 14, 28, 24); --regresa
insert into per_vue values (60, 14, 28, 24);
insert into per_vue values (19, 14, 28, 24); --regresa
insert into per_vue values (17, 14, 28, 24); --regresa
-- Vuelo #15
insert into vuelo values (15, identificacion(null, 'Air France'), to_timestamp('29/02/2020 08:00', 'DD/MM/YYYY HH24:MI'), to_timestamp('29/02/2020 13:00', 'DD/MM/YYYY HH24:MI'), 32, 23);
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
insert into per_sin values(to_date('20/06/2020'),'No',1,1);
insert into per_sin values(to_date('21/06/2020'),'No',1,2);
insert into per_sin values(to_date('23/06/2020'),'Si',1,3);

insert into per_sin values(to_date('22/06/2020'),'No',2,1);
insert into per_sin values(to_date('23/06/2020'),'No',2,2);
insert into per_sin values(to_date('26/06/2020'),'No',2,4);

insert into per_sin values(to_date('25/06/2020'),'No',3,2);
insert into per_sin values(to_date('27/06/2020'),'Si',3,4);
insert into per_sin values(to_date('29/06/2020'),'Si',3,5);

insert into per_sin values(to_date('23/06/2020'),'No',4,2);
insert into per_sin values(to_date('28/06/2020'),'No',4,4);

insert into per_sin values(to_date('27/06/2020'),'Si',5,3);
insert into per_sin values(to_date('3/07/2020'),'Si',5,7);

insert into per_sin values(to_date('24/06/2020'),'No',6,1);
insert into per_sin values(to_date('27/06/2020'),'No',6,2);
insert into per_sin values(to_date('29/06/2020'),'Si',6,3);
insert into per_sin values(to_date('4/07/2020'),'Si',6,4);

insert into per_sin values(to_date('25/06/2020'),'No',7,1);

insert into per_sin values(to_date('5/07/2020'),'No',8,1);
insert into per_sin values(to_date('6/07/2020'),'No',8,2);
insert into per_sin values(to_date('8/07/2020'),'No',8,4);
insert into per_sin values(to_date('10/07/2020'),'Si',8,8);

insert into per_sin values(to_date('3/07/2020'),'No',9,4);
insert into per_sin values(to_date('6/07/2020'),'No',9,5);

insert into per_sin values(to_date('22/06/2020'),'No',10,2);
insert into per_sin values(to_date('24/06/2020'),'Si',10,4);

insert into per_sin values(to_date('24/06/2020'),'Si',11,1);
insert into per_sin values(to_date('25/06/2020'),'No',11,2);
insert into per_sin values(to_date('28/06/2020'),'Si',11,3);
insert into per_sin values(to_date('06/07/2020'),'No',11,4);
insert into per_sin values(to_date('07/07/2020'),'Si',11,7);

insert into per_sin values(to_date('08/07/2020'),'No',12,2);
insert into per_sin values(to_date('10/07/2020'),'Si',12,3);
insert into per_sin values(to_date('15/07/2020'),'Si',12,4);

insert into per_sin values(to_date('22/06/2020'),'No',13,1);
insert into per_sin values(to_date('24/06/2020'),'No',13,2);
insert into per_sin values(to_date('28/06/2020'),'No',13,3);
insert into per_sin values(to_date('29/06/2020'),'No',13,4);
insert into per_sin values(to_date('2/07/2020'),'Si',13,5);
insert into per_sin values(to_date('5/07/2020'),'Si',13,7);

insert into per_sin values(to_date('20/06/2020'),'Si',14,1);
--- DEL 16 AL 30------------------------------------------------
insert into per_sin values(to_date('27/06/2020'),'No',16,2);
insert into per_sin values(to_date('28/06/2020'),'No',16,4);
insert into per_sin values(to_date('5/07/2020'),'No',16,5);

insert into per_sin values(to_date('3/07/2020'),'Si',17,1);
insert into per_sin values(to_date('7/07/2020'),'Si',17,2);

insert into per_sin values(to_date('28/06/2020'),'Si',19,3);

insert into per_sin values(to_date('29/06/2020'),'Si',20,1);
insert into per_sin values(to_date('5/07/2020'),'Si',20,7);

insert into per_sin values(to_date('9/07/2020'),'Si',21,3);

insert into per_sin values(to_date('5/07/2020'),'No',22,4);

insert into per_sin values(to_date('5/07/2020'),'Si',23,2);
insert into per_sin values(to_date('10/07/2020'),'No',23,3);

insert into per_sin values(to_date('24/06/2020'),'Si',24,1);
insert into per_sin values(to_date('29/06/2020'),'No',24,4);

insert into per_sin values(to_date('30/06/2020'),'Si',25,3);
insert into per_sin values(to_date('6/06/2020'),'Si',25,5);

insert into per_sin values(to_date('12/07/2020'),'Si',26,3);
insert into per_sin values(to_date('15/07/2020'),'Si',26,6);

insert into per_sin values(to_date('15/07/2020'),'Si',27,1);
insert into per_sin values(to_date('18/07/2020'),'No',27,2);
insert into per_sin values(to_date('20/07/2020'),'Si',27,8);

insert into per_sin values(to_date('25/06/2020'),'No',28,2);
insert into per_sin values(to_date('5/07/2020'),'Si',28,5);

insert into per_sin values(to_date('23/06/2020'),'Si',30,1);
insert into per_sin values(to_date('25/06/2020'),'No',30,2);
insert into per_sin values(to_date('5/07/2020'),'Si',30,3);
insert into per_sin values(to_date('7/07/2020'),'No',30,5);
--- DEL 31 AL 45----------------------------------------------
insert into per_sin values(to_date('25/06/2020'),'No',31,2);
insert into per_sin values(to_date('27/06/2020'),'No',31,4);

insert into per_sin values(to_date('25/06/2020'),'Si',32,7);

insert into per_sin values(to_date('28/06/2020'),'No',33,2);
insert into per_sin values(to_date('5/07/2020'),'Si',33,3);

insert into per_sin values(to_date('26/06/2020'),'Si',34,4);

insert into per_sin values(to_date('7/07/2020'),'Si',35,3);

insert into per_sin values(to_date('25/06/2020'),'Si',36,1);
insert into per_sin values(to_date('8/07/2020'),'No',36,4);

insert into per_sin values(to_date('29/06/2020'),'Si',37,1);
insert into per_sin values(to_date('2/07/2020'),'Si',37,5);

insert into per_sin values(to_date('25/06/2020'),'Si',38,1);
insert into per_sin values(to_date('27/06/2020'),'No',38,2);
insert into per_sin values(to_date('28/06/2020'),'No',38,4);
insert into per_sin values(to_date('3/07/2020'),'Si',38,7);
insert into per_sin values(to_date('5/07/2020'),'Si',38,8);

insert into per_sin values(to_date('1/07/2020'),'Si',39,4);

insert into per_sin values(to_date('25/06/2020'),'No',40,4);
insert into per_sin values(to_date('5/07/2020'),'Si',40,5);

insert into per_sin values(to_date('25/06/2020'),'No',41,2);
insert into per_sin values(to_date('4/07/2020'),'Si',41,4);

insert into per_sin values(to_date('5/07/2020'),'Si',43,1);
insert into per_sin values(to_date('15/07/2020'),'No',43,2);
insert into per_sin values(to_date('18/07/2020'),'Si',43,3);
insert into per_sin values(to_date('19/07/2020'),'Si',43,4);
insert into per_sin values(to_date('20/07/2020'),'Si',43,7);

insert into per_sin values(to_date('25/06/2020'),'Si',44,4);

insert into per_sin values(to_date('25/06/2020'),'Si',45,1);
insert into per_sin values(to_date('4/07/2020'),'Si',45,3);
--- DEL 46 AL 60----------------------------------------------
insert into per_sin values(to_date('4/07/2020'),'No',46,1);

insert into per_sin values(to_date('2/07/2020'),'No',47,2);
insert into per_sin values(to_date('4/07/2020'),'Si',47,5);

insert into per_sin values(to_date('24/06/2020'),'Si',48,1);
insert into per_sin values(to_date('4/07/2020'),'No',48,2);
insert into per_sin values(to_date('5/07/2020'),'Si',48,8);

insert into per_sin values(to_date('4/07/2020'),'No',49,2);
insert into per_sin values(to_date('6/07/2020'),'No',49,4);
insert into per_sin values(to_date('9/07/2020'),'Si',49,6);

insert into per_sin values(to_date('27/06/2020'),'Si',50,5);

insert into per_sin values(to_date('27/06/2020'),'Si',51,1);
insert into per_sin values(to_date('28/06/2020'),'Si',51,3);
insert into per_sin values(to_date('4/07/2020'),'Si',51,4);

insert into per_sin values(to_date('2/07/2020'),'Si',52,3);
insert into per_sin values(to_date('6/07/2020'),'Si',52,7);

insert into per_sin values(to_date('9/07/2020'),'No',53,4);

insert into per_sin values(to_date('24/06/2020'),'No',54,2);
insert into per_sin values(to_date('4/07/2020'),'Si',54,3);

insert into per_sin values(to_date('1/07/2020'),'Si',55,1);

insert into per_sin values(to_date('8/07/2020'),'Si',56,1);

insert into per_sin values(to_date('26/06/2020'),'No',57,7);

insert into per_sin values(to_date('26/06/2020'),'Si',58,2);
insert into per_sin values(to_date('3/07/2020'),'No',58,8);

insert into per_sin values(to_date('22/06/2020'),'Si',59,4);
insert into per_sin values(to_date('24/06/2020'),'No',59,6);

insert into per_sin values(to_date('4/07/2020'),'No',60,4);
--- DEL 61 AL 75----------------------------------------------
insert into per_sin values(to_date('4/07/2020'),'Si',61,1);
insert into per_sin values(to_date('6/07/2020'),'No',61,2);
insert into per_sin values(to_date('9/07/2020'),'Si',61,3);

insert into per_sin values(to_date('4/07/2020'),'Si',62,1);
insert into per_sin values(to_date('7/07/2020'),'No',62,2);
insert into per_sin values(to_date('14/07/2020'),'Si',62,3);
insert into per_sin values(to_date('24/07/2020'),'Si',62,4);
insert into per_sin values(to_date('25/07/2020'),'Si',62,5);
insert into per_sin values(to_date('27/07/2020'),'No',62,6);
insert into per_sin values(to_date('29/07/2020'),'Si',62,7);

insert into per_sin values(to_date('19/06/2020'),'Si',63,1);
insert into per_sin values(to_date('27/06/2020'),'Si',63,2);
insert into per_sin values(to_date('4/07/2020'),'No',63,8);

insert into per_sin values(to_date('2/07/2020'),'No',64,2);

insert into per_sin values(to_date('24/06/2020'),'No',65,4);
insert into per_sin values(to_date('5/07/2020'),'Si',65,5);

insert into per_sin values(to_date('22/06/2020'),'No',66,2);
insert into per_sin values(to_date('1/07/2020'),'No',66,4);

insert into per_sin values(to_date('8/07/2020'),'Si',67,3);

insert into per_sin values(to_date('6/07/2020'),'Si',68,1);
insert into per_sin values(to_date('19/07/2020'),'No',68,4);

insert into per_sin values(to_date('4/07/2020'),'No',69,2);
insert into per_sin values(to_date('7/07/2020'),'No',69,3);
insert into per_sin values(to_date('14/07/2020'),'No',69,4);

insert into per_sin values(to_date('22/06/2020'),'Si',70,1);
insert into per_sin values(to_date('28/06/2020'),'No',70,2);
insert into per_sin values(to_date('4/07/2020'),'No',70,3);
insert into per_sin values(to_date('5/07/2020'),'No',70,4);
insert into per_sin values(to_date('8/07/2020'),'No',70,5);
insert into per_sin values(to_date('9/07/2020'),'Si',70,6);
insert into per_sin values(to_date('14/07/2020'),'Si',70,7);
insert into per_sin values(to_date('17/07/2020'),'No',70,8);

insert into per_sin values(to_date('3/07/2020'),'No',71,5);

insert into per_sin values(to_date('1/07/2020'),'No',72,2);
insert into per_sin values(to_date('6/07/2020'),'No',72,4);

insert into per_sin values(to_date('23/06/2020'),'Si',73,1);
insert into per_sin values(to_date('28/06/2020'),'Si',73,2);
insert into per_sin values(to_date('3/07/2020'),'No',73,3);
insert into per_sin values(to_date('5/07/2020'),'No',73,7);
insert into per_sin values(to_date('9/07/2020'),'No',73,3);

insert into per_sin values(to_date('4/07/2020'),'Si',74,3);
insert into per_sin values(to_date('8/07/2020'),'No',74,4);

insert into per_sin values(to_date('5/07/2020'),'No',75,1);
insert into per_sin values(to_date('12/07/2020'),'No',75,4);

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
