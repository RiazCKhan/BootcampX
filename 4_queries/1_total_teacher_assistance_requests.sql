SELECT teachers.name AS name, COUNT(assistance_requests.*) AS total_assistance
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;