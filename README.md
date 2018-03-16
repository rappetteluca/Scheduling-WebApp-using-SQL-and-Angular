#  Scheduling WebApp using SQL and Angular
## CS341

## Author(s):

Lucas Rappette

## Date:

3/16/18


## Description:

A web application for a volunteer scheduling system.
- Three types of users:
	- Volunteer: The most basic user. Can sign up and view service requests.
	- Service Manager: Able to do everything a user can and also create new service requests.
	- Admin: Can create more users of any type, can do every a Service Manager can.
- This program contains two mySQL files: one for creating the database and one for destroying it.
- This program requires Angular.js, mySQL, node.js, and php to run.

## How to build the software

Coming soon

## How to use the software

Type "npm start" from the powershell with the mySQL database running

## How the software was tested

Testing was completed by a team of students interacting on the server.
An in-class demonstration was also provided.

## Known bugs and problem areas

The fake backend is still partially being used. An SQL connection is created and users are inserted into the database, however user functionality (including login) is still reliant on the data in the fake backend. Future commits will remove backend features and replace them with TypeORM's object managers.