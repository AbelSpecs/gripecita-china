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

--SINTOMA
insert into sintoma values (1, 'Fiebre');
insert into sintoma values (2, 'Cansancio');
insert into sintoma values (3, 'Tos seca');
insert into sintoma values (4, 'Dolores');
insert into sintoma values (5, 'Congestion nasal');
insert into sintoma values (6, 'Rinorrea');
insert into sintoma values (7, 'Dolor de garganta');
insert into sintoma values (8, 'Diarrea');

--PATOLOGIA
insert into patologia values (1, 'Sindrome respiratorio de Oriente Medio');
insert into patologia values (2, 'Sindrome respiratorio agudo severo');
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
insert into donacion values (1, to_date('10/03/2020','DD/MM/YYYY'), 'Mascarillas', 100000, 1000000, 2, 1);
insert into donacion values (2, to_date('10/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 20000, 20000000, 2, 1);
insert into donacion values (3, to_date('10/03/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 2, 1);
insert into donacion values (4, to_date('10/05/2020','DD/MM/YYYY'), 'Mascarillas', 100000, 1000000, 2, 1);
insert into donacion values (5, to_date('10/05/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 5000, 500000, 2, 1);
insert into donacion values (6, to_date('10/05/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 2, 1);
--ESTADOS UNIDOS A BRASIL
insert into donacion values (7, to_date('15/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 3);
insert into donacion values (8, to_date('15/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 3);
insert into donacion values (9, to_date('01/06/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 3);
insert into donacion values (10, to_date('01/06/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 2, 3);
insert into donacion values (11, to_date('01/06/2020','DD/MM/YYYY'), 'Alcohol', 100000, 100000, 2, 3);
--ESTADOS UNIDOS A MEXICO
insert into donacion values (12, to_date('01/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 4);
insert into donacion values (13, to_date('01/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 4);
insert into donacion values (14, to_date('01/02/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 2, 4);
insert into donacion values (15, to_date('01/02/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 2, 4);
insert into donacion values (16, to_date('15/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 4);
insert into donacion values (17, to_date('15/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 4);
insert into donacion values (18, to_date('15/04/2020','DD/MM/YYYY'), 'Gel antibacterial', 100000, 100000, 2, 4);
insert into donacion values (19, to_date('15/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 2, 4);
--ESTADOS UNIDOS A ESPAÑA
insert into donacion values (20, to_date('22/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 5);
insert into donacion values (21, to_date('22/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 5);
insert into donacion values (22, to_date('22/02/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 2, 5);
insert into donacion values (23, to_date('22/02/2020','DD/MM/YYYY'), 'Termometros', 20000, 40000, 2, 5);
insert into donacion values (24, to_date('11/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 2, 5);
insert into donacion values (25, to_date('11/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 2, 5);
insert into donacion values (26, to_date('11/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 2, 5);
insert into donacion values (27, to_date('11/04/2020','DD/MM/YYYY'), 'Termometros', 20000, 40000, 2, 5);
--ESPAÑA A VENEZUELA
insert into donacion values (28, to_date('12/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 1);
insert into donacion values (29, to_date('12/03/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 1);
insert into donacion values (30, to_date('12/03/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 1);
insert into donacion values (31, to_date('12/03/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 5, 1);
insert into donacion values (32, to_date('18/05/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 1);
insert into donacion values (33, to_date('18/05/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 1);
insert into donacion values (34, to_date('18/05/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 1);
insert into donacion values (35, to_date('18/05/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 5, 1);
--ESPAÑA A ESTADOS UNIDOS
insert into donacion values (36, to_date('27/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 2);
insert into donacion values (37, to_date('27/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 2);
insert into donacion values (38, to_date('27/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 2);
insert into donacion values (39, to_date('27/04/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 5, 2);
insert into donacion values (40, to_date('05/05/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 2);
insert into donacion values (41, to_date('05/05/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 2);
insert into donacion values (42, to_date('05/05/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 2);
insert into donacion values (43, to_date('05/05/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 5, 2);
--ESPAÑA A MEXICO
insert into donacion values (44, to_date('01/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 4);
insert into donacion values (45, to_date('01/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 4);
insert into donacion values (46, to_date('01/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 4);
insert into donacion values (47, to_date('01/06/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 5, 4);
insert into donacion values (48, to_date('01/06/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 5, 4);
insert into donacion values (49, to_date('01/06/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 5, 4);
--BRASIL A ESTADOS UNIDOS
insert into donacion values (50, to_date('30/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 3, 2);
insert into donacion values (51, to_date('30/03/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 3, 2);
--BRASIL A VENEZUELA
insert into donacion values (52, to_date('27/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 3, 1);
insert into donacion values (53, to_date('27/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 3, 1);
insert into donacion values (54, to_date('27/02/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 3, 4);
--MEXICO A VENEZUELA
insert into donacion values (55, to_date('18/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 1);
insert into donacion values (56, to_date('18/03/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 4, 1);
insert into donacion values (57, to_date('18/03/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 4, 1);
insert into donacion values (58, to_date('18/03/2020','DD/MM/YYYY'), 'Alcohol', 200000, 1000000, 4, 1);
insert into donacion values (59, to_date('18/03/2020','DD/MM/YYYY'), 'Gorros descartables', 200000, 1000000, 4, 1);
--MEXICO A ESTADOS UNIDOS
insert into donacion values (60, to_date('03/03/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 2);
insert into donacion values (61, to_date('03/03/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 4, 2);
--MEXICO A BRASIL
insert into donacion values (62, to_date('15/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 3);
insert into donacion values (63, to_date('15/04/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 4, 3);
insert into donacion values (64, to_date('15/04/2020','DD/MM/YYYY'), 'Termometros', 20000, 40000, 4, 3);
--MEXICO A ESPAÑA
insert into donacion values (65, to_date('17/02/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 4, 5);
insert into donacion values (66, to_date('17/02/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 4, 5);
insert into donacion values (67, to_date('17/02/2020','DD/MM/YYYY'), 'Guantes quirurgicos', 50000, 500000, 4, 5);
--VENEZUELA A MEXICO
insert into donacion values (68, to_date('15/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 1, 4);
insert into donacion values (69, to_date('15/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 1, 4);
--VENEZUELA A BRASIL
insert into donacion values (70, to_date('15/04/2020','DD/MM/YYYY'), 'Pruebas de deteccion de COVID', 15000, 1500000, 1, 3);
insert into donacion values (71, to_date('15/04/2020','DD/MM/YYYY'), 'Mascarillas',100000, 1000000, 1, 3);
