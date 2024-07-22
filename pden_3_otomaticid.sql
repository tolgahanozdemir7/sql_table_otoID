CREATE SEQUENCE AUTO_ID_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 999999
NOCYCLE
NOCACHE;

CREATE TABLE patient_info (
    patient_id NUMBER,
    given_name VARCHAR2(50),
    surname VARCHAR2(50),
    dob DATE,
    sex VARCHAR2(10),
    residence VARCHAR2(100),
    contact_number VARCHAR2(15),
    CONSTRAINT pk_patient_id PRIMARY KEY (patient_id)
);

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Jordan', 'Carter', TO_DATE('1986-03-12', 'YYYY-MM-DD'), 'Male', '1010 Willow Way', '555-20031');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Harper', 'Adams', TO_DATE('1991-05-22', 'YYYY-MM-DD'), 'Female', '2020 Oak Hill', '555-20032');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Logan', 'Harris', TO_DATE('1985-07-30', 'YYYY-MM-DD'), 'Male', '3030 Maple Grove', '555-20043');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Evelyn', 'Morris', TO_DATE('1993-08-14', 'YYYY-MM-DD'), 'Female', '4040 Pine Hill', '555-20304');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Lucas', 'Clark', TO_DATE('1987-11-05', 'YYYY-MM-DD'), 'Male', '5050 Birch Lane', '555-20405');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Zoe', 'Lewis', TO_DATE('1992-01-20', 'YYYY-MM-DD'), 'Female', '6060 Cedar Path', '555-20056');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Mason', 'Walker', TO_DATE('1984-09-12', 'YYYY-MM-DD'), 'Male', '7070 Spruce Court', '555-20057');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Aria', 'Young', TO_DATE('1990-06-18', 'YYYY-MM-DD'), 'Female', '8080 Elm Grove', '555-20048');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Jackson', 'King', TO_DATE('1988-10-03', 'YYYY-MM-DD'), 'Male', '9090 Fir Street', '555-20059');

INSERT INTO patient_info (patient_id, given_name, surname, dob, sex, residence, contact_number)
VALUES (patient_id_seq.NEXTVAL, 'Mia', 'Scott', TO_DATE('1994-12-11', 'YYYY-MM-DD'), 'Female', '1011 Willow Lane', '555-20140');


