CREATE TABLE student (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    age INT NOT NULL,
    gender VARCHAR(10) NOT NULL
);

ALTER TABLE student
MODIFY name VARCHAR(100) NOT NULL UNIQUE,
MODIFY age INT NOT NULL,
MODIFY gender VARCHAR(10) NOT NULL;


INSERT INTO student (name, age, gender)
VALUES
('Alice Johnson', 20, 'Female'),
('Brian Kim', 22, 'Male'),
('Cynthia Lee', 19, 'Female');

ALTER TABLE student
ADD CONSTRAINT chk_age_positive CHECK (age > 0);

UPDATE student
SET age = 20
WHERE student_id = 2;

select * from student;



select * from student;

