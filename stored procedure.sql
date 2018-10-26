/*create table first*/
create table EMPLOYEE
(
EID         NUMBER(4),    
ENAME       VARCHAR2(14), 
ESAL        NUMBER(7),  
AGE         NUMBER(5),    
PHN_NO      NUMBER(15),   
CITY        VARCHAR2(20) 
)
/*drop table*/
drop table employee;
/*insert employee*/
create or replace procedure empinsert
(
EID      in    NUMBER,    
ENAME    in    VARCHAR2, 
ESAL    in     NUMBER,  
AGE        in  NUMBER,    
PHN_NO       in NUMBER,   
CITY        in VARCHAR2 
)
as
Begin
Insert into EMPLOYEE 
values (EID,ENAME,ESAL,AGE,PHN_NO,CITY );
End empinsert;
/*execute insert query*/
EXECUTE empinsert(100,'sana',50000,12,030123456,'ISB');
/*select query to see*/
select * from employee;
/*update stored procedure*/
create or replace procedure spempupdate
(
pEID      in    NUMBER,    
pENAME    in    VARCHAR2, 
pESAL    in     NUMBER,  
pAGE        in  NUMBER,    
pPHN_NO       in NUMBER,   
pCITY        in VARCHAR2 
)
as
Begin
update EMPLOYEE 
SET  ENAME=pENAME,ESAL=pESAL,AGE=pAGE,PHN_NO=pPHN_NO,city=pCITY
where EID=pEID;
End spempupdate;
/*execute update procedure*/
EXECUTE spempupdate(101,'hina',1200,24,03004321,'charsadah');
/*select statment*/
select * from employee;
/*delete record via store procedure*/
create or replace procedure spdeleterecord
(
pEID in NUMBER   
)
as 
begin 
  delete from employee where EID=pEID;
END spdeleterecord ;
/*execution*/
EXECUTE spdeleterecord(101);
/*drop procedure*/
create or replace procedure Dar
(
EID      in    NUMBER,    
ENAME    in    VARCHAR2, 
ESAL    in     NUMBER,  
AGE        in  NUMBER,    
PHN_NO       in NUMBER,   
CITY        in VARCHAR2 
)
as
Begin
Insert into EMPLOYEE 
values (EID,ENAME,ESAL,AGE,PHN_NO,CITY );
End Dar; 
/*call drop procedure*/
Drop procedure Dar; 