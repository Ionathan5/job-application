Instructions:

Run SQL query:
CREATE DATABASE candidatesdb;
use candidatesdb;

create table candidates (
id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR (50),
last_name VARCHAR (50),
email VARCHAR(100),
phone VARCHAR (15),
job_title VARCHAR (100),
start_date DATE
);

update user and password from your database in job-application/src/main/resources/application.proprietes
spring.datasource.url=jdbc:mysql://localhost:3306/candidatesdb
spring.datasource.username=root
spring.datasource.password=password


 Maven clean install, check  skip tests
 
 Run JobApplication as Java Applicaion
 Acces http://localhost:8080/job-application/showCreate
       http://localhost:8080/job-application/displayCandidates