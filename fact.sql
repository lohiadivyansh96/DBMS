declare
    n number;
    fac number:=1;
    i number;
 
begin
    n:=&n;
 
    for i in 1..n
    loop
        fac:=fac*i;
    end loop;
 
    dbms_output.put_line('factorial='||fac);
end;
/
