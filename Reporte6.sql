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
    Qpob number;
    nombreP varchar2(30);
    imagenP blob;
    pInfectada number;
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
    QpobM number;
    QpobU number;
    QpobV number;
    QpobB number;
    QpobE number;
    pInfectadaM number;
    pInfectadaU number;
    pInfectadaV number;
    pInfectadaB number;
    pInfectadaE number;
begin
    if(pais is not null) then

        select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen,l.poblacion_lugar into nombreP,imagenP,Qpob  
        from lugar l where l.identificacion_lugar.nombre = pais;
        Qpob:= Qpob*0.25;
        select round(to_date(fechaf,'DD-MM-YYYY') - to_date(fechai,'DD-MM-YYYY'),0) into dias from dual;
        fechaIn.extend(dias);
        fechaD:= fechai;
    
        for i in 1..dias loop
            pInfectada:= round(DBMS_RANDOM.value(1,Qpob),0);
           -- fechaIn(i).fecha:= fechaD;
           -- fechaIn(i).infeccion:= pInfectada;
           
           if(i = dias) then
                fechaIn(i):= infeccionesD(fechaD,nombreP,null,null,null,null,null,imagenP,null,null,null,null,null
                ,pInfectada,null,null,null,null,null); 
                fechaD:= fechaD +1;
           else 
                fechaIn(i):= infeccionesD(fechaD,nombreP,null,null,null,null,null,null,null,null,null,null,null
                ,pInfectada,null,null,null,null,null); 
                fechaD:= fechaD +1; 
           end if;    
        end loop; 
        
    end if;
    
    if(pais is null) then 
        
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen,l.poblacion_lugar into nombreM,imagenM,QpobM  
        from lugar l where l.identificacion_lugar.nombre = 'Mexico';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen,l.poblacion_lugar into nombreU,imagenU,QpobU  
        from lugar l where l.identificacion_lugar.nombre = 'Estados Unidos';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen,l.poblacion_lugar into nombreV,imagenV,QpobV  
        from lugar l where l.identificacion_lugar.nombre = 'Venezuela';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen,l.poblacion_lugar into nombreB,imagenB,QpobB  
        from lugar l where l.identificacion_lugar.nombre = 'Brasil';
       select l.identificacion_lugar.nombre,l.identificacion_lugar.imagen,l.poblacion_lugar into nombreE,imagenE,QpobE  
        from lugar l where l.identificacion_lugar.nombre = 'España'; 
        
        QpobM:= QpobM*0.25;
        QpobU:= QpobU*0.25;
        QpobV:= QpobV*0.25;
        QpobB:= QpobB*0.25;
        QpobE:= QpobE*0.25;
        select round(to_date(fechaf,'DD-MM-YYYY') - to_date(fechai,'DD-MM-YYYY'),0) into dias from dual;
        fechaIn.extend(dias);
        fechaD:= fechai;
        
        for i in 1..dias loop
            pInfectadaM:= round(DBMS_RANDOM.value(1,QpobM),0);
            pInfectadaU:= round(DBMS_RANDOM.value(1,QpobU),0);
            pInfectadaV:= round(DBMS_RANDOM.value(1,QpobV),0);
            pInfectadaB:= round(DBMS_RANDOM.value(1,QpobB),0);
            pInfectadaE:= round(DBMS_RANDOM.value(1,QpobE),0);
            
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