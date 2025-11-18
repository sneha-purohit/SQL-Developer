USE hospital_management;

-- SELECT QUERY---------

-- DOCTOR NAMES AND THEIR SPECIALIZATIONS 
SELECT name, specialization
FROM Doctor;

-- ALL DEPARTMENTS WITH LOCATION
SELECT name, location
FROM Department;

-- WHERE QUERY ----------

-- PATIENTS OLDER THAN 30
SELECT name, age, gender
FROM Patient
WHERE age > 30;

-- DOCTOR WORKING IN SPECIFIC DEPARTMENT
SELECT name, specialization
FROM Doctor
WHERE department_id = 1;

-- FEMALE PATIENTS
SELECT name, gender, age
FROM Patient
WHERE gender = 'Female';

-- DOCTORS IN CARDIOLOGY
SELECT name, specialization
FROM Doctor
WHERE department_id = 1
AND specialization LIKE '%Cardio%';

-- PATIENTS FROM PUNE OR NASIK
SELECT name, address
FROM Patient
WHERE address = 'Pune'
OR address = 'Nashik';
   
-- PATIENTS WHOSE NAME STARTS WITH 'M'
SELECT name, age
FROM Patient
WHERE name LIKE 'N%';


-- ORDER BY QUERY ----------

-- PATIENTS BY AGE 
SELECT name, age, gender
FROM Patient
ORDER BY age ASC;

-- TREATMENT COST
SELECT appointment_id, treatment_details, cost
FROM Treatment
ORDER BY cost DESC;

-- DOCTORS NAME ALPHABITACALLY
SELECT name, specialization
FROM Doctor
ORDER BY name ASC;


-- LIMIT QUERY ------------

-- TOP 3 MOST EXPENSIVE TREATMENT
SELECT *
FROM Treatment
ORDER BY cost DESC
LIMIT 3;

-- FIRST 2 PATIENTS
SELECT *
FROM Patient
LIMIT 2;

































