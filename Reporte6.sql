---REPORTE 6
--OBJETOS
create or replace type infeccionesD as object(
fecha date,
nombre varchar2(30),
nombreMex varchar2(30),
nombreUsa varchar2(30),
nombreVen varchar2(30),
nombreBra varchar2(30),
nombreEsp varchar2(30), 
imagen blob,
imagenMex blob,
imagenUsa blob,
imagenVen blob,
imagenBra blob,
imagenEsp blob,
infecciones number,
infeccion_Mex number,
infeccion_Usa number,
infeccion_Ven number,
infeccion_Bra number,
infeccion_Esp number
);
/
create or replace type fi2 as table of infeccionesD;
/
create or replace function Infections2(fechai date, fechaf date,pais varchar2) return fi2
is
    fechaIn fi2:= fi2();
   -- Qpob number;
   -- nombreP varchar2(30);
    imagenP blob;
    pInfectada number:=0;
    dias number;
    fechaD date;
    
    nombreM varchar2(30);
    nombreU varchar2(30);
    nombreV varchar2(30);
    nombreB varchar2(30);
    nombreE varchar2(30);
    imagenM blob;
    imagenU blob;
    imagenV blob;
    imagenB blob;
    imagenE blob;
    
    pInfectadaM number;
    pInfectadaU number;
    pInfectadaV number;
    pInfectadaB number;
    pInfectadaE number;
begin
    if(pais is not null) then

        select l.identificacion_lugar.imagen into imagenP 
        from lugar l where l.identificacion_lugar.nombre = pais;
        --Qpob:= Qpob*0.25;
        
        select round(to_date(fechaf,'DD-MM-YYYY') - to_date(fechai,'DD-MM-YYYY'),0) into dias from dual;
        fechaIn.extend(dias);
        fechaD:= fechai;
    
        for i in 1..dias loop
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectada 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = pais and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
           -- pInfectada:= round(DBMS_RANDOM.value(1,Qpob),0);
           -- fechaIn(i).fecha:= fechaD;
           -- fechaIn(i).infeccion:= pInfectada;
           
           if(i = dias) then
                fechaIn(i):= infeccionesD(fechaD,pais,null,null,null,null,null,imagenP,null,null,null,null,null
                ,pInfectada,null,null,null,null,null); 
                fechaD:= fechaD +1;
           else 
                fechaIn(i):= infeccionesD(fechaD,pais,null,null,null,null,null,null,null,null,null,null,null
                ,pInfectada,null,null,null,null,null); 
                fechaD:= fechaD +1; 
           end if;    
        end loop; 
        
    end if;
    
    if(pais is null) then 
        
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreM,imagenM  
        from lugar l where l.identificacion_lugar.nombre = 'Mexico';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreU,imagenU  
        from lugar l where l.identificacion_lugar.nombre = 'Estados Unidos';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreV,imagenV  
        from lugar l where l.identificacion_lugar.nombre = 'Venezuela';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreB,imagenB  
        from lugar l where l.identificacion_lugar.nombre = 'Brasil';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen into nombreE,imagenE  
        from lugar l where l.identificacion_lugar.nombre = 'Espana'; 
        
        
        select round(to_date(fechaf,'DD-MM-YYYY') - to_date(fechai,'DD-MM-YYYY'),0) into dias from dual;
        fechaIn.extend(dias);
        fechaD:= fechai;
        
        for i in 1..dias loop
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaV 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Venezuela' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaB 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Brasil' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaE 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Espana' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaM 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Mexico' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            select count(*)/*p.pasaporte_persona, l3.id_lugar, cs.id_csalud */ into pInfectadaU 
            from persona p, lugar l, lugar l2, lugar l3, centro_salud cs, his_medico hm 
            where p.status_persona = 'Infectado' 
            and p.id_lugar_persona = l3.id_lugar 
            and l.identificacion_lugar.nombre = 'Estados Unidos' and l.id_lugar = l2.id_lugar_lugar and l2.id_lugar = l3.id_lugar_lugar
            and l.tipo_lugar ='Pais' and l2.tipo_lugar = 'Estado' and l3.tipo_lugar = 'Ciudad' and cs.id_lugar_csalud = l3.id_lugar 
            and hm.id_csalud_histm = cs.id_csalud and hm.pasaporte_persona_histm = p.pasaporte_persona 
            and hm.feciinicialingreso_histm = fechaD;
            
            
            if(i = dias) then
                fechaIn(i):= infeccionesD(fechaD,null,nombreM,nombreU,nombreV,nombreB,nombreE,null,imagenM,imagenU,imagenV,imagenB,
                imagenE,null,pInfectadaM,pInfectadaU,pInfectadaV,pInfectadaB,pInfectadaE); 
                fechaD:= fechaD +1;
            else 
                fechaIn(i):= infeccionesD(fechaD,null,nombreM,nombreU,nombreV,nombreB,nombreE,null,null,null,null,null,
                null,null,pInfectadaM,pInfectadaU,pInfectadaV,pInfectadaB,pInfectadaE); 
                fechaD:= fechaD +1; 
            end if;    
        end loop; 
    end if;    
    return fechaIn;
end;
/
----PROCEDIMIENTO LLAMADO POR JASPER
create or replace procedure Grafico(p_cursor OUT sys_refcursor,Pais Varchar2, fechai date, fechaf date)
is    
begin  
    if(Pais is not null) then
       Open p_cursor 
       for select t.fecha,t.nombre,t.nombreMex,t.nombreUsa,t.nombreVen,t.nombreBra,t.nombreEsp,t.imagen,t.imagenMex,t.imagenUsa,
       t.imagenVen,t.imagenBra,t.imagenEsp,t.infecciones,t.infeccion_Mex,t.infeccion_Usa,t.infeccion_Ven,
       t.infeccion_Bra,t.infeccion_Esp
       from table(Covid.Infections2(fechai,fechaf,Pais)) t;
    --end if;
    elsif(Pais is null) then  
        Open p_cursor 
        for select t.fecha,t.nombre,t.nombreMex,t.nombreUsa,t.nombreVen,t.nombreBra,t.nombreEsp,t.imagen,t.imagenMex,t.imagenUsa,
        t.imagenVen,t.imagenBra,t.imagenEsp,t.infecciones,t.infeccion_Mex,t.infeccion_Usa,t.infeccion_Ven,
        t.infeccion_Bra,t.infeccion_Esp
        from table(Covid.Infections2(fechai,fechaf,Pais)) t;
    end if;
end Grafico;
