-- Create School database

CREATE DATABASE School;

-- Create students & classes tables

CREATE TABLE School.students (
	`student_id` BIGINT UNSIGNED NOT NULL
	AUTO_INCREMENT UNIQUE,
	`student_name` VARCHAR(100),
	`class_id` INT,
	PRIMARY KEY(`student_id`)
);

CREATE TABLE School.classes (
	`class_id` BIGINT UNSIGNED NOT NULL
	AUTO_INCREMENT UNIQUE,
	`class_name` VARCHAR(100),
	PRIMARY KEY(`class_id`)
);

-- Insert values into tables

INSERT INTO School.students(student_name, class_id)
VALUES
  ('Cong Phuong', 1),
  ('Quang Hai', 1),
  ('Van Toan', 1),
  ('Van Hau', 2),
  ('Tien Linh', 2),
  ('Que Ngoc Hai', 3),
  ('Hoang Duc', 4),
  ('Tan Tai', 4),
  ('Van Lam', 5)
  ('Van Thanh', 1),
  ('Viet Anh', 1),
  ('Hung Dung', 2),
  ('Thanh Binh', 2),
  ('Thanh Chung', 2);

INSERT INTO School.classes(class_name)
VALUES
  ('Math'),
  ('Literature'),
  ('Physics'),
  ('Chemistry'),
  ('English'),
  ('History'),
  ('Biology'),
  ('Geography'),
  ('Informatics');

-- a.
-- Count the number of students per class

SELECT c.class_id , c.class_name, COUNT(s.class_id) AS number_students
FROM classes c
LEFT JOIN students s 
ON c.class_id = s.class_id
GROUP BY c.class_id, s.class_id;

-- b.
-- Find classes with at least 5 students

SELECT c.class_id , c.class_name, COUNT(s.class_id) AS number_students
FROM classes c
LEFT JOIN students s 
ON c.class_id = s.class_id
GROUP BY c.class_id, s.class_id
HAVING number_students >= 5;
