--------------------------------------------------------
--  File created - Wednesday-August-26-2015   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table RESTAURANT
--------------------------------------------------------

  CREATE TABLE "TESTDB"."RESTAURANT" 
   (	"RES_NAME" VARCHAR2(50 BYTE), 
	"REVIEW" VARCHAR2(200 BYTE), 
	"RATING" NUMBER(10,2), 
	"DATE_REVIEW" VARCHAR2(50 BYTE), 
	"USER_ID" VARCHAR2(50 BYTE), 
	"DESCRIPTION" VARCHAR2(200 BYTE), 
	"ADDRESS" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERPROFILE
--------------------------------------------------------

  CREATE TABLE "TESTDB"."USERPROFILE" 
   (	"USER_NAME" VARCHAR2(50 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"ZIPCODE" VARCHAR2(20 BYTE), 
	"USER_ID" NUMBER(3,0), 
	"PWD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TESTDB.RESTAURANT
SET DEFINE OFF;
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','got better',5,'08/26/2015','14','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','best',5,'08/26/2015','14','Family Restaurant','123 Dog Road, Nowhere, MT');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','bad',2,'11/13/2014','3','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','bad',2,'11/20/2014','10','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','terrible',1,'11/21/2014','11','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','good',4,'11/23/2014','1','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','great',5,'11/24/2014','2','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','good',4,'12/10/2014','6','Family Restaurant','123 Dog Road, Nowhere, MT');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','great',5,'12/18/2014','2','wings','11 wing street, windland');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','bad',2,'12/19/2014','3','wings','11 wing street, windland');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','good',4,'12/29/2014','1','Fast Food','1000 Ronald McDonald Way, Detroit, MI');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','great',5,'12/30/2014','2','Fast Food','1000 Ronald McDonald Way, Detroit, MI');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','bad',2,'12/31/2014','3','Fast Food','1000 Ronald McDonald Way, Detroit, MI');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','ok',3,'01/01/2015','4','Fast Food','1000 Ronald McDonald Way, Detroit, MI');
REM INSERTING into TESTDB.USERPROFILE
SET DEFINE OFF;
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('dontcare','dontcare@gmail.com','420420',null,'null');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Brandon','brandon@gmail.com','99999',1,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('bob','bb@gmail.com','12345',9,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('pope','pope@gmail.com','20154',10,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('max','max@gmail.com','20037',12,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('new_user','new@gmail.com','20037',13,'1234');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('a','b@b.com','123',14,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('user','user@gmaqil.com','123',11,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Sally','sally@gmail.com','46001',6,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Mike','mike@gmail.com','46001',7,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Jess','jess@gmail.com','95644',8,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Tom','tom@gmail.com','66554',9,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Randy','randy@gmail.com','66554',10,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('John','john@gmail.com','18550',11,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Sunny','sunny@gmail.com','98550',12,null);
