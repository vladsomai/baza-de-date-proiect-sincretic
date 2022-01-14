drop procedure if exists PeakVanzari;

delimiter //
CREATE PROCEDURE PeakVanzari()
BEGIN

select convert(comenzi.DataVanzarii,date) as DataVanzariiDate, sum(lista_produse_comanda.Cantitate) as CantitateTotalaVanduta from (comenzi
inner join lista_produse_comanda on lista_produse_comanda.ID_Comanda = comenzi.ID_Comanda)
group by DataVanzariiDate
order by CantitateTotalaVanduta desc limit 1;

END;
//
delimiter ;

call PeakVanzari();