
drop table bill;
drop table student;
drop table college;


--collage table
create table college
(
  college_id NUMBER(10) PRIMARY KEY,
   college_name VARCHAR2(40),
   address VARCHAR2(20)
);
INSERT INTO college VALUES(001,'eden mohila college','azimpur');
INSERT INTO college VALUES(002,'Dhaka college','Dhanmonddi');
INSERT INTO college VALUES(003,'Bangla college','Mirpur');

SELECT * FROM college;


--student table
CREATE TABLE student 
(
    student_id NUMBER(20) PRIMARY KEY ,
    student_name VARCHAR(20),
    mobile_no VARCHAR2(14) UNIQUE, 
    college_id NUMBER(10),
    CONSTRAINT st_col_fk fOREIGN KEY (college_id) REFERENCES college (college_id)
);
INSERT INTO student VALUES (111,'Amina'  , '01727870207',001);
INSERT INTO student VALUES (112,'saiful' , '01727870208',002);
INSERT INTO student VALUES (113,'nayeem' , '01727870209',003);

  SELECT * FROM student;

  UPDATE student
    set student_name =('saiful','nayeem')
    WHERE college_id=002,003;
  
  --bill table
  create table bill
  (
  bill_id NUMBER(20),
  bill_pay NUMBER(10),
  fee NUMBER(6),
  student_id NUMBER(20),
  college_id NUMBER(10),
    CONSTRAINT bil_coll_fk FOREIGN KEY (student_id) REFERENCES student (student_id),
    CONSTRAINT bil_stu_fk FOREIGN KEY (college_id) REFERENCES college  (college_id)
  );

