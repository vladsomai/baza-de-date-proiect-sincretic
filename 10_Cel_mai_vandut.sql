drop procedure if exists BestSeller;

delimiter //
CREATE PROCEDURE BestSeller()
BEGIN

select lista_produse_comanda.ID_Produs, produse.Produs as BestSeller, sum(lista_produse_comanda.Cantitate) as CantitateTotalaVanduta from (lista_produse_comanda
inner join produse on produse.ID_Produs = lista_produse_comanda.ID_Produs)
group by lista_produse_comanda.ID_Produs
order by CantitateTotalaVanduta desc limit 1;

END;
//
delimiter ;

call BestSeller();