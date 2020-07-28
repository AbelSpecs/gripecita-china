---OBJETOS-----
create or replace type identificacion as object(
imagen blob,
nombre varchar2(30)
);
/
create or replace type direccion as object(
avenida1 varchar2(50),
avenida2 varchar2(50),
urbanizacion varchar2(50)
);
/
----TABLAS------
create table lugar(
    id_lugar number primary key not null,
    identificacion_lugar identificacion,
    tipo_lugar varchar2(25) not null,
    poblacion_lugar number not null,
    id_lugar_lugar number,
    constraint fk_lugar_lugar foreign key(id_lugar_lugar) references lugar(id_lugar),
    constraint ck_tipo_lugar check(tipo_lugar in ('Pais', 'Estado', 'Ciudad'))
);
/
create table hist_fronterizo(
    fechai_histf timestamp not null,
    fechaf_histf timestamp,
    id_lugar_histf number not null,
    constraint pk_histf primary key(fechai_histf,id_lugar_histf),
    constraint fk_lugar_histf foreign key(id_lugar_histf) references lugar(id_lugar)
);
/
create table aislamiento(
    id_aislamiento number constraint PK_aislamiento primary key,
    nombre_aislamiento varchar2(100) not null,
    tipo_aislamiento number not null,
    constraint CK_tipo_aislamiento check(tipo_aislamiento in (1,2,3,4))
);
/
create table lu_ais(
fechai_la timestamp not null,
fechaf_la timestamp,
id_lugar_la number not null,
id_aislamiento_la number not null,
constraint pk_la primary key(fechai_la,id_lugar_la,id_aislamiento_la),
constraint fk_lugar_la foreign key(id_lugar_la) references lugar(id_lugar),
constraint fk_aislamiento_la foreign key(id_aislamiento_la) references aislamiento(id_aislamiento)
);
/
create table proveedor(
id_proveedor number constraint PK_proveedor primary key,
identificacion_proveedor identificacion,
velocidad_subida_proveedor number not null,
velocidad_bajada_proveedor number not null
);
/
create table detalle_servicio(
fecha_ds timestamp not null,
velocidad_subida_ds number not null,
velocidad_bajada_ds number not null,
horas_interrupcion_ds number,
id_lugar_ds number not null,
id_proveedor_ds number not null,
constraint pk_detalleServicio primary key(fecha_ds,id_lugar_ds,id_proveedor_ds),
constraint fk_lugar_ds foreign key(id_lugar_ds) references lugar(id_lugar),
constraint fk_proveedor_ds foreign key(id_proveedor_ds) references proveedor(id_proveedor)
);
/
create table vuelo(
numero_vuelo number not null,
identificacion_aerolinea identificacion,
fechai_vuelo timestamp not null,
fechaf_vuelo timestamp,
id_lugar_llegada_vuelo number not null,
id_lugar_salida_vuelo number not null,
constraint pk_vuelo primary key(numero_vuelo,id_lugar_llegada_vuelo,id_lugar_salida_vuelo),
constraint fk_lugar_llegada_vuelo foreign key(id_lugar_llegada_vuelo) references lugar(id_lugar),
constraint fk_lugar_salida_vuelo foreign key(id_lugar_salida_vuelo) references lugar(id_lugar)
);
/
create table persona(
    pasaporte_persona number constraint PK_Persona primary key,
    nombre1_persona varchar2(25) not null,
    nombre2_persona varchar2(25),
    apellido1_persona varchar2(25) not null,
    apellido2_persona varchar2(25) not null,
    fechanac_persona timestamp not null,
    genero_persona char(1) not null,
    foto_persona blob,
    status_persona varchar2(25) not null,
    fechadef_persona timestamp,
    status_aislado_persona varchar2(25),
    id_lugar_persona number not null,
    constraint fk_lugar_persona foreign key(id_lugar_persona) references lugar(id_lugar),
    constraint CK_Genero check(genero_persona in ('F', 'M')),
    constraint CK_status_persona check (status_persona in ('Infectado', 'Sano', 'Aislado', 'Recuperado'))
);
 /
create table per_vue(
pasaporte_persona_pv number not null,
numero_vuelo_pv number not null,
id_lugar_llegada_vuelo_pv number not null,
id_lugar_salida_vuelo_pv number not null,
constraint pk_pv primary key(pasaporte_persona_pv,numero_vuelo_pv,id_lugar_llegada_vuelo_pv,id_lugar_salida_vuelo_pv),
constraint fk_vuelo_pv foreign key(numero_vuelo_pv,id_lugar_llegada_vuelo_pv,id_lugar_salida_vuelo_pv) references vuelo(numero_vuelo,id_lugar_llegada_vuelo,id_lugar_salida_vuelo),
constraint fk_persona_pv foreign key(pasaporte_persona_pv) references persona(pasaporte_persona)
);
/
create table sintoma(
    id_sintoma number constraint PK_Sintoma primary key,
    nombre_sintoma varchar2(30) not null
);
 /
create table per_sin(
fecisintoma_ps timestamp not null,
atencionmedica_ps varchar2(2) not null,
pasaporte_persona_ps number not null,
id_sintoma_ps number not null,
constraint pk_ps primary key(fecisintoma_ps,pasaporte_persona_ps,id_sintoma_ps),
constraint fk_persona_ps foreign key(pasaporte_persona_ps) references persona(pasaporte_persona),
constraint fk_sintoma_ps foreign key(id_sintoma_ps) references sintoma(id_sintoma),
constraint ck_atencionmedica_ps check(atencionmedica_ps in ('Si','No'))    
);
/
create table patologia(
    id_patologia number constraint PK_Patologia primary key,
    nombre_patologia varchar2(40) not null
);
/
create table per_pat(
pasaporte_persona_pp number not null,
id_patologia_pp number not null,
constraint pk_pp primary key(pasaporte_persona_pp,id_patologia_pp),
constraint fk_persona_pp foreign key(pasaporte_persona_pp) references persona(pasaporte_persona),
constraint fk_patologia_pp foreign key(id_patologia_pp) references patologia(id_patologia)
);
/
create table centro_salud(
    id_csalud number constraint PK_CentroSalud primary key,
    nombre_csalud varchar2(50) not null,
    direccion_csalud direccion,
    tipo_csalud varchar2(8) not null,
    camas_csalud number not null,
    id_lugar_csalud number not null,
    constraint fk_lugar_csalud foreign key(id_lugar_csalud) references lugar(id_lugar),
    constraint CK_tipo_CS check (tipo_csalud in ('Hospital', 'Clinica'))
);
/
create table his_medico(
pasaporte_persona_histm number not null,
id_csalud_histm number not null,
fecasistencia_histm timestamp not null,
feciinicialingreso_histm timestamp,
fecfinalingreso_histm timestamp,
constraint pk_histm primary key(pasaporte_persona_histm,id_csalud_histm),
constraint fk_persona_histm foreign key(pasaporte_persona_histm) references persona(pasaporte_persona),
constraint fk_csalud_histm foreign key(id_csalud_histm) references centro_salud(id_csalud)
);
/
create table insumo(
    id_insumo number constraint PK_insumo primary key,
    nombre_insumo varchar2(30) not null
);
/
create table donacion(
id_donacion number constraint PK_donacion primary key,
fecha_donacion timestamp not null,
insumo_donacion varchar2(100) not null,
cantidad_donacion number not null,
monto_donacion number,
id_lugar_recibe_donacion number not null,
id_lugar_ofrece_donacion number not null,
constraint fk_lugar_rec_donacion foreign key(id_lugar_recibe_donacion) references lugar(id_lugar),
constraint fk_lugar_ofr_donacion foreign key(id_lugar_ofrece_donacion) references lugar(id_lugar)
);
/
create table inventario(
id_csalud_inventario number not null,
id_insumo_inventario number not null,
cantidad_inventario number not null,
id_donacion_inventario number,
constraint pk_inventario primary key(id_csalud_inventario,id_insumo_inventario),
constraint fk_csalud_inventario foreign key(id_csalud_inventario) references centro_salud(id_csalud),
constraint fk_insumo_inventario foreign key(id_insumo_inventario) references insumo(id_insumo),
constraint fk_donacion_inventario foreign key(id_donacion_inventario) references donacion(id_donacion)
); 
/
-- Tabla temporal para el reporte 4
CREATE TABLE temporal_reporte4(
        "Foto" blob,
        "Estado" varchar2(100),
        "Poblacion" number,
        "Cantidad Infectados" number,
        "% Infectados" float,
        "Cantidad Recuperados" number,
        "% Recuperados" float, 
        "Cantidad Fallecidos" number,
        "% Fallecidos" float
    );
/
-- Tabla temporal para el reporte 9
CREATE TABLE tmp_reporte_9(
    fecha timestamp null,
    origne_name varchar2(100) null,
    destino_name varchar2(100) null,
    origen number null,
    destino number null,
    monto number null,
    insumos varchar2(2000) null,
    origen_foto blob null,
    destino_foto blob null
);
/
-- Tabla temporal para el reporte 12
create table tmp_reporte_12 (
    foto_pais blob null,
    foto_proveedor blob null,
    fecha timestamp null,
    prom_bajada number null,
    prom_subida number null,
    horas_int number null,
    id_pais number null,
    id_proveedor number null
);