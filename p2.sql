declare
	cursor c1 is
	select * from emp;
	v_c1 c1%rowtype;


begin
	open c1;
	loop
	fetch c1 into v_c1;
	exit when c1%notfound;
	dbms_output.put_line('ssn: '||v_c1.ssn||' name: '||v_c1.name||' deptno: '||v_c1.deptno||' salary: '||v_c1.salary);
	dbms_output.put_line(SQL%ROWCOUNT);
	
	
	UPDATE emp
	SET salary = 1.15*salary
	WHERE deptno = 10;
	
	
	dbms_output.put_line(SQL%ROWCOUNT);
	
	
end;
/


