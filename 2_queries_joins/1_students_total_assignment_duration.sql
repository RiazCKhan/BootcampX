SELECT name
  FROM students
  WHERE name = 'Ibrahim Schimmel';

SELECT SUM(duration) AS total_duration
  FROM assignments

SELECT name, SUM(duration) AS total_duration
  FROM students JOIN assignments 
  ON students.name = assignments.id 
  WHERE name = 'Ibrahim Schimmel';


  /* CORRECT ANSWER - my answer tried to pull data from the wrong table */

SELECT sum(assignment_submissions.duration) as total_duration
  FROM assignment_submissions
    JOIN students 
    ON students.id = student_id
      WHERE students.name = 'Ibrahim Schimmel';
  