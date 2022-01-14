drop procedure if exists BestClient;

delimiter //
CREATE PROCEDURE BestClient()
BEGIN

select clienti.ID_Client, clienti.Nume, clienti.Prenume, sum(lista_produse_comanda.Cantitate) as TotalProduseCumparate, sum(produse.ValoareUnitara) as TotalCheltuit from (((comenzi
inner join clienti on clienti.ID_Client = comenzi.ID_Client)
inner join lista_produse_comanda on comenzi.ID_Comanda = lista_produse_comanda.ID_Comanda)
inner join produse on lista_produse_comanda.ID_Produs = produse.ID_Produs)
group by clienti.ID_Client
order by TotalProduseCumparate desc limit 1;

END;
//
delimiter ;

call BestClient();