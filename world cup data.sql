CREATE DATABASE cricket_Tournament;
CREATE USER admin WITH PASSWORD 'worldcup';
GRANT ALL PRIVILEGES ON DATABASE cricket TO admin;
\c Cricket_Tournament

create TABLE Team (
    TeamID varchar(30) primary key,  
    Country_name varchar(20) NOT NULL,
    Team_rank(3) NOT NULL,,
    Team_name varchar(20) not null,
    number_of_wins(3) NOT NULL,,
    number_of_loses(3) NOT NULL,,
    number_of_points  number(3) NOT NULL,

create table Captain(
    CaptainID varchar(30) primary key,
	Country_name varchar(20) NOT NULL,
    captain_name varchar(30),
    year_of_captaincy number(2),
    team_id varchar(30)
    Number_of_wins number(4),
    CONSTRAINT fK_team FOREIGN KEY (TeamID) references Team
	CONSTRAINT fK_team FOREIGN KEY (country_name) references Team
);
create table Coach(
    coach_id varchar(30) primary key,
    team_id varchar(30)
    coach_name varchar(30),
    country_name varchar(20),
    year_of_Coaching number(2),
   CONSTRAINT fK_team FOREIGN KEY (team_id) references Team
   CONSTRAINT fK_team FOREIGN KEY (country_name) references Team
);
/* Data to insert into Team table */
INSERT INTO Team VALUES ("IND1221","India", 4,"Men in bule",7,1,15);
INSERT INTO Team VALUES ("PAK1222","Pakistan",6,"Men in Green",5,3,11);
INSERT INTO Team VALUES ("SL1223","Sri Lanka", 8,"The Lions",3,4,8);
INSERT INTO Team VALUES ("ENG1224","England",2,"English team",6,3,12);
INSERT INTO Team VALUES ("NZ1225","New Zealand", 1,"Black caps",5,3,11);
INSERT INTO Team VALUES ("AUS1226","Australia",3,"Aussies",7,3,14);
INSERT INTO Team VALUES ("BAN1227","Bangladesh", 7, "The Tigers", 3,5,7);
INSERT INTO Team VALUES ("SA1228","South Africa",5,"Proteas",5,3,7);
INSERT INTO Team VALUES ("AFG1229","Afghanistan",10,"Afghans", 0, 10, 0);
INSERT INTO Team VALUES ("WI1230","West Indies",7,"Men in Maroon",2,9,5);

/* Data to insert into Captain table */
INSERT INTO Captain VALUES ("CAP11451","India","Rohit Sharma","IND1221",8,90);
INSERT INTO Captain VALUES ("CAP11452","Pakistan","Babar Azam","PAK1222",4,65);
INSERT INTO Captain VALUES ("CAP11453","SriLanka","Dimuth Karunaratne","SL1223",5,50);
INSERT INTO Captain VALUES ("CAP11454","England","Eoin Morgan","ENG1224",8,115);
INSERT INTO Captain VALUES ("CAP11455","New Zealand","Kane Williamson","NZ1225",7,100);
INSERT INTO Captain VALUES ("CAP11456","Australia","Aaron Finch","AUS1226",5,80);
INSERT INTO Captain VALUES ("CAP11457","Bangladesh","Tamim Iqbal","BAN1227",3,36);
INSERT INTO Captain VALUES ("CAP11458","South Africa","Temba Bavuma","SA1228",4,45);
INSERT INTO Captain VALUES ("CAP11459","Afghanistan","Mohammad Nabi","AFG1229",3,25);
INSERT INTO Captain VALUES ("CAP11460","West Indies","Kieron Pollard","WI1230",4,70);

/* Data to insert into Coach table */
INSERT INTO Coach VALUES ("CH4171","IND1221","Rahul Dravid","India",7);
INSERT INTO Coach VALUES ("CH4172","Pak1122","Saqain Mushtaq","Pakistan",5);
INSERT INTO Coach VALUES ("CH4173","SL1223","Mickey Arthur","Sri Lanka",6);
INSERT INTO Coach VALUES ("CH4174","ENG1224","Paul Collingwood","England",3);
INSERT INTO Coach VALUES ("CH4175","NZ1225","Gary Stead","New Zealand",4);
INSERT INTO Coach VALUES ("CH4176","AUS1226","Justin Langer","Australia",7);
INSERT INTO Coach VALUES ("CH4177","BAN1227","Russell Domingo","Bangladesh",3);
INSERT INTO Coach VALUES ("CH4178","SA1228","Mark Boucher","South Africa",2);
INSERT INTO Coach VALUES ("CH4179","AFG1229","Lance Klusener","Afghanistan",4);
INSERT INTO Coach VALUES ("CH4180","WI1230","Phil Simmons","WestIndies",10);

GRANT ALL PRIVILEGES ON Team TO admin;
GRANT ALL PRIVILEGES ON Captain TO admin;
GRANT ALL PRIVILEGES ON Coach TO admin;