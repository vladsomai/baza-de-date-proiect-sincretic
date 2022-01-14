CREATE TABLE Produse (
    ID_Produs INT PRIMARY KEY AUTO_INCREMENT,
    Produs VARCHAR(80) NOT NULL,
    Garantie INT NOT NULL,
    Stoc INT,
    ValoareUnitara FLOAT NOT NULL,
    CONSTRAINT CheckGarantieLessThan5 CHECK (Garantie <= 5),
    CONSTRAINT CheckStocLessThan200 CHECK (Stoc <= 200)
);