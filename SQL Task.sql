CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR,
    birth_date DATE
);

INSERT INTO students (student_id, first_name, last_name, birth_date)
VALUES
    (1, 'John', 'Doe', '2000-01-15'),
    (2, 'Jane', 'Smith', '1999-03-22'),
    (3, 'Alice', 'Johnson', '2001-07-30'),
    (4, 'Bob', 'Brown', '2000-12-05');
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR,
    course_code VARCHAR
);

INSERT INTO courses (course_id, course_name, course_code)
VALUES
    (1, 'Database Systems', 'CS101'),
    (2, 'Algorithms', 'CS102'),
    (3, 'Data Structures', 'CS103'),
    (4, 'Operating Systems', 'CS104');

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE);

INSERT INTO enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
    (1, 1, 1, '2024-08-01'),
    (2, 1, 2, '2024-08-01'),
    (3, 2, 1, '2024-08-01'),
    (4, 3, 3, '2024-08-01'),
    (5, 4, 4, '2024-08-01');
SELECT * From students
SELECT 
	first_name AS "First Name", 
	last_name AS "Last Name", 
	birth_date AS "Date of Birth"
FROM
	students;
ORDER BY
    last_name ASC;
SELECT DISTINCT *
From
	enrollments;