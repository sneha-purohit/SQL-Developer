CREATE DATABASE Hospital_Management;
USE Hospital_Management;

-- 1. Department Table
CREATE TABLE Department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    location VARCHAR(100)
);

-- 2. Doctor Table
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- 3. Patient Table
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    phone VARCHAR(15),
    address VARCHAR(200)
);

-- 4. Appointment Table
CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    diagnosis VARCHAR(200),
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

-- 5. Treatment Table
CREATE TABLE Treatment (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT,
    treatment_details VARCHAR(200),
    cost DECIMAL(10,2),
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);

-- 6. Billing Table
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    total_amount DECIMAL(10,2),
    payment_status VARCHAR(50),
    billing_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);


SELECT * FROM Appointment;
