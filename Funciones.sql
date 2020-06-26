/
create or replace function edad (fecha_nac date) return number is
begin
    return (round(((sysdate - fecha_nac)/365),0));
end;
/
create or replace function comprobar_sintoma (persona per_sin.pasaporte_persona_ps%type, sintoma per_sin.id_sintoma_ps%type) return boolean is
CURSOR sintoma_persona IS select * from per_sin where pasaporte_persona_ps = persona and id_sintoma_ps = sintoma;
registro per_sin%rowtype;
presencia boolean := false;
begin
    open sintoma_persona;
    fetch sintoma_persona into registro;
    if (sintoma_persona%found) then
        presencia := true;
        fetch sintoma_persona into registro;
    end if;
    close sintoma_persona;
    return presencia;
end;