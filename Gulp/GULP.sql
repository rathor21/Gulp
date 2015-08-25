--------------------------------------------------------
--  File created - Tuesday-August-25-2015   
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
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','check',2,'08/237/2015','14','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','adfasf',1,'08/237/2015','14','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','good',4,'08/237/2015','14','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','review for buffalo, check check ',2,'08/237/2015','14','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','good',4,'11/11/2014','1','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','great',5,'11/12/2014','2','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','bad',2,'11/13/2014','3','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','ok',3,'11/14/2014','4','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','fine',3,'11/15/2014','5','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','good',4,'11/16/2014','6','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','great',5,'11/17/2014','7','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','ok',3,'11/18/2014','8','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','fine',3,'11/19/2014','9','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','bad',2,'11/20/2014','10','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','terrible',1,'11/21/2014','11','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Millers Ale House','best',5,'11/22/2014','12','Beer','99 Rock Rd, New York, New York');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','good',4,'11/23/2014','1','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','great',5,'11/24/2014','2','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','bad',2,'11/25/2014','3','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','ok',3,'11/26/2014','4','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','fine',3,'11/27/2014','5','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','good',4,'11/28/2014','6','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','terrible',1,'12/03/2014','11','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Cheesecake Factory','best',5,'12/04/2014','12','Desserts and Food','7 Diamond Ct., West Windsor, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','good',4,'12/05/2014','1','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','great',5,'12/06/2014','2','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','bad',2,'12/07/2014','3','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','ok',3,'12/08/2014','4','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','fine',3,'12/09/2014','5','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','good',4,'12/10/2014','6','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','great',5,'12/11/2014','7','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','ok',3,'12/12/2014','8','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','fine',3,'12/13/2014','9','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','bad',2,'12/14/2014','10','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','terrible',1,'12/15/2014','11','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Applebees','best',5,'12/16/2014','12','American','7 Woodland Ct, Princeton, NJ');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','good',4,'12/17/2014','1','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','great',5,'12/18/2014','2','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','bad',2,'12/19/2014','3','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','ok',3,'12/20/2014','4','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','fine',3,'12/21/2014','5','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','good',4,'12/22/2014','6','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','great',5,'12/23/2014','7','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','ok',3,'12/24/2014','8','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','fine',3,'12/25/2014','9','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','bad',2,'12/26/2014','10','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','terrible',1,'12/27/2014','11','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('Buffalo Wild Wings','best',5,'12/28/2014','12','Wings','9 Forest Rd, Rockville, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','good',4,'12/29/2014','1','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','great',5,'12/30/2014','2','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','bad',2,'12/31/2014','3','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','ok',3,'01/01/2015','4','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','fine',3,'01/02/2015','5','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','good',4,'01/03/2015','6','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','great',5,'01/04/2015','7','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','ok',3,'01/05/2015','8','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','fine',3,'01/06/2015','9','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','bad',2,'01/07/2015','10','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','terrible',1,'01/08/2015','11','Fast Food','7 Hogs Meade Rd, Germantown, MD');
Insert into TESTDB.RESTAURANT (RES_NAME,REVIEW,RATING,DATE_REVIEW,USER_ID,DESCRIPTION,ADDRESS) values ('McDonalds','best',5,'01/09/2015','12','Fast Food','7 Hogs Meade Rd, Germantown, MD');
REM INSERTING into TESTDB.USERPROFILE
SET DEFINE OFF;
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('dontcare','dontcare@gmail.com','420420',null,'null');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Brandon','brandon@gmail.com','99999',1,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('bob','bb@gmail.com','12345',9,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('pope','pope@gmail.com','20154',10,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('max','max@gmail.com','20037',12,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('new_user','new@gmail.com','20037',13,'1234');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('a','a@a.com','123',14,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('user','user@gmaqil.com','123',11,'123');
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Sally','sally@gmail.com','46001',6,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Mike','mike@gmail.com','46001',7,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Jess','jess@gmail.com','95644',8,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Tom','tom@gmail.com','66554',9,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Randy','randy@gmail.com','66554',10,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('John','john@gmail.com','18550',11,null);
Insert into TESTDB.USERPROFILE (USER_NAME,EMAIL,ZIPCODE,USER_ID,PWD) values ('Sunny','sunny@gmail.com','98550',12,null);
