CREATE DATABASE STUDENTS;
USE STUDENTS;

CREATE TABLE student(
    StudentName VARCHAR(255),
    StudentID INT NOT NULL,
    Birthdate VARCHAR(20),
    Year VARCHAR(255),
    MobileNo VARCHAR(255),
    PRIMARY KEY(StudentID)
);

INSERT INTO student(StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES("Jane", 235, "12/1/1987", "Y1S2", "0722245321");

INSERT INTO student(StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES("Nicholas", 26, "22/7/2002", "Y1S1", "0720458674");

INSERT INTO student(StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES("Cyrus", 1, "15/6/1989", "Y2S1", "0704231345");

INSERT INTO student(StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES("Neema", 2, "29/11/2008", "Y2S1", "0733876987");

INSERT INTO student(StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES("CAROLINE", 3, "18/10/2002", "Y1S1", "0732568448");

INSERT INTO student(StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES("Judith", 29, "17/6/2003", "Y4S2", "0711234567");

INSERT INTO student(StudentName, StudentID, Birthdate, Year, MobileNo)
VALUES("Grace", 127, "14/1/2000", "Y1S2", "07337365987");

CREATE TABLE Finance(
    StudentID INT,
    Tuition_Fee INT,
    Administration_Fee INT,
    Exam_Fee INT,
    Medical_Fee INT
);

INSERT INTO Finance(StudentID, Tuition_Fee, Administration_Fee, Exam_Fee, Medical_Fee)
VALUES(235, 30000, 5000, 3000, 4000);

INSERT INTO Finance(StudentID, Tuition_Fee, Administration_Fee, Exam_Fee, Medical_Fee)
VALUES(26, 40000, 5000, 2000, 4000);

INSERT INTO Finance(StudentID, Tuition_Fee, Administration_Fee, Exam_Fee, Medical_Fee)
VALUES(1, 34000, 5000, 3000, 4000);

INSERT INTO Finance(StudentID, Tuition_Fee, Administration_Fee, Exam_Fee, Medical_Fee)
VALUES(3, 20000, 5000, 3000, 4000);

INSERT INTO Finance(StudentID, Tuition_Fee, Administration_Fee, Exam_Fee, Medical_Fee)
VALUES(29, 35000, 5000, 2000, 4000);

INSERT INTO Finance(StudentID, Tuition_Fee, Administration_Fee, Exam_Fee, Medical_Fee)
VALUES(127, 28000, 5000, 3000, 4000);


SELECT * 
FROM student
JOIN Finance ON student.StudentID = Finance.StudentID
WHERE student.Year = 'Y1S1' AND Finance.Tuition_Fee > 0;

SELECT student.StudentName, student.StudentID, student.Year, Finance.Tuition_Fee
FROM student
JOIN Finance ON student.StudentID = Finance.StudentID
WHERE Finance.Tuition_Fee >= 30000;


INSERT INTO student(StudentName, Birthdate, Year, MobileNo)
VALUES("Dan", "20/4/2001", "Y1S2", "0723456123");


UPDATE student
SET StudentName = "Nelson"
WHERE StudentID = 26;
