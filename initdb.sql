CREATE DATABASE university;

USE university;

CREATE TABLE student(
    id INTEGER primary key, 
    firstName TEXT,
    secondName TEXT,
    dateOfBirth TEXT
);

CREATE TABLE book(
    studentID INTEGER, 
    lesson TEXT, 
    date_ex TEXT, 
    teacher TEXT, 
    mark INTEGER
);

INSERT INTO student VALUES(1, "Bob", " Marley", "12/05/2001");
INSERT INTO student VALUES(2, "Curt", "Kobein", "11/12/1999");
INSERT INTO student VALUES(3, "Lexa", "Glorye", "03/08/1998");
INSERT INTO student VALUES(4, "John", "Dick", "01/11/1996");

INSERT INTO book VALUES(1, "Chemistry", "16/12/2022", "Quavo A.A.", 3);
INSERT INTO book VALUES(1, "Geometry", "16/12/2022", "Alismore V.N.", 2);
INSERT INTO book VALUES(1, "Literature", "17/12/2022", "David M.J.", 4);
INSERT INTO book VALUES(1, "History", "18/12/2022", "Pink P.P.", 4);
INSERT INTO book VALUES(2, "Chemistry", "16/12/2022", "Quavo A.A.", 5);
INSERT INTO book VALUES(2, "Biology", "19/12/2022", "Quavo A.P.", 3);
INSERT INTO book VALUES(2, "Literature", "17/12/2022", "David M.J.", 2);
INSERT INTO book VALUES(3, "Biology", "19/12/2022", "Quavo A.P.", 2);
INSERT INTO book VALUES(3, "History", "18/12/2022", "Pink P.P.", 2);
INSERT INTO book VALUES(3, "Literature", "17/12/2022", "David M.J.", 3);
INSERT INTO book VALUES(4, "Biology", "19/12/2022", "Quavo A.P.", 2);
INSERT INTO book VALUES(4, "Literature", "17/12/2022", "David M.J.", 4);
INSERT INTO book VALUES(4, "History", "18/12/2022", "Pink P.P.", 3);



COMMIT;