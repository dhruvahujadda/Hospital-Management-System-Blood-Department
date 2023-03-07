--Q. Whose blood can be used for Ravi Kapoor?
SELECT patient_name,donorname,any_disease
FROM patient
FULL OUTER JOIN donor
ON patient.Blood_group = donor.Blood_group
where patient_name='Ravi Kapoor' ;

--Q. Which doctor should Sonu Pathak consult for his disease thalassemia?
select * 
from doctors
where doctor_type='Thalassemia'; 

--Q. Who all donors can help sonu with blood?
Select donorname 
from donor 
where Blood_group=(select Blood_group from patient where patient_name='Sonu Pathak');