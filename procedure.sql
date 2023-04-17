DELIMiTER $$


CREATE PROCEDURE calc(Tid varchar(10), Ano varchar(10), Ttype varchar(20), Tdate date, Tamount int)
BEGIN
	if (Ttype='D') then
		update account set balance = balance + Tamount where Ano = Ano;
	else
		update account set balance = balance - Tamount where Ano = Ano;
	end if;
END$$
DELIMITER ;		

DELIMiTER $$
CREATE PROCEDURE check(Atype varchar(10), balance int)
BEGIN	
	if(Atype='S'&& balance < 2000) then
		DBMS_OUTPUT.PUT_LINE( 'Dont have Minimum Balance(SAVINGS)' );
	else 
		
	if(Atype='C'&& balance > 5000) then
		DBMS_OUTPUT.PUT_LINE( 'Dont have Minimum Balance(CURRENT)' );

DELIMITER ;	


CALL calc('T01', 'A01', 'w', '2019-01-01', 2000);
drop procedure calc;