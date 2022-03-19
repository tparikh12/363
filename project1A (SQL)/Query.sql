/*
1
*/
SELECT snum, ssn FROM students WHERE name ="Becky";
/*
7
*/
SELECT snum FROM register WHERE course_number="311";
/*
8
*/
SELECT snum 
FROM students
WHERE dob =(SELECT MAX(dob)FROM students);
/*
9
*/
SELECT snum 
FROM students
WHERE dob =(SELECT MIN(dob)FROM students);
/*
10
*/
SELECT name,snum,ssn
 FROM students
WHERE name LIKE '_n' OR '_N';
/*
11
*/
SELECT name,snum,ssn
 FROM students
WHERE NOT name LIKE '_n' OR '_N';





SELECT name, level FROM major WHERE ssn="123097834";


SELECT name,level FROM major WHERE name="Computer Science";


SELECT snum FROM register WHERE regtime ="Fall2020";

