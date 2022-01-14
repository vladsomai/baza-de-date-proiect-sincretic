CREATE TABLE Comenzi (
    ID_Comanda INT PRIMARY KEY AUTO_INCREMENT,
    ID_Client INT NOT NULL,
    DataVanzarii DATETIME NOT NULL,
    FOREIGN KEY (ID_Client)
        REFERENCES clienti (ID_Client)
);