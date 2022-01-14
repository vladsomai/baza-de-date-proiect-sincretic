drop trigger if exists DecrementStoc;
delimiter |
 CREATE 
    TRIGGER  DecrementStoc
 AFTER INSERT ON lista_produse_comanda FOR EACH ROW 
    UPDATE produse SET Stoc = Stoc - (SELECT 
            Cantitate
        FROM
            lista_produse_comanda
        ORDER BY EntryID DESC
        LIMIT 1) WHERE
        ID_Produs = (SELECT 
                ID_Produs
            FROM
                lista_produse_comanda
            ORDER BY EntryID DESC
            LIMIT 1);
|
delimiter ;
