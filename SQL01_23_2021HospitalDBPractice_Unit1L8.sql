-- SELECT * FROM PHYSICIAN

-- SELECT * FROM DEPARTMENT

-- SELECT * FROM AFFILIATED_WITH

-- SELECT * FROM PROCEDURES

-- SELECT * FROM PATIENT

-- SELECT * FROM NURSE

-- SELECT * FROM APPOINTMENT

-- SELECT * FROM MEDICATION

-- SELECT * FROM PRESCRIBES

-- SELECT * FROM BLOCK

-- SELECT * FROM ROOM

-- SELECT * FROM ON_CALL

-- SELECT * FROM STAY

-- SELECT * FROM UNDERGOES

-- SELECT * FROM TRAINED_IN

--Find general medicine doctors name
-- select a.name, b.department, c.name 
-- from physician a
-- join affiliated_with b
-- join department c
-- on c.departmentid= b.department
-- on b.physician = a.employeeid
-- where b.department=1

--Find which patient - doctor visit
-- select a.name patient_name, b.name doctor_name 
-- from patient a
-- join physician b
-- on a.pcp = b.employeeid

--Find room details
-- select * from room
-- select unavailable, count(*) from room
-- group by unavailable

--Total patient count on blockcode=2
-- select count(*) from room where blockcode=2

--Check procedure details
-- select * from undergoes a
-- join procedures b 
-- on a.procedures = b.code

--Find hospital workload such as procedure time and doctors, nurse details
-- select a.name as doctor_name, b.name as nurse_name, c.dateundergoes as proceduretime
-- from physician a
-- join nurse b
-- join undergoes c
-- on b.employeeid= c.assistingnurse
-- on a.employeeid = c.physician
-- where c.physician=

--Patient medication and prescription details
-- select * from medication;
-- select a.name, b.dose, c.name,c.brand from patient a
-- join prescribes b
-- join medication c
-- on c.code = b.medication
-- on a.ssn = b.patient

--Trained in procedures
-- select * from procedures;
-- select * from trained_in;
-- select treatment, count(*) from trained_in group by treatment