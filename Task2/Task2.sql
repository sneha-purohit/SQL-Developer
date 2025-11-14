USE hospital_management;

-- INSERT SECTION

--  Departments inside the hospital
INSERT INTO Department (name, location)
VALUES ('Cardiology', 'Block A'),
       ('Orthopedics', 'Block B'),
       ('Neurology', 'Block C');

--  Doctors working in different departments
INSERT INTO Doctor (name, specialization, phone, department_id)
VALUES ('Dr. Mehta', 'Cardiologist', '9876543210', 1),  
       ('Dr. Rao', 'Orthopedic', '9988776655', 2),     
       ('Dr. Kapoor', 'Neurologist', NULL, 3);         

-- Patients visiting the hospital
INSERT INTO Patient (name, gender, age, phone, address)
VALUES ('Neha Sharma', 'Female', 27, '9876500000', 'Pune'),
       ('Amit Verma', 'Male', 45, '9812345678', 'Mumbai'),
       ('Riya Patil', 'Female', 30, NULL, 'Nashik');   

-- Appointment bookings between patients and doctors
INSERT INTO Appointment (patient_id, doctor_id, appointment_date, diagnosis)
VALUES (1, 1, '2025-11-13', 'High BP'),
       (2, 2, '2025-11-13', 'Knee Pain'),
       (3, 1, '2025-11-14', 'Headache');

-- Treatments given to each appointment
INSERT INTO Treatment (appointment_id, treatment_details, cost)
VALUES (1, 'Prescribed BP medicine', 1200.00),
       (2, 'Physiotherapy session', 800.00),
       (3, 'Pain relief medication', 600.00);

-- Billing for patients after treatment
INSERT INTO Billing (patient_id, total_amount, payment_status, billing_date)
VALUES (1, 1200.00, 'Paid', '2025-11-13'),
       (2, 800.00, 'Pending', '2025-11-13'),
       (3, 600.00, 'Paid', '2025-11-14');


--  UPDATE SECTION

--  Updating a patient’s phone number
UPDATE Patient
SET phone = '9000011111'
WHERE patient_id = 3;

--  Doctor gets a promoted specialization title
UPDATE Doctor
SET specialization = 'Senior Orthopedic'
WHERE doctor_id = 2;

--  Updating cost of a treatment
UPDATE Treatment
SET cost = 1500.00
WHERE appointment_id = 3;


--  DELETE SECTION 

--  Step 1: Delete treatment *before* deleting appointment (to avoid FK errors)
DELETE FROM Treatment
WHERE appointment_id = 3;

--  Step 2: Now we can safely delete the appointment
DELETE FROM Appointment
WHERE appointment_id = 3;


-- Viewing all tables after changes

SELECT * FROM Department;
SELECT * FROM Doctor;
SELECT * FROM Patient;
SELECT * FROM Appointment;
SELECT * FROM Treatment;
SELECT * FROM Billing;
