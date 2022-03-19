
CREATE DATABASE createtables;
USE createtables; 
CREATE TABLE students (
  `snum` INT NOT NULL,
  `ssn` INT NOT NULL,
  `name` VARCHAR(10) NOT NULL,
  `gender` VARCHAR(1) NOT NULL,
  `dob` DATETIME NOT NULL,
  `c_addr` VARCHAR(20) NOT NULL,
  `c_phone` VARCHAR(10) NOT NULL,
  `p_addr` VARCHAR(20) NOT NULL,
  `p_phone` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ssn`),
  UNIQUE INDEX `snum_UNIQUE` (`snum` ASC) VISIBLE);
  
CREATE TABLE departments (
  `code` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `phone` VARCHAR(10) NOT NULL,
  `college` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE);
 CREATE TABLE degrees (
 `name` varchar(50) NOT NULL,
 `level` varchar(5) NOT NULL,
 `department_code` INT NOT NULL,
 PRIMARY KEY (name, level),
 FOREIGN KEY (department_code) REFERENCES departments(code)
 );

  CREATE TABLE courses (
  `number` INT NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(50) NOT NULL,
  `credithours` INT NOT NULL,
  `level` VARCHAR(20) NOT NULL,
  `department_code` INT NOT NULL,
  PRIMARY KEY (`number`),
   FOREIGN KEY (department_code) REFERENCES departments(code),
  UNIQUE INDEX `number_UNIQUE` (`number` ASC) VISIBLE);
  CREATE TABLE register (
  `snum` INT NOT NULL,
  `course_number` INT NOT NULL,
  `regtime` VARCHAR(20) NOT NULL,
  `grade` INT NOT NULL,
  PRIMARY KEY (`snum`, `course_number`),
  FOREIGN KEY (snum) REFERENCES students(snum),
  FOREIGN KEY (course_number) REFERENCES courses(number)
  );
CREATE TABLE major(
`snum` INT NOT NULL,
`name` varchar(50) NOT NULL,
`level` varchar(5) NOT NULL,
PRIMARY KEY (snum,name,level),
FOREIGN KEY (snum) REFERENCES students(snum),
FOREIGN KEY (name) REFERENCES degrees(name),
FOREIGN KEY (level) REFERENCES degrees(level)
);

CREATE TABLE minor(
`snum` INT NOT NULL,
`name` varchar(50) NOT NULL,
`level` varchar(5) NOT NULL,
PRIMARY KEY (snum,name,level),
FOREIGN KEY (snum) REFERENCES students(snum),
FOREIGN KEY (name) REFERENCES degrees(name),
FOREIGN KEY (level) REFERENCES degrees(level)

);

SHOW DATABASES;



 
