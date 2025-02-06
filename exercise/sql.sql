SELECT patient_id, COUNT(*) as total_visits
FROM appointments
WHERE appointment_date >= TO_DATE('2024-01-01', 'YYYY-MM-DD')
GROUP BY patient_id
HAVING COUNT(*) > 3
ORDER BY total_visits DESC;


SELECT patient_id, COUNT(*) AS total_visits
FROM appointments
GROUP BY patient_id
HAVING COUNT(*) > 3;

SELECT name FROM patients
LEFT JOIN appointments ON patients.id = appointments.patient_id
WHERE appointments.id IS NULL;

SELECT patient_id, MAX(appointment_date) AS last_appointment
FROM appointments
GROUP BY patient_id;


SELECT name FROM patients
LEFT JOIN appointments ON patients.id = appointments.patient_id
WHERE appointments.id IS NULL;

SELECT name, ROUND(MONTHS_BETWEEN(SYSDATE, birth_date) / 12) AS age
FROM patients;
