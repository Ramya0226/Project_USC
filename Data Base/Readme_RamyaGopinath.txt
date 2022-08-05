COVID Testing ER Diagram

 The ER diagram is created using Lucid chart app. The ER diagram consists of entities, attributes and relationships.
The following are the entities in the ER Diagram:
1)	Employee (Consists of the attributes of the employees)
2)	Department (Consists of the attributes of the Department employees belong to)
3)	Floor (Consists of the attributes of the Floor, the employees and department belonging to the floor, along with the number of meeting rooms present on that floor)
4)	Meeting_Room(Consists of the attributes of the meeting room, booking ID and start time of the meeting)
5)	Temperature_check(Consists of the attributes for the temperature checked for the employee and the date of the check)
6)	Self_Report(Consists of the attributes for the employee who self-report the COVID symptoms like cough, fever etc)
7)	Covid_Testing (Consists of the attributes of the COVID testing that was done for the employees whose temperature was high or has self-reported symptoms of COVID)
8)	Symptoms (Consists of the attributes of employee being symptomatic or asymptomatic when tested positive)
9)	Quarantine_Details(Consists of the attributes of health status of the employees who were tested positive and are quarantined and reporting daily on the health status)

According to the problem statement, COVID positive tracking can be done with the entities Covid_testing, Meeting_Room and then back tracking to the Employee details to send alerts to the employees present in that meeting room. Also, with the floor number an alert can be sent to all the employees in that floor to be cautious about the COVID positive cases in their floor.


