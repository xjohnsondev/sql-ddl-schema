DROP DATABASE IF EXISTS  medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
    emp_id SERIAL PRIMARY KEY,
    doc_name TEXT NOT NULL,
    patients TEXT
);

CREATE TABLE patients
(
    id SERIAL PRIMARY KEY,
    patient_name TEXT NOT NULL,
    patient_dob TEXT NOT NULL,
    patient_gender TEXT NOT NULL,
    illness TEXT
);