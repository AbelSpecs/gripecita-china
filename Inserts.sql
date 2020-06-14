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
insert into lugar values (23, identificacion(null, 'La Candelaria'), 'Ciudad', 1000000, 8);
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
insert into proveedor values (5, identificacion(null, 'T'-Online), 5, 10);
insert into proveedor values (6, identificacion(null, 'UOL'), 8, 8);
insert into proveedor values (7, identificacion(null, 'Unitel' ), 7, 7);
insert into proveedor values (8, identificacion(null, 'Earthlink' ), 100, 100);
insert into proveedor values (9, identificacion(null, 'AT'&T), 50, 50);
insert into proveedor values (10, identificacion(null, 'GTT'), 20, 50);
insert into proveedor values (11, identificacion(null, 'T-Mobile'), 30, 20);
insert into proveedor values (12, identificacion(null, 'Global Telecom'), 20, 25);
insert into proveedor values (13, identificacion(null, 'Deutsche Telekom'), 50, 40);
insert into proveedor values (14, identificacion(null, 'KPN International'), 70, 30);
insert into proveedor values (15, identificacion(null, 'Orange'), 50, 50);

--SINTOMA
insert into sintoma values (1, '');
insert into sintoma values (, '');
insert into sintoma values (, '');
insert into sintoma values (, '');
insert into sintoma values (, '');
insert into sintoma values (, '');
insert into sintoma values (, '');
insert into sintoma values (, '');