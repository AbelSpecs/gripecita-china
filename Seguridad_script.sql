-------CREACIÓN DE USUARIOS
create user CUENTA1 identified by CUENTA1;
grant create session to CUENTA1;
create user CUENTA2 identified by CUENTA2;
grant create session to CUENTA2;
create user CUENTA3 identified by CUENTA3;
grant create session to CUENTA3;
create user CUENTA4 identified by CUENTA4;
grant create session to CUENTA4;
create user CUENTA5 identified by CUENTA5;
grant create session to CUENTA5;
-------CREACION DE ROLES
create role Medico;
create role Aerolinea;
create role Donador;
create role Presi;
create role Servicio;
-------PRIVILEGIOS A ROLES
-----MEDICO
grant update (status_persona,fechadef_persona) on persona to Medico;
grant insert,select,update,delete on his_medico to Medico;
grant insert,select,update,delete on patologia to Medico;
grant insert,select,update,delete on per_pat to Medico;
grant insert,select,update,delete on sintoma to Medico;
grant insert,select,update,delete on per_sin to Medico;
grant select, update (camas_csalud) on centro_salud to Medico;
------AEROLINEA
grant select on lugar to Aerolinea;
grant insert,select,update,delete on per_vue to Aerolinea;
grant insert,select,update,delete on vuelo to Aerolinea;
grant select on hist_fronterizo to Aerolinea;
------DONADOR           
grant insert,select,update,delete on donacion to Donador;
grant insert,select,update on inventario to Donador;
grant select on insumos to Donador;
grant select on centro_salud to Donador;
------PRESIDENTE
grant select on lugar to Presi;
grant insert,select,update,delete on lu_ais to Presi;
grant insert,select,update,delete on aislamiento to Presi;
grant insert,select,update,delete on hist_fronterizo to Presi;
------SERVICIO
grant select on lugar to Servicio;
grant insert,select,update,delete on detalles_servicio to Servicio;
grant insert,select,update,delete on proveedor to Servicio;
--------OTORGAR ROL A CUENTA
grant Medico to CUENTA1;
grant Aerolinea to CUENTA2;
grant Donador to CUENTA3;
grant Presi to CUENTA4;
grant Servicio to CUENTA5;