CREATE TABLE patients_new (
    pati_id    NUMBER,
    names_     VARCHAR2(50),
    t_names    VARCHAR2(50),
    births    DATE,
    gens      VARCHAR2(10),
    addres    VARCHAR2(100),
    phones     VARCHAR2(15),
    CONSTRAINT pid_pdi PRIMARY KEY (pati_id),
);


--Mevcut Nesneleri Kontrol Etme
SELECT object_name, object_type
FROM user_objects
WHERE object_name = 'PATIENTS';


INSERT ALL
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (1, 'Ali', 'Veli', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Erkek', '1234 Elm Street', '555-1234')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (2, 'Ay�e', 'Fatma', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 'Kad�n', '5678 Oak Avenue', '555-5678')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (3, 'Mehmet', 'Y�lmaz', TO_DATE('1978-03-15', 'YYYY-MM-DD'), 'Erkek', '9102 Birch Lane', '555-9102')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (4, 'Fatma', 'Kaya', TO_DATE('1982-07-22', 'YYYY-MM-DD'), 'Kad�n', '1111 Cedar Court', '555-1111')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (5, 'Ahmet', 'Demir', TO_DATE('1995-09-18', 'YYYY-MM-DD'), 'Erkek', '2222 Maple Street', '555-2222')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (6, 'Elif', '�elik', TO_DATE('2000-12-05', 'YYYY-MM-DD'), 'Kad�n', '3333 Pine Road', '555-3333')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (7, 'Hakan', 'G�ne�', TO_DATE('1988-11-11', 'YYYY-MM-DD'), 'Erkek', '4444 Spruce Street', '555-4444')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (8, 'Selin', 'Ta�', TO_DATE('1992-04-27', 'YYYY-MM-DD'), 'Kad�n', '5555 Fir Lane', '555-5555')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (9, 'Yusuf', 'B�y�k', TO_DATE('1993-06-16', 'YYYY-MM-DD'), 'Erkek', '6666 Cypress Avenue', '555-6666')
    INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (10, 'Emine', 'Y�ld�z', TO_DATE('1987-08-08', 'YYYY-MM-DD'), 'Kad�n', '7777 Redwood Drive', '555-7777')
SELECT * FROM dual;


--ALTER
ALTER TABLE patients_new
ADD email VARCHAR2(100);

--DROP
DROP TABLE patients_new;

--TRUNCATE  tablodaki t�m kay�tlar� h�zl� ve etkili bir �ekilde siler 
TRUNCATE TABLE patiens_new;

--RENAME

--********************************************

--SELECT
SELECT * FROM patients_new;

--INSERT
INSERT INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones) VALUES (11, 'Ay�eg�l', 'Kara', TO_DATE('1998-03-30', 'YYYY-MM-DD'), 'Kad�n', '8888 Willow Way', '555-8888');

--UPDATE  tablodaki kayitlari gunceller

UPDATE patients_new
SET addres = '9999 Oak Drive', phones = '555-9999'
WHERE pati_id = 1;

--DELETE
DELETE FROM patients_new
WHERE pati_id = 10;

--MERGE,CALL

--********************************************
/*
BEGIN
    -- Veri ekleme i�lemi
    INSERT INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones)
    VALUES (13, 'Mert', '�elik', TO_DATE('1989-10-10', 'YYYY-MM-DD'), 'Erkek', '7777 Elm Street', '555-7777');

    -- SAVEPOINT olu�tur
    SAVEPOINT before_update;

    -- Daha fazla veri ekleme i�lemi
    INSERT INTO patients_new (pati_id, names_, t_names, births, gens, addres, phones)
    VALUES (14, 'Seda', 'Y�lmaz', TO_DATE('1990-11-11', 'YYYY-MM-DD'), 'Kad�n', '6666 Oak Avenue', '555-6666');

    -- Sorun olu�ursa SAVEPOINT'e geri d�n
    ROLLBACK TO before_update;

    -- De�i�iklikleri onayla
    COMMIT;
END;
_________________________________
K�s�tlamalar�n Sonradan Eklenmesi 
Alter Table ogrenci
Add Constraint dmg1 Primary Key(Ogr_Id);

*/

DECLARE
    UCRET NUMBER; -- 'UCRET' isimli bir de�i�ken tan�mlan�yor. 
BEGIN
    -- 'DENIZ' isimli ki�iye ait maa�� 'UCRET' de�i�kenine al
    SELECT MAAS INTO UCRET
    FROM PERSONEL
    WHERE AD = 'DENIZ';

    -- 'UCRET' de�i�keni 2500'den k���k oldu�u s�rece d�ng� devam eder
    WHILE UCRET < 2500 LOOP
        -- 'DENIZ' isimli ki�inin maa��n� %10 art�r
        UPDATE PERSONEL
        SET MAAS = UCRET * 1.1
        WHERE AD = 'DENIZ';

        -- 'UCRET' de�i�kenini g�ncel maa�la g�ncelle
        UCRET := UCRET * 1.1;
    END LOOP;
END;


-- Anonim Bloklar
DECLARE
    v_employee_name VARCHAR2(50);
BEGIN
    -- �al��an ad�n� belirli bir ko�ul alt�nda almak
    SELECT employee_name INTO v_employee_name
    FROM employees
    WHERE employee_id = 101;

    -- �al��an ad�n� ekrana yazd�rmak
    DBMS_OUTPUT.PUT_LINE('�al��an Ad�: ' || v_employee_name);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('�al��an bulunamad�.');
END;


--Prosed�rler (Yordamlar)
CREATE OR REPLACE PROCEDURE increase_salary(p_employee_id IN NUMBER, p_percentage IN NUMBER)
IS
BEGIN
    -- Maa�� g�ncelle
    UPDATE employees
    SET salary = salary * (1 + p_percentage / 100)
    WHERE employee_id = p_employee_id;
    
    DBMS_OUTPUT.PUT_LINE('Maa� ba�ar�yla g�ncellendi.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Bir hata olu�tu.');
END increase_salary;


--Fonksiyonlar
CREATE OR REPLACE PROCEDURE increase_salary(p_employee_id IN NUMBER, p_percentage IN NUMBER)
IS
BEGIN
    -- Maa�� g�ncelle
    UPDATE employees
    SET salary = salary * (1 + p_percentage / 100)
    WHERE employee_id = p_employee_id;
    
    DBMS_OUTPUT.PUT_LINE('Maa� ba�ar�yla g�ncellendi.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Bir hata olu�tu.');
END increase_salary;





