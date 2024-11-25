CREATE DATABASE online_learning_platform;
USE online_learning_platform;

CREATE TABLE students(
	full_name VARCHAR(50) NOT NULL, 
    email VARCHAR(50) NOT NULL  UNIQUE,
    phone_number INT NOT NULL,
    student_class INT NOT NULL,
    father_name  VARCHAR(50) NOT NULL, 
    mother_name  VARCHAR(50) NOT NULL, 
    password_hash VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    course_name VARCHAR(50) NOT NULL
    );
    
INSERT INTO students (full_name, email, phone_number, student_class, father_name, mother_name, password_hash, address, course_name) VALUES 
('Aarav Sharma', 'aarav.sharma@gmail.com', 98765, 10, 'Ramesh Sharma', 'Sunita Sharma', '5f4dcc3b5aa765d61d8327deb882cf99', '123 Main St, Delhi', 'Mathematics'),
('Ishita Patel', 'ishita.patel@gmail.com', 98715, 12, 'Rajesh Patel', 'Meena Patel', '6b3a55e0261b0304143f805a1d320f7a', '456 South Rd, Mumbai', 'Physics'),
('Rohan Verma', 'rohan.verma@gmail.com', 12345, 11, 'Suresh Verma', 'Lata Verma', 'b026324c6904b2a9cb4b88d6d61c81d1', '789 East Blvd, Kolkata', 'Chemistry'),
('Ananya Iyer', 'ananya.iyer@gmail.com', 98765, 9, 'Mohan Iyer', 'Seema Iyer', 'd41d8cd98f00b204e9800998ecf8427e', '321 West Ave, Bangalore', 'Biology'),
('Aditya Singh', 'aditya.singh@gmail.com', 98766, 10, 'Vikram Singh', 'Priya Singh', '098f6bcd4621d373cade4e832627b4f6', '654 Central St, Jaipur', 'Computer Science');
    
CREATE TABLE faculties(
	full_name VARCHAR(50) NOT NULL, 
    email VARCHAR(50) NOT NULL  UNIQUE,
    phone_number INT NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
	course_name VARCHAR(50) NOT NULL,
    experience TEXT
);

INSERT INTO faculties (full_name, email, phone_number, password_hash, course_name, experience)
VALUES 
('Rajesh Kumar', 'rajesh.kumar@gmail.com', 93210, '5f4dcc3b5aa765d61d8327deb882cf99', 'Mathematics', '10 years of teaching experience in CBSE and ICSE boards'),
('Smita Joshi', 'smita.joshi@gmail.com', 98321, '6b3a55e0261b0304143f805a1d320f7a', 'Physics', '7 years of experience, specializing in IIT-JEE preparation'),
('Amitabh Singh', 'amitabh.singh@gmail.com', 98745, 'b026324c6904b2a9cb4b88d6d61c81d1', 'Chemistry', '15 years of experience in coaching institutes and online teaching'),
('Pooja Nair', 'pooja.nair@gmail.com', 98765, 'd41d8cd98f00b204e9800998ecf8427e', 'Biology', '8 years of teaching experience, with a focus on NEET preparation'),
('Arun Gupta', 'arun.gupta@gmail.com', 98765, '098f6bcd4621d373cade4e832627b4f6', 'Computer Science', '12 years of experience in software development and teaching programming languages');


CREATE TABLE courses(
	course_name VARCHAR(20) NOT NULL,
    course_duration INT
);

INSERT INTO courses (course_name, course_duration)
VALUES
('Mathematics', 12),
('Physics', 12),
('Chemistry', 12),
('Biology', 12),
('Computer Science', 12);
