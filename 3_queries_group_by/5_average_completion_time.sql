SELECT students.name as student, AVG(assignment_submissions.duration) as avg_assignment_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.id = assignment_submissions_id
GROUP BY students.name
ORDER BY ASC;

/* CORRECT ANSWER BELOW */

SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;