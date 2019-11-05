create database weshare;
use weshare;

create table USER (
   ID INT NOT NULL auto_increment,
   USER_NAME VARCHAR(20),
   PASSWORD  VARCHAR(20),
  PRIMARY KEY (ID)
);


create table MESSAGE (
   ID INT NOT NULL auto_increment,
   USER_ID INT NOT NULL,
   MESSAGE  VARCHAR(150),
   CREATED_DATE TIMESTAMP,
  PRIMARY KEY (ID),
  CONSTRAINT fk_msg FOREIGN KEY (USER_ID) REFERENCES USER (ID)	
);

insert into User (user_name, password) values ('test1', 'test1');
insert into User (user_name, password) values ('test2', 'test2');
insert into User (user_name, password) values ('test3', 'test3');
insert into User (user_name, password) values ('test4', 'test4');
insert into User (user_name, password) values ('test5', 'test5');

COMMIT;
