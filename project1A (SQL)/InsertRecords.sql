INSERT INTO students
(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)
VALUES(1001,654651234,"Randy","M","2000/12/01","301 E Hall",5152700988,"121 Main",7083066321);
INSERT INTO students
(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)
VALUES(1002,123097834,"Victor","M","2000/05/06","270 W Hall",5151234578,"702 Walnut",7080366333);
INSERT INTO students
(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)
VALUES(1003,978012431,"John","M","1999/07/08","201 W Hall",5154132805,"888 University",5152012011);
INSERT INTO students
(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)
VALUES(1004,746897816,"Seth","M","1998/12/30","199 N Hall",5158891504,"21 Green",5154132907);
INSERT INTO students
(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)
VALUES(1005,186032894,"Nicole","F","2001/04/01","178 S Hall",5158891155,"13 Gray",5157162071);
INSERT INTO students
(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)
VALUES(1006,534218752,"Becky","F","2001/05/16","12 N Hall",5157083698,"189 Clark",2034367632);
INSERT INTO students
(snum,ssn,name,gender,dob,c_addr,c_phone,p_addr,p_phone)
VALUES(1007,432609519,"Kevin","M","2000/08/12","75 E Hall",5157082497,"89 National",7182340772);
INSERT INTO departments
(code,name,phone,college)
VALUES(401,"Computer Science",5152982801,"LAS");
INSERT INTO departments
(code,name,phone,college)
VALUES(402,"Mathematics",5152982802,"LAS");
INSERT INTO departments
(code,name,phone,college)
VALUES(403,"Chemical Engineering",5152982803,"Engineering");
INSERT INTO departments
(code,name,phone,college)
VALUES(404,"Landscape Architect",5152982804,"Design");
INSERT INTO degrees
(name,level,department_code)
VALUES("Computer Science","BS",401);
INSERT INTO degrees
(name,level,department_code)
VALUES("Software Engineering","BS",401);
INSERT INTO degrees
(name,level,department_code)
VALUES("Computer Science","MS",401);
INSERT INTO degrees
(name,level,department_code)
VALUES("Computer Science","PhD",401);
INSERT INTO degrees
(name,level,department_code)
VALUES("Applied Mathematics","MS",402);
INSERT INTO degrees
(name,level,department_code)
VALUES("Chemical Engineering","BS",403);
INSERT INTO degrees
(name,level,department_code)
VALUES("Landscape Architect","BS",404);
INSERT INTO major
(snum,name,level)
VALUES(1001,"Computer Science","BS");
INSERT INTO major
(snum,name,level)
VALUES(1002,"Software Engineering","BS");
INSERT INTO major
(snum,name,level)
VALUES(1003,"Chemical Engineering","BS");
INSERT INTO major
(snum,name,level)
VALUES(1004,"Landscape Architect","BS");
INSERT INTO major
(snum,name,level)
VALUES(1005,"Computer Science","MS");
INSERT INTO major
(snum,name,level)
VALUES(1006,"Applied Mathematics","MS");
INSERT INTO major
(snum,name,level)
VALUES(1007,"Computer Science","PhD");
INSERT INTO minor
(snum,name,level)
VALUES(1007,"Applied Mathematics","MS");
INSERT INTO minor
(snum,name,level)
VALUES(1005,"Applied Mathematics","MS");
INSERT INTO minor
(snum,name,level)
VALUES(1001,"Software Engineering","BS");
INSERT INTO courses
(number,name,description,credithours,level,department_code)
VALUES(113,"Spreadsheet","Microsoft Excel and Access","3","Undergraduate",401);
INSERT INTO courses
(number,name,description,credithours,level,department_code)
VALUES(311,"Algorithm","Design and Analysis",3,"Undergraduate",401);
INSERT INTO courses
(number,name,description,credithours,level,department_code)
VALUES(531,"Theory of Computation","Theorem and Probability",3,"Graduate",401);
INSERT INTO courses
(number,name,description,credithours,level,department_code)
VALUES(363,"Database","Design Principle",3,"Undergraduate",401);
INSERT INTO courses
(number,name,description,credithours,level,department_code)
VALUES(412,"Water Management","Water Management",3,"Undergraduate",404);
INSERT INTO courses
(number,name,description,credithours,level,department_code)
VALUES(228,"Special Topics","Interesting Topics about CE",3,"Undergraduate",403);
INSERT INTO courses
(number,name,description,credithours,level,department_code)
VALUES(101,"Calculus","Limit and Derivative",4,"Undergraduate",402);
INSERT INTO register
(snum,course_number,regtime,grade)
VALUES(1001,363,"Fall2020",3);
INSERT INTO register
(snum,course_number,regtime,grade)
VALUES(1002,311,"Fall2020",4);
INSERT INTO register
(snum,course_number,regtime,grade)
VALUES(1003,228,"Fall2020",4);
INSERT INTO register
(snum,course_number,regtime,grade)
VALUES(1004,363,"Spring2021",3);
INSERT INTO register
(snum,course_number,regtime,grade)
VALUES(1005,531,"Spring2021",4);
INSERT INTO register
(snum,course_number,regtime,grade)
VALUES(1006,363,"Fall2020",3);
INSERT INTO register
(snum,course_number,regtime,grade)
VALUES(1007,531,"Spring2021",4);




























