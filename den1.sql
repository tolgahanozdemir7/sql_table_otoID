
CREATE TABLE Gruplar (
    GrupID INT PRIMARY KEY,
    GrupAd VARCHAR(100) NOT NULL
);
CREATE TABLE Stadlar (
    
    StadID INT PRIMARY KEY,
    StadAd VARCHAR(100) NOT NULL,
    Kapasite INT
);
CREATE TABLE Takimlar (
    TakimID INT PRIMARY KEY,
    TakimAd VARCHAR(100) NOT NULL,
    GrupID INT,
    FOREIGN KEY (GrupID) REFERENCES Gruplar(GrupID)
);
CREATE TABLE Maclar (
    MacID INT PRIMARY KEY,
    Takim1ID INT,
    Takim2ID INT,
    MacTarihi DATE,
    FOREIGN KEY (Takim1ID) REFERENCES Takimlar(TakimID),
    FOREIGN KEY (Takim2ID) REFERENCES Takimlar(TakimID)
);
insert into stadlar values(2345,'abc',1000);
insert into stadlar values(2123,'abcd',1001);

select *FROM Stadlar;

CREATE TABLE kisiler (
    kisi_id NUMBER PRIMARY KEY,
    ad VARCHAR2(50),
    soyad VARCHAR2(50),
    dogtar DATE,
    CONSTRAINT dmg3 CHECK (EXTRACT(YEAR FROM dogtar) < 1999)
);
select *from kisiler;
insert into kisiler values(1, 'abcd', 'ab', TO_DATE('2000-01-01', 'YYYY-MM-DD'));
-- guncellleme yapma
UPDATE kisiler 
SET dogtar = TO_DATE('1000-01-01', 'YYYY-MM-DD') 
WHERE kisi_id = 1;

/* Kýsýtlamalarýn Sonradan Eklenmesi
Alter Table ogrenci
Add Constraint dmg1 Primary Key(Ogr_Id);
*/

/*  Kýsýtlamalarýn Kaldýrýlmasý
Alter Table ogrenci
Drop Constraint dmg3;
*/

DECLARE
    v_message VARCHAR2(50);
BEGIN
    v_message := 'Merhaba, PL/SQL!';
    DBMS_OUTPUT.PUT_LINE(v_message);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Bir hata oluþtu.');
END;


CREATE SEQUERENCE otomatikid
INCREMENT BY 1
START WÝTH 1
MAXVALUE 10
NOCYLE
NOCACHE;
INSERT INTO STADLAR VALUES(otomatikid.StadID,'abcc',1003)

select 