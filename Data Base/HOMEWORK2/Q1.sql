/*//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*				Data Base Used : LIVE SQL Oracle

	Q1.Write SQL commands to create the above tables (create your own column names), and populate them with data 

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/


create table Employee(
   Emp_ID int not null,
   F_name varchar(10) not null,
   L_name varchar(10) not null,
   Job_title varchar(20) not null,
   Phone_no int not null,
   Email_ID varchar(30) not null,
   Gender varchar(10) not null,
   Primary key(Emp_ID)
);

insert into Employee VALUES (500,'Smith','Wilson', 'Marketing', 5678901234,'kg@sqle.edu','Female');
insert into Employee VALUES (501,'Smith','Jardine','Executive officer',1234567890,'sj@sqle.edu','Male');
insert into Employee VALUES (502,'Kivell','Gill','Finance',2345678901,'kg@sqle.edu','Female');
insert into Employee VALUES (503,'Jardine','Jones','Marketing',3456789012,'jjj@sqle.edu','Male');
insert into Employee VALUES (504,'Andrews','Gill','Finance',4567890132,'ag@sqle.edu','Male');
insert into Employee VALUES (505,'Morgan','Jardine', 'CEO', 5678901234,'kg@sqle.edu','Female');
insert into Employee VALUES (506,'Andrews','Smith', 'IT', 6789012345,'as@sqle.edu','Male');
insert into Employee VALUES (507,'Kivell','Morgan', 'Sales', 7890123456,'km@sqle.edu','Male');
insert into Employee VALUES (508,'Gill','Paren', 'Finance', 8901234345,'gp@sqle.edu','Female');
insert into Employee VALUES (509,'Kivell','Sorvino', 'CA', 9012345678,'ks1@sqle.edu','Female');
insert into Employee VALUES (510,'Jones','Kivell','Manager',1256789034,'jk@sqle.edu','Male');
insert into Employee VALUES (511,'Howard','Thompson', 'IT', 5612378904,'ht@sqle.edu','Female');
insert into Employee VALUES (512,'Sorvino','Gill', 'IT', 5612568924,'sg@sqle.edu','Female');
insert into Employee VALUES (513,'Adam','Ford', 'Analyst', 7893663456,'af@sqle.edu','Male');
insert into Employee VALUES (514,'Ford','Miller','Sales',6158715781,'fm@sqle.edu','Male');
insert into Employee VALUES (515,'Turner','Martin','Manager',9865183781,'tm@sqle.edu','Male');
insert into Employee VALUES (516,'Scott','James','IT',615338881,'sj1@sqle.edu','Male');
insert into Employee VALUES (517,'Jaga','Pand','IT',615987881,'jp@sqle.edu','Male');
insert into Employee VALUES (518,'Mile','Scott','IT',6936780881,'ms1@sqle.edu','Male');
insert into Employee VALUES (519,'Martin','Allen','IT',615267881,'ma3@sqle.edu','Male');
insert into Employee VALUES (520,'Blake','King','IT',6123458691,'bk3@sqle.edu','Male');
insert into Employee VALUES (521,'James','Mark','IT',6115674218,'jm9@sqle.edu','Male');
insert into Employee VALUES (522,'Marker','Ford','IT',6165782498,'mf5@sqle.edu','Male');
insert into Employee VALUES (523,'John','Calton','IT',9274571935,'jc4@sqle.edu','Male');


create table Scanning ( 
    Scan_ID number not null,  
    Emp_ID number not null, 
    Device_no number not null, 
    Temp number not null, 
    Scan_Date date not null, 
    PRIMARY KEY(Scan_ID), 
    FOREIGN KEY(Emp_ID) References Employee 
);

INSERT INTO Scanning VALUES(40,504,700,98,DATE '2021-10-08');
INSERT INTO Scanning VALUES(1,503,700,97,DATE '2021-10-07');
INSERT INTO Scanning VALUES(2,510,702,99,DATE '2021-10-08');
INSERT INTO Scanning VALUES(3,514,701,98,DATE '2021-10-07');
INSERT INTO Scanning VALUES(4,509,700,98,DATE '2021-10-06');
INSERT INTO Scanning VALUES(5,508,703,98,DATE '2021-10-06');
INSERT INTO Scanning VALUES(6,515,705,99,DATE '2021-10-07');
INSERT INTO Scanning VALUES(7,520,704,100,DATE '2021-10-09');
INSERT INTO Scanning VALUES(8,507,705,98,DATE '2021-10-10');
INSERT INTO Scanning VALUES(9,516,705,98,DATE '2021-10-09');
INSERT INTO Scanning VALUES(10,501,701,98,DATE '2021-10-10');
INSERT INTO Scanning VALUES(11,502,702,98,DATE '2021-10-08');
INSERT INTO Scanning VALUES(12,505,703,101,DATE '2021-10-11');
INSERT INTO Scanning VALUES(13,506,700,98,DATE '2021-10-11');
INSERT INTO Scanning VALUES(14,509,704,100,DATE '2021-10-11');
INSERT INTO Scanning VALUES(15,510,701,101,DATE '2021-10-11');
INSERT INTO Scanning VALUES(16,513,700,98,DATE '2021-10-09');
INSERT INTO Scanning VALUES(17,517,703,100,DATE '2021-10-09');
INSERT INTO Scanning VALUES(18,518,703,101,DATE '2021-10-10');
INSERT INTO Scanning VALUES(19,519,701,100,DATE '2021-10-10');
INSERT INTO Scanning VALUES(20,520,702,98,DATE '2021-10-10');
INSERT INTO Scanning VALUES(21,521,702,98,DATE '2021-10-11');
INSERT INTO Scanning VALUES(22,503,700,97,DATE '2021-10-12');
INSERT INTO Scanning VALUES(23,510,702,99,DATE '2021-10-12');
INSERT INTO Scanning VALUES(24,514,701,98,DATE '2021-10-12');
INSERT INTO Scanning VALUES(25,509,700,98,DATE '2021-10-12');
INSERT INTO Scanning VALUES(26,508,703,98,DATE '2021-10-13');
INSERT INTO Scanning VALUES(27,515,705,99,DATE '2021-10-13');
INSERT INTO Scanning VALUES(28,520,704,100,DATE '2021-10-13');
INSERT INTO Scanning VALUES(29,507,705,98,DATE '2021-10-14');
INSERT INTO Scanning VALUES(30,516,705,98,DATE '2021-10-14');
INSERT INTO Scanning VALUES(31,501,701,98,DATE '2021-10-14');
INSERT INTO Scanning VALUES(32,502,702,98,DATE '2021-10-14');
INSERT INTO Scanning VALUES(33,505,703,101,DATE '2021-10-15');
INSERT INTO Scanning VALUES(34,513,700,98,DATE '2021-10-15');
INSERT INTO Scanning VALUES(35,517,703,100,DATE '2021-10-16');
INSERT INTO Scanning VALUES(36,518,703,101,DATE '2021-10-16');
INSERT INTO Scanning VALUES(37,519,701,100,DATE '2021-10-16');
INSERT INTO Scanning VALUES(38,520,702,98,DATE '2021-10-16');
INSERT INTO Scanning VALUES(39,521,702,98,DATE '2021-10-17');

create table Meetings (
    Booking_ID number not null,
    Emp_ID number not null,
    MeetingRoom_no number not null,
    NO_OfEmp number not null,
    Meeting_Date date not null,
    Start_Time timestamp not null,
    End_Time timestamp not null,
    PRIMARY KEY(Booking_ID,Emp_ID),
    FOREIGN KEY(Emp_ID) References Employee
);

INSERT INTO Meetings Values(45678,504,300,5,DATE '2021-10-08',TIMESTAMP '2021-10-08 15:00:00',TIMESTAMP '2021-10-08 16:00:00');
INSERT INTO Meetings Values(45678,505,300,5,DATE '2021-10-08',TIMESTAMP '2021-10-08 15:00:00',TIMESTAMP '2021-10-08 16:00:00');
INSERT INTO Meetings Values(45678,506,300,5,DATE '2021-10-08',TIMESTAMP '2021-10-08 15:00:00',TIMESTAMP '2021-10-08 16:00:00');
INSERT INTO Meetings Values(45678,507,300,5,DATE '2021-10-08',TIMESTAMP '2021-10-08 15:00:00',TIMESTAMP '2021-10-08 16:00:00');

INSERT INTO Meetings Values(45679,503,301,4,DATE '2021-10-08',TIMESTAMP '2021-10-08 16:00:00',TIMESTAMP '2021-10-08 17:00:00');
INSERT INTO Meetings Values(45679,511,301,4,DATE '2021-10-08',TIMESTAMP '2021-10-08 16:00:00',TIMESTAMP '2021-10-08 17:00:00');
INSERT INTO Meetings Values(45679,502,301,4,DATE '2021-10-08',TIMESTAMP '2021-10-08 16:00:00',TIMESTAMP '2021-10-08 17:00:00');
INSERT INTO Meetings Values(45679,510,301,4,DATE '2021-10-08',TIMESTAMP '2021-10-08 16:00:00',TIMESTAMP '2021-10-08 17:00:00');


INSERT INTO Meetings Values(45680,501,300,3,DATE '2021-10-09',TIMESTAMP '2021-10-09 13:00:00',TIMESTAMP '2021-10-09 14:00:00');
INSERT INTO Meetings Values(45680,503,300,3,DATE '2021-10-09',TIMESTAMP '2021-10-09 13:00:00',TIMESTAMP '2021-10-09 14:00:00');
INSERT INTO Meetings Values(45680,506,300,3,DATE '2021-10-09',TIMESTAMP '2021-10-09 13:00:00',TIMESTAMP '2021-10-09 14:00:00');

INSERT INTO Meetings Values(45681,502,302,5,DATE '2021-10-09',TIMESTAMP '2021-10-09 14:00:00',TIMESTAMP '2021-10-09 16:00:00');
INSERT INTO Meetings Values(45681,504,302,5,DATE '2021-10-09',TIMESTAMP '2021-10-09 14:00:00',TIMESTAMP '2021-10-09 16:00:00');
INSERT INTO Meetings Values(45681,505,302,5,DATE '2021-10-09',TIMESTAMP '2021-10-09 14:00:00',TIMESTAMP '2021-10-09 16:00:00');
INSERT INTO Meetings Values(45681,507,302,5,DATE '2021-10-09',TIMESTAMP '2021-10-09 14:00:00',TIMESTAMP '2021-10-09 16:00:00');
INSERT INTO Meetings Values(45681,509,302,5,DATE '2021-10-09',TIMESTAMP '2021-10-09 14:00:00',TIMESTAMP '2021-10-09 16:00:00');

INSERT INTO Meetings Values(45682,502,302,4,DATE '2021-10-10',TIMESTAMP '2021-10-10 12:00:00',TIMESTAMP '2021-10-10 14:00:00');
INSERT INTO Meetings Values(45682,504,302,4,DATE '2021-10-10',TIMESTAMP '2021-10-10 12:00:00',TIMESTAMP '2021-10-10 14:00:00');
INSERT INTO Meetings Values(45682,505,302,4,DATE '2021-10-10',TIMESTAMP '2021-10-10 12:00:00',TIMESTAMP '2021-10-10 14:00:00');
INSERT INTO Meetings Values(45682,508,302,4,DATE '2021-10-10',TIMESTAMP '2021-10-10 12:00:00',TIMESTAMP '2021-10-10 14:00:00');


INSERT INTO Meetings Values(45683,501,300,5,DATE '2021-10-11',TIMESTAMP '2021-10-11 15:00:00',TIMESTAMP '2021-10-11 16:00:00');
INSERT INTO Meetings Values(45683,504,300,5,DATE '2021-10-11',TIMESTAMP '2021-10-11 15:00:00',TIMESTAMP '2021-10-11 16:00:00');
INSERT INTO Meetings Values(45683,505,300,5,DATE '2021-10-11',TIMESTAMP '2021-10-11 15:00:00',TIMESTAMP '2021-10-11 16:00:00');
INSERT INTO Meetings Values(45683,506,300,5,DATE '2021-10-11',TIMESTAMP '2021-10-11 15:00:00',TIMESTAMP '2021-10-11 16:00:00');
INSERT INTO Meetings Values(45683,507,300,5,DATE '2021-10-11',TIMESTAMP '2021-10-11 15:00:00',TIMESTAMP '2021-10-11 16:00:00');

INSERT INTO Meetings Values(45684,503,301,4,DATE '2021-10-11',TIMESTAMP '2021-10-11 16:00:00',TIMESTAMP '2021-10-11 17:00:00');
INSERT INTO Meetings Values(45684,511,301,4,DATE '2021-10-11',TIMESTAMP '2021-10-11 16:00:00',TIMESTAMP '2021-10-11 17:00:00');
INSERT INTO Meetings Values(45684,502,301,4,DATE '2021-10-11',TIMESTAMP '2021-10-11 16:00:00',TIMESTAMP '2021-10-11 17:00:00');
INSERT INTO Meetings Values(45684,510,301,4,DATE '2021-10-11',TIMESTAMP '2021-10-11 16:00:00',TIMESTAMP '2021-10-11 17:00:00');


INSERT INTO Meetings Values(45685,501,300,3,DATE '2021-10-12',TIMESTAMP '2021-10-12 13:00:00',TIMESTAMP '2021-10-12 14:00:00');
INSERT INTO Meetings Values(45685,503,300,3,DATE '2021-10-12',TIMESTAMP '2021-10-12 13:00:00',TIMESTAMP '2021-10-12 14:00:00');
INSERT INTO Meetings Values(45685,506,300,3,DATE '2021-10-12',TIMESTAMP '2021-10-12 13:00:00',TIMESTAMP '2021-10-12 14:00:00');

INSERT INTO Meetings Values(45686,502,302,5,DATE '2021-10-12',TIMESTAMP '2021-10-12 14:00:00',TIMESTAMP '2021-10-12 16:00:00');
INSERT INTO Meetings Values(45686,504,302,5,DATE '2021-10-12',TIMESTAMP '2021-10-12 14:00:00',TIMESTAMP '2021-10-12 16:00:00');
INSERT INTO Meetings Values(45686,505,302,5,DATE '2021-10-12',TIMESTAMP '2021-10-12 14:00:00',TIMESTAMP '2021-10-12 16:00:00');
INSERT INTO Meetings Values(45686,507,302,5,DATE '2021-10-12',TIMESTAMP '2021-10-12 14:00:00',TIMESTAMP '2021-10-12 16:00:00');
INSERT INTO Meetings Values(45686,509,302,5,DATE '2021-10-12',TIMESTAMP '2021-10-12 14:00:00',TIMESTAMP '2021-10-12 16:00:00');

INSERT INTO Meetings Values(45687,502,302,4,DATE '2021-10-13',TIMESTAMP '2021-10-13 12:00:00',TIMESTAMP '2021-10-13 14:00:00');
INSERT INTO Meetings Values(45687,504,302,4,DATE '2021-10-13',TIMESTAMP '2021-10-13 12:00:00',TIMESTAMP '2021-10-13 14:00:00');
INSERT INTO Meetings Values(45687,505,302,4,DATE '2021-10-13',TIMESTAMP '2021-10-13 12:00:00',TIMESTAMP '2021-10-13 14:00:00');
INSERT INTO Meetings Values(45687,508,302,4,DATE '2021-10-13',TIMESTAMP '2021-10-13 12:00:00',TIMESTAMP '2021-10-13 14:00:00');


INSERT INTO Meetings Values(45688,501,300,5,DATE '2021-10-14',TIMESTAMP '2021-10-14 15:00:00',TIMESTAMP '2021-10-14 16:00:00');
INSERT INTO Meetings Values(45688,504,300,5,DATE '2021-10-14',TIMESTAMP '2021-10-14 15:00:00',TIMESTAMP '2021-10-14 16:00:00');
INSERT INTO Meetings Values(45688,505,300,5,DATE '2021-10-14',TIMESTAMP '2021-10-14 15:00:00',TIMESTAMP '2021-10-14 16:00:00');
INSERT INTO Meetings Values(45688,506,300,5,DATE '2021-10-14',TIMESTAMP '2021-10-14 15:00:00',TIMESTAMP '2021-10-14 16:00:00');
INSERT INTO Meetings Values(45688,507,300,5,DATE '2021-10-14',TIMESTAMP '2021-10-14 15:00:00',TIMESTAMP '2021-10-14 16:00:00');

INSERT INTO Meetings Values(45689,503,301,4,DATE '2021-10-15',TIMESTAMP '2021-10-15 16:00:00',TIMESTAMP '2021-10-15 17:00:00');
INSERT INTO Meetings Values(45689,511,301,4,DATE '2021-10-15',TIMESTAMP '2021-10-15 16:00:00',TIMESTAMP '2021-10-15 17:00:00');
INSERT INTO Meetings Values(45689,502,301,4,DATE '2021-10-15',TIMESTAMP '2021-10-15 16:00:00',TIMESTAMP '2021-10-15 17:00:00');
INSERT INTO Meetings Values(45689,510,301,4,DATE '2021-10-15',TIMESTAMP '2021-10-15 16:00:00',TIMESTAMP '2021-10-15 17:00:00');


INSERT INTO Meetings Values(45690,501,300,3,DATE '2021-10-16',TIMESTAMP '2021-10-16 13:00:00',TIMESTAMP '2021-10-16 14:00:00');
INSERT INTO Meetings Values(45690,503,300,3,DATE '2021-10-16',TIMESTAMP '2021-10-16 13:00:00',TIMESTAMP '2021-10-16 14:00:00');
INSERT INTO Meetings Values(45690,506,300,3,DATE '2021-10-16',TIMESTAMP '2021-10-16 13:00:00',TIMESTAMP '2021-10-16 14:00:00');

INSERT INTO Meetings Values(45691,502,302,5,DATE '2021-10-16',TIMESTAMP '2021-10-16 14:00:00',TIMESTAMP '2021-10-16 16:00:00');
INSERT INTO Meetings Values(45691,504,302,5,DATE '2021-10-16',TIMESTAMP '2021-10-16 14:00:00',TIMESTAMP '2021-10-16 16:00:00');
INSERT INTO Meetings Values(45691,505,302,5,DATE '2021-10-16',TIMESTAMP '2021-10-16 14:00:00',TIMESTAMP '2021-10-16 16:00:00');
INSERT INTO Meetings Values(45691,507,302,5,DATE '2021-10-16',TIMESTAMP '2021-10-16 14:00:00',TIMESTAMP '2021-10-16 16:00:00');
INSERT INTO Meetings Values(45691,509,302,5,DATE '2021-10-16',TIMESTAMP '2021-10-16 14:00:00',TIMESTAMP '2021-10-16 16:00:00');

INSERT INTO Meetings Values(45692,502,302,4,DATE '2021-10-17',TIMESTAMP '2021-10-17 12:00:00',TIMESTAMP '2021-10-17 14:00:00');
INSERT INTO Meetings Values(45692,504,302,4,DATE '2021-10-17',TIMESTAMP '2021-10-17 12:00:00',TIMESTAMP '2021-10-17 14:00:00');
INSERT INTO Meetings Values(45692,505,302,4,DATE '2021-10-17',TIMESTAMP '2021-10-17 12:00:00',TIMESTAMP '2021-10-17 14:00:00');
INSERT INTO Meetings Values(45692,508,302,4,DATE '2021-10-17',TIMESTAMP '2021-10-17 12:00:00',TIMESTAMP '2021-10-17 14:00:00');


create table Covid_Test (  
    Test_ID number not null,  
    Scan_ID number not null, 
    Emp_ID number not null,  
    Test_Date	date not null,  
    Typeoftest varchar2(10) not null,  
    Locationoftest varchar2(10) not null,  
    Test_Result varchar2(10) not null,  
    PRIMARY KEY(Test_ID),  
    FOREIGN KEY(Emp_ID) References Employee, 
    FOREIGN KEY(Scan_ID) References Scanning 
);

INSERT INTO Covid_Test VALUES (456,10,501,DATE '2021-10-08','RTPCR','Onsite','Positive');
INSERT INTO Covid_Test VALUES (457,27,501,DATE '2021-10-09','RTPCR','Offsite','Positive');
INSERT INTO Covid_Test VALUES (458,11,522,DATE '2021-10-08','RTPCR','Onsite','Positive');
INSERT INTO Covid_Test VALUES (459,12,512,DATE '2021-10-14','RTPCR','Offsite','Negative');
INSERT INTO Covid_Test VALUES (460,13,506,DATE '2021-10-09','RTPCR','Onsite','Positive');
INSERT INTO Covid_Test VALUES (461,14,520,DATE '2021-10-10','RTPCR','Onsite','Positive');
INSERT INTO Covid_Test VALUES (462,15,521,DATE '2021-10-11','RTPCR','Onsite','Negative');
INSERT INTO Covid_Test VALUES (463,16,517,DATE '2021-10-09','RTPCR','Offsite','Positive');
INSERT INTO Covid_Test VALUES (464,17,518,DATE '2021-10-10','RTPCR','Offsite','Positive');
INSERT INTO Covid_Test VALUES (465,18,519,DATE '2021-10-16','RTPCR','Offsite','Positive');
INSERT INTO Covid_Test VALUES (466,19,503,DATE '2021-10-12','RTPCR','Onsite','Negative');
INSERT INTO Covid_Test VALUES (467,20,505,DATE '2021-10-11','RTPCR','Onsite','Positive');
INSERT INTO Covid_Test VALUES (468,21,510,DATE '2021-10-08','RTPCR','Onsite','Positive');
INSERT INTO Covid_Test VALUES (469,22,501,DATE '2021-10-14','RTPCR','Offsite','Negative');
INSERT INTO Covid_Test VALUES (470,23,509,DATE '2021-10-14','RTPCR','Onsite','Negative');
INSERT INTO Covid_Test VALUES (471,24,506,DATE '2021-10-15','RTPCR','Offsite','Negative');
INSERT INTO Covid_Test VALUES (472,25,521,DATE '2021-10-17','RTPCR','Onsite','Negative');
INSERT INTO Covid_Test VALUES (473,26,515,DATE '2021-10-13','RTPCR','Offsite','Positive');


create table Self_Report( 
 SelfReport_ID number not null, 
 Emp_ID number not null, 
 SelfReport_Date date not null, 
 Symptom varchar(30) not null, 
 PRIMARY KEY(SelfReport_ID), 
 FOREIGN KEY(Emp_ID) References Employee 
);


INSERT INTO Self_Report VALUES(201,501,DATE '2021-10-08','Cold');
INSERT INTO Self_Report VALUES(202,506,DATE '2021-10-08','Cough');
INSERT INTO Self_Report VALUES(203,508,DATE '2021-10-08','Vomiting');
INSERT INTO Self_Report VALUES(204,510,DATE '2021-10-08','Fever');
INSERT INTO Self_Report VALUES(205,512,DATE '2021-10-08','Lossoftaste');
INSERT INTO Self_Report VALUES(206,515,DATE '2021-10-08','Cough');
INSERT INTO Self_Report VALUES(207,520,DATE '2021-10-08','Fever');
INSERT INTO Self_Report VALUES(208,521,DATE '2021-10-08','Lossoftaste');
INSERT INTO Self_Report VALUES(209,522,DATE '2021-10-08','Cold');
INSERT INTO Self_Report VALUES(210,523,DATE '2021-10-08','Fever');
INSERT INTO Self_Report VALUES(301,501,DATE '2021-10-09','Cold');
INSERT INTO Self_Report VALUES(302,503,DATE '2021-10-09','Fever');
INSERT INTO Self_Report VALUES(303,504,DATE '2021-10-09','Lossoftaste');
INSERT INTO Self_Report VALUES(304,506,DATE '2021-10-09','Fever');
INSERT INTO Self_Report VALUES(305,507,DATE '2021-10-09','Cough');
INSERT INTO Self_Report VALUES(306,509,DATE '2021-10-09','Vomiting');
INSERT INTO Self_Report VALUES(307,512,DATE '2021-10-09','Lossoftaste');
INSERT INTO Self_Report VALUES(308,515,DATE '2021-10-09','Fever');
INSERT INTO Self_Report VALUES(309,518,DATE '2021-10-09','Cold');
INSERT INTO Self_Report VALUES(310,520,DATE '2021-10-09','Cough');
INSERT INTO Self_Report VALUES(401,506,DATE '2021-10-10','Cold');
INSERT INTO Self_Report VALUES(402,509,DATE '2021-10-10','Vomiting');
INSERT INTO Self_Report VALUES(403,511,DATE '2021-10-10','Fever');
INSERT INTO Self_Report VALUES(404,514,DATE '2021-10-10','Cough');
INSERT INTO Self_Report VALUES(405,515,DATE '2021-10-10','Lossoftaste');
INSERT INTO Self_Report VALUES(406,516,DATE '2021-10-10','Vomiting');
INSERT INTO Self_Report VALUES(407,517,DATE '2021-10-10','Cold');
INSERT INTO Self_Report VALUES(408,520,DATE '2021-10-10','Fever');
INSERT INTO Self_Report VALUES(409,521,DATE '2021-10-10','Cough');
INSERT INTO Self_Report VALUES(501,503,DATE '2021-10-11','Cough');
INSERT INTO Self_Report VALUES(502,505,DATE '2021-10-11','Fever');
INSERT INTO Self_Report VALUES(503,506,DATE '2021-10-11','Lossoftaste');
INSERT INTO Self_Report VALUES(504,508,DATE '2021-10-11','Cough');
INSERT INTO Self_Report VALUES(505,509,DATE '2021-10-11','Vomiting');
INSERT INTO Self_Report VALUES(506,512,DATE '2021-10-11','Cold');
INSERT INTO Self_Report VALUES(507,514,DATE '2021-10-11','Cold');
INSERT INTO Self_Report VALUES(508,515,DATE '2021-10-11','Cough');
INSERT INTO Self_Report VALUES(509,520,DATE '2021-10-11','Vomiting');
INSERT INTO Self_Report VALUES(510,521,DATE '2021-10-11','Fever');
INSERT INTO Self_Report VALUES(601,501,DATE '2021-10-12','Vomiting');
INSERT INTO Self_Report VALUES(602,505,DATE '2021-10-12','Cold');
INSERT INTO Self_Report VALUES(603,507,DATE '2021-10-12','Lossoftaste');
INSERT INTO Self_Report VALUES(604,508,DATE '2021-10-12','Cough');
INSERT INTO Self_Report VALUES(605,509,DATE '2021-10-12','Fever');
INSERT INTO Self_Report VALUES(606,511,DATE '2021-10-12','Vomiting');
INSERT INTO Self_Report VALUES(607,512,DATE '2021-10-12','Cold');
INSERT INTO Self_Report VALUES(608,515,DATE '2021-10-12','Fever');
INSERT INTO Self_Report VALUES(609,521,DATE '2021-10-12','Vomiting');
INSERT INTO Self_Report VALUES(610,523,DATE '2021-10-12','Cough');
INSERT INTO Self_Report VALUES(701,501,DATE '2021-10-13','Cough');
INSERT INTO Self_Report VALUES(702,506,DATE '2021-10-13','Cold');
INSERT INTO Self_Report VALUES(703,508,DATE '2021-10-13','Vomiting');
INSERT INTO Self_Report VALUES(704,510,DATE '2021-10-13','Fever');
INSERT INTO Self_Report VALUES(705,512,DATE '2021-10-13','Fever');
INSERT INTO Self_Report VALUES(706,515,DATE '2021-10-13','Lossoftaste');
INSERT INTO Self_Report VALUES(707,520,DATE '2021-10-13','Cough');
INSERT INTO Self_Report VALUES(708,521,DATE '2021-10-13','Cold');
INSERT INTO Self_Report VALUES(709,522,DATE '2021-10-13','Fever');
INSERT INTO Self_Report VALUES(710,523,DATE '2021-10-13','Vomiting');
INSERT INTO Self_Report VALUES(801,501,DATE '2021-10-14','Cough');
INSERT INTO Self_Report VALUES(802,503,DATE '2021-10-14','Fever');
INSERT INTO Self_Report VALUES(803,504,DATE '2021-10-14','Cold');
INSERT INTO Self_Report VALUES(804,506,DATE '2021-10-14','Cough');
INSERT INTO Self_Report VALUES(805,507,DATE '2021-10-14','Cold');
INSERT INTO Self_Report VALUES(806,509,DATE '2021-10-14','Fever');
INSERT INTO Self_Report VALUES(807,512,DATE '2021-10-14','Cough');
INSERT INTO Self_Report VALUES(808,515,DATE '2021-10-14','Lossoftaste');
INSERT INTO Self_Report VALUES(809,518,DATE '2021-10-14','Cough');
INSERT INTO Self_Report VALUES(810,520,DATE '2021-10-14','Cold');
INSERT INTO Self_Report VALUES(901,506,DATE '2021-10-15','Vomiting');
INSERT INTO Self_Report VALUES(902,509,DATE '2021-10-15','Cough');
INSERT INTO Self_Report VALUES(903,511,DATE '2021-10-15','Fever');
INSERT INTO Self_Report VALUES(904,514,DATE '2021-10-15','Lossoftaste');
INSERT INTO Self_Report VALUES(905,515,DATE '2021-10-15','Vomiting');
INSERT INTO Self_Report VALUES(906,516,DATE '2021-10-15','Cold');
INSERT INTO Self_Report VALUES(907,517,DATE '2021-10-15','Cough');
INSERT INTO Self_Report VALUES(908,520,DATE '2021-10-15','Fever');
INSERT INTO Self_Report VALUES(909,521,DATE '2021-10-15','Cough');
INSERT INTO Self_Report VALUES(910,524,DATE '2021-10-15','Cold');
INSERT INTO Self_Report VALUES(211,503,DATE '2021-10-16','Cough');
INSERT INTO Self_Report VALUES(212,505,DATE '2021-10-16','Cold');
INSERT INTO Self_Report VALUES(213,506,DATE '2021-10-16','Fever');
INSERT INTO Self_Report VALUES(214,508,DATE '2021-10-16','Vomiting');
INSERT INTO Self_Report VALUES(215,509,DATE '2021-10-16','Lossoftaste');
INSERT INTO Self_Report VALUES(216,512,DATE '2021-10-16','Vomiting');
INSERT INTO Self_Report VALUES(217,514,DATE '2021-10-16','Cough');
INSERT INTO Self_Report VALUES(218,515,DATE '2021-10-16','Cold');
INSERT INTO Self_Report VALUES(219,520,DATE '2021-10-16','Fever');
INSERT INTO Self_Report VALUES(220,521,DATE '2021-10-16','Cough');
INSERT INTO Self_Report VALUES(311,501,DATE '2021-10-17','Lossoftaste');
INSERT INTO Self_Report VALUES(312,505,DATE '2021-10-17','Vomiting');
INSERT INTO Self_Report VALUES(313,507,DATE '2021-10-17','Cold');
INSERT INTO Self_Report VALUES(314,508,DATE '2021-10-17','Cough');
INSERT INTO Self_Report VALUES(315,509,DATE '2021-10-17','Fever');
INSERT INTO Self_Report VALUES(316,511,DATE '2021-10-17','Cough');
INSERT INTO Self_Report VALUES(317,512,DATE '2021-10-17','Cold');
INSERT INTO Self_Report VALUES(318,515,DATE '2021-10-17','Cough');
INSERT INTO Self_Report VALUES(319,521,DATE '2021-10-17','Cold');
INSERT INTO Self_Report VALUES(320,523,DATE '2021-10-17','Fever');

create table HealthStatus ( 
    Test_ID number not null, 
    Emp_ID number not null, 
    Status_Date date not null, 
    HealthStatus varchar2(30), 
    PRIMARY KEY(Test_ID,Emp_ID), 
    FOREIGN KEY(Emp_ID) References Employee 
);

INSERT INTO HealthStatus VALUES (27,501,DATE '2021-10-09','Sick');
INSERT INTO HealthStatus VALUES (11,522,DATE '2021-10-09','Hospitalized');
INSERT INTO HealthStatus VALUES (13,506,DATE '2021-10-10','Sick');
INSERT INTO HealthStatus VALUES (14,520,DATE '2021-10-11','Well');
INSERT INTO HealthStatus VALUES (16,517,DATE '2021-10-10','Hospitalized');
INSERT INTO HealthStatus VALUES (17,518,DATE '2021-10-11','Sick');
INSERT INTO HealthStatus VALUES (18,519,DATE '2021-10-17','Hospitalized');
INSERT INTO HealthStatus VALUES (20,505,DATE '2021-10-12','Well');
INSERT INTO HealthStatus VALUES (21,510,DATE '2021-10-09','Sick');
INSERT INTO HealthStatus VALUES (26,515,DATE '2021-10-14','Sick');


create table CaseDetails ( 
    Test_ID number not null, 
    Emp_ID number not null, 
    Symptomatic varchar2(20) not null, 
    PRIMARY KEY(Test_ID,Emp_ID), 
    FOREIGN KEY(Emp_ID) References Employee, 
    FOREIGN KEY(Test_ID) References Covid_Test 
);

INSERT INTO CaseDetails VALUES (456,501,'Asymptomatic');
INSERT INTO CaseDetails VALUES (458,522,'Symptomatic');
INSERT INTO CaseDetails VALUES (460,506,'Asymptomatic');
INSERT INTO CaseDetails VALUES (461,520,'Asymptomatic');
INSERT INTO CaseDetails VALUES (463,517,'Symptomatic');
INSERT INTO CaseDetails VALUES (464,518,'Symptomatic');
INSERT INTO CaseDetails VALUES (465,519,'Asymptomatic');
INSERT INTO CaseDetails VALUES (467,505,'Asymptomatic');
INSERT INTO CaseDetails VALUES (468,510,'Symptomatic');
INSERT INTO CaseDetails VALUES (473,515,'Asymptomatic');


create table Floor( 
 Floor_ID number not null, 
 Emp_ID number not null, 
 PRIMARY KEY(Floor_ID,Emp_ID), 
 FOREIGN KEY(Emp_ID) References Employee 
);

insert into Floor values(101,500);
insert into Floor values(101,501);
insert into Floor values(101,502);
insert into Floor values(101,503);
insert into Floor values(101,504);
insert into Floor values(101,505);
insert into Floor values(101,506);
insert into Floor values(101,507);
insert into Floor values(101,508);
insert into Floor values(101,509);
insert into Floor values(102,510);
insert into Floor values(102,512);
insert into Floor values(102,513);
insert into Floor values(102,514);
insert into Floor values(102,515);
insert into Floor values(102,516);
insert into Floor values(102,517);
insert into Floor values(102,518);
insert into Floor values(102,519);
insert into Floor values(103,520);
insert into Floor values(103,521);
insert into Floor values(103,522);
insert into Floor values(103,523);

Create table Notification(
 Notification_ID number not null,
 Emp_ID number not null,
 Notification_Date date not null,
 Notification_Type varchar(20) not null,
 PRIMARY KEY(Notification_ID),
 FOREIGN KEY(Emp_ID) References Employee
);

INSERT INTO Notification VALUES(1,501,DATE '2021-10-09','Mandatory');
INSERT INTO Notification VALUES(2,502,DATE '2021-10-08','Optional');
INSERT INTO Notification VALUES(3,522,DATE '2021-10-09','Mandatory');
INSERT INTO Notification VALUES(4,506,DATE '2021-10-10','Mandatory');
INSERT INTO Notification VALUES(5,520,DATE '2021-10-11','Mandatory');
INSERT INTO Notification VALUES(6,517,DATE '2021-10-10','Mandatory');
INSERT INTO Notification VALUES(7,518,DATE '2021-10-11','Mandatory');
INSERT INTO Notification VALUES(8,519,DATE '2021-10-17','Mandatory');
INSERT INTO Notification VALUES(9,505,DATE '2021-10-12','Mandatory');
INSERT INTO Notification VALUES(10,510,DATE '2021-10-09','Mandatory');
INSERT INTO Notification VALUES(11,515,DATE '2021-10-14','Mandatory');
INSERT INTO Notification VALUES(12,503,DATE '2021-10-08','Optional');
INSERT INTO Notification VALUES(13,508,DATE '2021-10-08','Optional');
INSERT INTO Notification VALUES(14,512,DATE '2021-10-08','Optional');
INSERT INTO Notification VALUES(15,504,DATE '2021-10-08','Optional');