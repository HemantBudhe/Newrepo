Create table Project(
ProjectID int Primary key,
ProjectName varchar(20)
);

create table Manager(
ProMgrID int primary key,
ProMgrName varchar(20),
ProjectID int,
CoNSTRAINT FOREIGN KEY fK_PrID1 (ProjectID) REFERENCES Project(ProjectID)
);

create table Employee(
empId int primary key,
empName varchar(20),
ProjectID int,
ProMgrID int,
Constraint FOREIGN KEy fk_PrMgrID (ProMgrID) REFERENCES Manager(ProMgrID),
Constraint FOREIGN key fk_PrID (ProjectID) REFERENCES Project(ProjectID)
);

create table Stakeholder(
SholderName varchar(20),
ProjectID int,
Constraint FOREIGN key fk_PrID (ProjectID) REFERENCES Project(ProjectID)
)