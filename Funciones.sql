/
create or replace function edad (fecha_nac date) return number is
begin
    return (round(((sysdate - fecha_nac)/365),0));
end;
/