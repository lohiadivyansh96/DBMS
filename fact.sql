set serveroutput on;

create or replace PROCEDURE fact as
n number;
i number;
fac number:=1;

BEGIN
n:=5;
for i in 1..n
loop
fac:=fac * i;
end loop;

dbms_output.put_line('Factorial of '|| n || ' is: '|| fac);

end;
/

execute fact;
