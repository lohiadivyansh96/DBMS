declare
	cursor c1 is
	select * from branch;
	v_c1 c1%rowtype;
	cursor c2 is
	select * from customer;
	v_c2 c2%rowtype;
	cursor c3 is
	select * from account;
	v_c3 c3%rowtype;

begin
	open c1;
	loop
	fetch c1 into v_c1;
	exit when c1%notfound;
	dbms_output.put_line('code: '||v_c1.code||' name: '||v_c1.name||' assets: '||v_c1.assets);
	
	end loop;
	
	--updation--
	
	UPDATE customer
	SET name = 'Ram'
	WHERE ssn = 1;
	
	close c1;
	
	open c2;
	loop
	fetch c2 into v_c2;
	exit when c2%notfound;
	dbms_output.put_line('ssn: '||v_c2.ssn||' name: '||v_c2.name||' place: '||v_c2.place);
	
	end loop;
	close c2;
	
	open c3;
	loop
	fetch c3 into v_c3;
	exit when c3%notfound;
	dbms_output.put_line('accno:' ||v_c3.accno||' code: '||v_c3.code||' ssn: '||v_c3.ssn||' balance: '||v_c3.balance);
	
	
	
	UPDATE account
	SET balance = 100000
	WHERE ssn = 3;
	
	end loop;
	close c3;
	
end;
/
