
insert into comenzi (ID_Client, DataVanzarii) values
(
2,
now()
);

insert into lista_produse_comanda (Cantitate,ID_Produs,ID_Comanda) 
(
SELECT 25,1,ID_Comanda FROM comenzi ORDER BY ID_Comanda DESC LIMIT 1
);

insert into lista_produse_comanda (Cantitate,ID_Produs,ID_Comanda) 
(
SELECT 20,2,ID_Comanda FROM comenzi ORDER BY ID_Comanda DESC LIMIT 1
);

insert into lista_produse_comanda (Cantitate,ID_Produs,ID_Comanda) 
(
SELECT 10,3,ID_Comanda FROM comenzi ORDER BY ID_Comanda DESC LIMIT 1
);


