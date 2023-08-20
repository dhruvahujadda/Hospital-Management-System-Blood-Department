--1. Question: Retrieve the names of donors who have a Haemoglobin level greater than 12.
--Code-
SELECT donorname
FROM donor
WHERE Haemoglobin > 12;

--2. Question: List the patients' names and their treating doctor's names for accidents.
--Code-
SELECT p.patient_name, d.Doctor_name
FROM patient p
JOIN treatment t ON p.patient_id = t.Patient_Id
JOIN doctors d ON t.Doctor_Id = d.Doctor_Id
WHERE p.Disease = 'Accident';

--3. Question: Display the average age of patients with each blood group.
--Code-
SELECT Blood_group, AVG(Age) AS Average_Age
FROM patient
GROUP BY Blood_group;

--4. Question: Retrieve the total units of blood donated by each donor.
--Code-
SELECT d.donorname, SUM(d.unit_blood) AS Total_Units_Donated
FROM donor d
JOIN donation dn ON d.donor_id = dn.Donor_Id
GROUP BY d.donorname;

--5. Question: List the doctors who specialize in treating Thalassemia patients.
--Code-
SELECT Doctor_name
FROM doctors
WHERE doctor_type = 'Thalassemia';

--6. Question: Display the number of donors who have any disease and their respective blood groups.
--Code-
SELECT Any_disease, Blood_group, COUNT(*) AS Donor_Count
FROM donor
WHERE Any_disease != 'No'
GROUP BY Any_disease, Blood_group;

--7. Question: Retrieve the most recent treatment dates for each patient.
--Code-
SELECT p.patient_name, MAX(t.Treatment_Date) AS Latest_Treatment_Date
FROM patient p
JOIN treatment t ON p.patient_id = t.Patient_Id
GROUP BY p.patient_name;

--8. Question: List the doctors who have not treated any patients yet.
--Code-
SELECT d.Doctor_name
FROM doctors d
LEFT JOIN treatment t ON d.Doctor_Id = t.Doctor_Id
WHERE t.Doctor_Id IS NULL;

--9. Question: Display the details of patients who have been treated by Dr. Arjun Reddy.
--Code-
SELECT p.patient_name, p.Contact, p.Age, p.Disease, p.Blood_group
FROM patient p
JOIN treatment t ON p.patient_id = t.Patient_Id
JOIN doctors d ON t.Doctor_Id = d.Doctor_Id
WHERE d.Doctor_name = 'Arjun Reddy';

--10. Question: Retrieve the list of donors who donated on or after '2023-08-18'.
--Code-
SELECT d.donorname, dn.Donation_Date
FROM donor d
JOIN donation dn ON d.donor_id = dn.Donor_Id
WHERE dn.Donation_Date >= '2023-08-18';




--Q11. Question: Whose blood can be used for Ravi Kapoor?
--Code-
SELECT patient_name,donorname,any_disease
FROM patient
FULL OUTER JOIN donor
ON patient.Blood_group = donor.Blood_group
where patient_name='Ravi Kapoor' ;

--Q12. Question: Which doctor should Sonu Pathak consult for his disease thalassemia?
--Code-
select * 
from doctors
where doctor_type='Thalassemia'; 

--Q13. Question: Who all donors can help sonu with blood?
--Code-
Select donorname 
from donor 
where Blood_group=(select Blood_group from patient where patient_name='Sonu Pathak');
