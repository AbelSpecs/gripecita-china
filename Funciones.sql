create or replace function edad_a (fecha_nac date) return number is
begin
    return (round(((sysdate - fecha_nac)/365),0));
end;
/
--devuleve true si lo tiene
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
/
--devuleve true si lo tiene
create or replace function comprobar_patologia (persona per_sin.pasaporte_persona_ps%type, patologia per_pat.id_patologia_pp%type) return boolean is
CURSOR patologia_persona IS select * from per_pat where pasaporte_persona_pp = persona and id_patologia_pp = patologia;
registro per_pat%rowtype;
presencia boolean := false;
begin
    open patologia_persona;
    fetch patologia_persona into registro;
    if (patologia_persona%found) then
        presencia := true;
        fetch patologia_persona into registro;
    end if;
    close patologia_persona;
    return presencia;
end;
/
create or replace function cantidad_sintomas (persona per_sin.pasaporte_persona_ps%type) return number is
cantidad number := 0;
begin
    select count(*) into cantidad from per_sin where pasaporte_persona_ps = persona;
    return cantidad;
end;
/
create or replace function cantidad_patologias (persona per_sin.pasaporte_persona_ps%type) return number is
cantidad number := 0;
begin
    select count(*) into cantidad from per_pat where pasaporte_persona_pp = persona;
    return cantidad;
end;
/


