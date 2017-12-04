declare  
cursor cur is select * from part10; 
counter int; 
rows part10%rowtype; 
begin 
open cur; 
loop 
fetch cur into rows; 
exit when cur%notfound; 
insert into copy_p10 values(rows.pno,rows.pname,rows.colour); 
end loop; 
counter :=cur%rowcount; 
close cur; 
dbms_output.put_line(counter||'rows inserted into the table copy_p10'); 
end ;
/
