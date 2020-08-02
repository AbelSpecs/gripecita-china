set serveroutput on;
--CREAR USUARIO O CUENTA
create or replace procedure CUsuario(nameU varchar2)
is
    usuario varchar2(500);
    privi varchar2(200);
begin
    usuario := ' create user "' || nameU || '" identified by "' || nameU || '" ';
    privi:= ' grant create session to "' || nameU || '" '; 
    execute immediate usuario;
    execute immediate privi;
    dbms_output.put_line('Usuario creado correctamente');
end CUsuario;
/

----BORRAR USUARIO O CUENTA
create or replace procedure DUsuario(nameU varchar2)
is
   usuario varchar2(500); 
begin
    usuario := ' drop user "' || nameU || '" ';
    execute immediate usuario;
    dbms_output.put_line('Usuario eliminado correctamente');
end DUsuario;
/

--------OTORGAR PRIVILEGIOS A USUARIO O CUENTA
create or replace procedure GrantPU(nameU varchar2, priv varchar2, tabla varchar2)
is
    privi varchar2(500);
begin
    privi:= ' grant '|| priv || ' on ' || tabla || ' to ' || nameU;
    DBMS_OUTPUT.PUT_LINE(privi);
    execute immediate privi;
    dbms_output.put_line('Privilegio granteado correctamente');
end GrantPU;
/

---QUITAR PRIVILEGIOS A CUENTA O USUARIO
create or replace procedure RevokePU(nameU varchar2, priv varchar2, tabla varchar2)
is
   privi varchar2(500); 
begin
    privi:= ' revoke '|| priv || ' on ' || tabla || ' from ' || nameU;
    DBMS_OUTPUT.PUT_LINE(privi);
    execute immediate privi;
    dbms_output.put_line('Privilegio revocado correctamente');
end RevokePU;
/

----CREAR ROLES
create or replace procedure CRols(nameR varchar2)
is
    r varchar2(100);
begin
    r:= ' create role ' || nameR;
    execute immediate r;
    dbms_output.put_line('Rol o Roles creados correctamente');
end CRols;
/

----ELIMINAR ROL
create or replace procedure DRols(nameR varchar2)
is
    r varchar2(100);
begin
    r:= ' drop role ' || nameR;
    execute immediate r;
    dbms_output.put_line('Rol o Roles dropeados correctamente');
end DRols;
/

------ OTORGAR PRIVILEGIOS A ROLES
create or replace procedure PrivR(priv varchar2, nameR varchar2, tabla varchar2)
is
    privi varchar2(200);
begin
    privi:= ' grant '|| priv || ' on ' || tabla || ' to ' || nameR;
    execute immediate privi;
    dbms_output.put_line('Privilegio otorgado correctamente');
end PrivR;
/

------QUITAR PRIVILEGIOS A ROLES
create or replace procedure Rpriv(priv varchar2, nameR varchar2, tabla varchar2)
is
    privi varchar2(100);
begin
    privi:= ' revoke '|| priv || ' on ' || tabla || ' from ' || nameR;
    execute immediate privi;
    dbms_output.put_line('Privilegio revocado correctamente');
end Rpriv;
/

----ASIGNAR ROL A CUENTA O USUARIO
create or replace procedure Asigna(rl varchar2, ur varchar2)
is
    op varchar2(100);
begin
    op:= ' grant ' || rl || ' to ' || ur;
    execute immediate op;
    dbms_output.put_line('Rol asignado correctamente');
end Asigna;
/

----REVOCAR ROL A CUENTA
create or replace procedure Revoca(rl varchar2, ur varchar2)
is
    op varchar2(100);
begin
    op:= ' revoke ' || rl || ' from ' || ur;
    execute immediate op;
    dbms_output.put_line('Rol revocado correctamente');
end Revoca;
/


---PRINCIPAL

declare
    --op number:= 0;
    u varchar2(100);
    p varchar2(200);
    t varchar2(200);
    r varchar2(100);
begin
    
   u:= '&x';
  --  p:= '&p';
   -- t:= '&t';
  --  r:= '&r';
    CUsuario(u);
  --  GrantP(u,p,t);
   --RevokeP(u,p,t);
   --CRols(r);
  -- PrivR(p,r,t);
  -- Rpriv(p,r,t);
  --  Asigna(r,u);
   
end;


--select * from DBA_SYS_PRIVS where grantee = 'MEDICO';




