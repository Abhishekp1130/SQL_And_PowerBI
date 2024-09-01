SELECT * FROM set_operators.students;
SELECT student_id, first_name, last_name, major FROM students
UNION
SELECT student_id, NULL AS first_name, NULL AS last_name, NULL AS major FROM scholarship_recipients;
SELECT student_id from students
UNION 
SELECT student_id from scholarship_recipients;
SELECT student_id, first_name, last_name, major FROM students
UNION all
SELECT student_id, NULL AS first_name, NULL AS last_name, NULL AS major FROM scholarship_recipients;
SELECT student_id, first_name, last_name, major, NULL AS scholarship_name
FROM students
UNION ALL
SELECT student_id, NULL AS first_name, NULL AS last_name, NULL AS major, scholarship_name
FROM scholarship_recipients;

SELECT student_id, scholarship_name from scholarship_recipients
where student_id in (select student_id from students);

SELECT student_id, scholarship_name from scholarship_recipients
where student_id not in (select student_id from students);