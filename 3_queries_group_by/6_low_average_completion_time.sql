SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_submissions = assignment_submissions.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;