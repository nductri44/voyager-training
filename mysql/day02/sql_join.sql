-- Bai 1.

-- a.

CREATE TABLE STUDENT (
	`id` BIGINT UNSIGNED NOT NULL
	AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(100),
	`age` INT,
	`class_id` INT	
);

CREATE TABLE CLASS (
	`id` BIGINT UNSIGNED NOT NULL
	AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(100),
	`major_id` INT
);

CREATE TABLE MAJOR (
	`id` BIGINT UNSIGNED NOT NULL
	AUTO_INCREMENT UNIQUE,
	`name` VARCHAR(100)
);

INSERT INTO STUDENT(name, age, class_id)
VALUES
('Phan Thanh', 20, 1),
('Nguyen Thi Cam', 18, 1),
('Vo Thi Ha', 16, 2),
('Tran Hoai Nam', 22, 3),
('Tran Van Hoang', 23, 5),
('Dang Thi Thao', 22, 4),
('Le Thi Sen', 19, 2),
('Nguyen Van Huy', 21, 3),
('Tran Thi Hoa', 24, 5);

INSERT INTO CLASS (name, major_id)
VALUES
('Math', 1),
('Physics', 1),
('Chemistry', 2),
('DSA', 3),
('Computer Networking', 3),
('Biology', 2),
('Project Management', 4),
('Mechantronics', 5),
('Building Materials', 6);

INSERT INTO MAJOR (name)
VALUES
('Basic'),
('Chemical'),
('Computer'),
('Management'),
('Mechanical'),
('Civil Engineering');

------------------
-- b.

SELECT *
FROM STUDENT
INNER JOIN CLASS
ON STUDENT.class_id = CLASS.id;

------------------
-- c.

SELECT *
FROM STUDENT
INNER JOIN CLASS
ON STUDENT.class_id = CLASS.id
INNER JOIN MAJOR
ON CLASS.major_id = MAJOR.id;

------------------
-- d.

SELECT *
FROM CLASS
LEFT JOIN STUDENT
ON CLASS.id = STUDENT.class_id 
WHERE STUDENT.class_id IS NULL;

------------------
-- e.

SELECT * FROM CLASS
INNER JOIN MAJOR
ON CLASS.major_id = MAJOR.id
WHERE MAJOR.id = 3;

------------------
-- Bai 1.7

-- a.

SELECT *
FROM CLASS
LEFT JOIN STUDENT
ON CLASS.id = STUDENT.class_id 
WHERE STUDENT.class_id IS NULL;

-- b.

SELECT *
FROM STUDENT
RIGHT JOIN CLASS
ON STUDENT.class_id = CLASS.id 
WHERE STUDENT.class_id IS NULL;
