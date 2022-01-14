drop procedure if exists RaportCumparaturi;

delimiter //
CREATE PROCEDURE RaportCumparaturi(ID_ClientParam INT)
BEGIN

select clienti.Nume, clienti.Prenume, produse.Produs, lista_produse_comanda.Cantitate, lista_produse_comanda.Cantitate * produse.ValoareUnitara as ValoareTotala from (((comenzi
inner join clienti on clienti.ID_Client = comenzi.ID_Client)
inner join lista_produse_comanda on lista_produse_comanda.ID_Comanda = comenzi.ID_Comanda)
inner join produse on produse.ID_Produs = lista_produse_comanda.ID_Produs)
where clienti.ID_Client = ID_ClientParam
order by comenzi.ID_Comanda;

END;
//
delimiter ;

call RaportCumparaturi(2);