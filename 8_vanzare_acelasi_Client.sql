drop procedure if exists VanzareClient;

delimiter //
CREATE PROCEDURE VanzareClient(CantitateParam INT, ID_ProdusParam INT, ID_ClientParam INT)
BEGIN

insert into comenzi (ID_Client, DataVanzarii) values
(
ID_ClientParam,
now()
);

insert into lista_produse_comanda (Cantitate,ID_Produs,ID_Comanda) 
(
SELECT CantitateParam, ID_ProdusParam, ID_Comanda FROM comenzi ORDER BY ID_Comanda DESC LIMIT 1
);

END;
//
delimiter ;

call VanzareClient(1,2,1);
