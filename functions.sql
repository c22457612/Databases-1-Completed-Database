create or REPLACE function fn_mid1(varchar,integer,integer) 
returns varchar
as 
$$      --dollars block source code
declare word ALIAS for $1; --word
    startPos Alias for $2; --starting position
    cnt ALIAS for $3; --count
begin
    return substring(word,startPos,cnt);
end
$$
language plpgsql;

select *from fn_mid1('software',1,4) --string,start,how long we go on for