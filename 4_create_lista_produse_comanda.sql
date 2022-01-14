CREATE TABLE Lista_produse_comanda (
    EntryID INT PRIMARY KEY AUTO_INCREMENT,
    Cantitate INT NOT NULL,
    ID_Produs INT NOT NULL,
    ID_Comanda INT,
    FOREIGN KEY (ID_Produs)
        REFERENCES produse (ID_Produs),
    FOREIGN KEY (ID_Comanda)
        REFERENCES comenzi (ID_Comanda)
);