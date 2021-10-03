SELECT cohorts.name AS cohort_name, COUNT(students.id) AS student_count
FROM cohorts
JOIN students ON students.id = student_id
GROUP BY cohorts.name
HAVING COUNT(students.id) >= 18;

/*  CORRECT ANSWER BELOW */

SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;