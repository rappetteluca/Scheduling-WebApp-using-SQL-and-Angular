CREATE DATABASE VolunteerSystem;
USE VolunteerSystem;

CREATE TABLE User (
	userId INT NOT NULL AUTO_INCREMENT,
	email NVARCHAR (40) NOT NULL,
	password NVARCHAR (20) NOT NULL,
    firstName NVARCHAR(20) NOT NULL,
    lastName NVARCHAR(20) NOT NULL,
	systemRole NVARCHAR(20) NOT NULL,
    PRIMARY KEY(userId)
	
);

CREATE TABLE ServiceRequest (
	id INT NOT NULL AUTO_INCREMENT,
	title NVARCHAR (40) NOT NULL,
    startTime DATETIME NOT NULL,
	endTime DATETIME NOT NULL,
	dateOf DATE NOT NULL,
	location NVARCHAR (50) NOT NULL,
	volunteersNeeded INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ServiceRequestVolunteers (
	userId INT NOT NULL,
	id INT NOT NULL,
	FOREIGN KEY (userId) REFERENCES User(userId),
	FOREIGN KEY (id) REFERENCES ServiceRequest(id)
);

CREATE USER 'username'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON  VolunteerSystem.* TO 'username'@'localhost';
FLUSH PRIVILEGES;