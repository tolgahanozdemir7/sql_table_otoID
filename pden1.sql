CREATE TABLE patients (
    patient_id NUMBER ,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    date_of_birth DATE,
    gender VARCHAR2(10),
    address VARCHAR2(100),
    phone_number VARCHAR2(15)
    constraint  pi_pdi primary key (patient_id)
);

INSERT INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number)
VALUES (1, 'Ali', 'Veli', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Erkek', '1234 Elm Street', '555-1234');

INSERT INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number)
VALUES (2, 'Ayþe', 'Fatma', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 'Kadýn', '5678 Oak Avenue', '555-5678');


/*
INSERT INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number)
VALUES 
    (1, 'Ali', 'Veli', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Erkek', '1234 Elm Street', '555-1234'),
    (2, 'Ayþe', 'Fatma', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 'Kadýn', '5678 Oak Avenue', '555-5678');
*/

/*
INSERT ALL
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (1, 'Ali', 'Veli', TO_DATE('1990-01-01', 'YYYY-MM-DD'), 'Erkek', '1234 Elm Street', '555-1234')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (2, 'Ayþe', 'Fatma', TO_DATE('1985-05-20', 'YYYY-MM-DD'), 'Kadýn', '5678 Oak Avenue', '555-5678')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (3, 'Mehmet', 'Yýlmaz', TO_DATE('1978-03-15', 'YYYY-MM-DD'), 'Erkek', '9102 Birch Lane', '555-9102')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (4, 'Fatma', 'Kaya', TO_DATE('1982-07-22', 'YYYY-MM-DD'), 'Kadýn', '1111 Cedar Court', '555-1111')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (5, 'Ahmet', 'Demir', TO_DATE('1995-09-18', 'YYYY-MM-DD'), 'Erkek', '2222 Maple Street', '555-2222')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (6, 'Elif', 'Çelik', TO_DATE('2000-12-05', 'YYYY-MM-DD'), 'Kadýn', '3333 Pine Road', '555-3333')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (7, 'Hakan', 'Güneþ', TO_DATE('1988-11-11', 'YYYY-MM-DD'), 'Erkek', '4444 Spruce Street', '555-4444')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (8, 'Selin', 'Taþ', TO_DATE('1992-04-27', 'YYYY-MM-DD'), 'Kadýn', '5555 Fir Lane', '555-5555')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (9, 'Yusuf', 'Büyük', TO_DATE('1993-06-16', 'YYYY-MM-DD'), 'Erkek', '6666 Cypress Avenue', '555-6666')
    INTO patients (patient_id, first_name, last_name, date_of_birth, gender, address, phone_number) VALUES (10, 'Emine', 'Yýldýz', TO_DATE('1987-08-08', 'YYYY-MM-DD'), 'Kadýn', '7777 Redwood Drive', '555-7777')
SELECT * FROM dual;
*/


UPDATE patients
SET address = '9876 Pine Road', phone_number = '555-9876'
WHERE patient_id = 1;


DELETE FROM patients
WHERE patient_id = 2;

SELECT * FROM patients;

SELECT * FROM patients
WHERE patient_id=1;

SELECT *FROM patients
WHERE gender='Kadin';

SELECT *FROM patients
ORDER BY date_of_birth;







