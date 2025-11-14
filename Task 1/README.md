## Hospital Management System Database Schema


This SQL script establishes a **Hospital Management System** database. It defines six primary tables with appropriate relationships to manage core hospital operations:

- **Department:** Stores information about hospital departments (`department_id`, `name`, `location`).
- **Doctor:** Records details of hospital doctors, including their specialization and assigned department (`doctor_id`, `name`, `specialization`, `phone`, `department_id`).
- **Patient:** Contains patient records, such as contact information and demographics (`patient_id`, `name`, `gender`, `age`, `phone`, `address`).
- **Appointment:** Registers appointments between patients and doctors, including date and diagnosis (`appointment_id`, `patient_id`, `doctor_id`, `appointment_date`, `diagnosis`).
- **Treatment:** Details treatment provided during appointments, and associated costs (`treatment_id`, `appointment_id`, `treatment_details`, `cost`).
- **Billing:** Handles patient billing details, amounts, payment status, and billing date (`bill_id`, `patient_id`, `total_amount`, `payment_status`, `billing_date`).


---

### ER Diagram

An Entity Relationship (ER) diagram was created based on the above schema, illustrating the following relationships:

- **Department** 1 --- * **Doctor**  
  (One department has many doctors, each doctor belongs to one department)
- **Doctor** 1 --- * **Appointment**  
  (One doctor can have many appointments, each appointment refers to a doctor)
- **Patient** 1 --- * **Appointment**  
  (One patient can have many appointments, each appointment refers to a patient)
- **Appointment** 1 --- * **Treatment**  
  (Each appointment can have multiple treatments, each treatment refers to an appointment)
- **Patient** 1 --- * **Billing**  
  (Each patient can have multiple bills, each bill refers to one patient)


---
