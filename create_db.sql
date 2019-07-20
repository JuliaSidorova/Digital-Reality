CREATE DATABASE Parcking;
Go

--Create table Parcking.dbo.TParcking (
--	id int PRIMARY KEY IDENTITY(1,1),
--	name nvarchar(1024) NOT NULL,
--	db datetime NOT NULL,
--	de datetime NOT NULL,
--	px nvarchar(1000) NOT NULL,
--	py nvarchar(1000) NOT NULL
--);
--Go

create table Parcking.dbo.TPlace (
	id int PRIMARY KEY IDENTITY(1,1),
	db time NULL,
	de time NULL,
	px nvarchar(1000) NOT NULL,
	py nvarchar(1000) NOT NULL,
	[Type] int, --0, 1, 2
);
Go

create table Parcking.dbo.TPlacesStatus(
	id uniqueidentifier PRIMARY KEY,
	IdPlace int NOT NULL,
	[status] int NOT NULL, --1, -1
	DB datetime NOT NULL,
	DE datetime NULL,
	--CONSTRAINT PK_TPAR_TPS FOREIGN KEY (IdParcking) REFERENCES  dbo.TParcking(id),
	CONSTRAINT PK_TPLACE_TPS FOREIGN KEY (IdPlace) REFERENCES  Parcking.dbo.Tplace(id)
);
Go

create table Parcking.dbo.TLoadTMP (
	--IdParcking int NOT NULL,
	IdPlace int NOT NULL,
	[status] int NOT NULL, --0,1
	Dt datetime NOT NULL,
	--CONSTRAINT PK_TPAR_TLTMP FOREIGN KEY (IdParcking) REFERENCES  dbo.TParcking(id),
	CONSTRAINT PK_TPLACE_TLTMP FOREIGN KEY (IdPlace) REFERENCES  Parcking.dbo.Tplace(id)
);
GO

insert into Parcking.dbo.TPlace values (null, null, '6.851480',		'53.211944', 1);
insert into Parcking.dbo.TPlace values (null, null, '6.851429',		'53.211955', 1);
insert into Parcking.dbo.TPlace values (null, null, '6.851377',		'53.211971', 1);
insert into Parcking.dbo.TPlace values (null, null, '6.851320',		'53.211998', 1);
insert into Parcking.dbo.TPlace values (null, null, '6.851264',		'53.212043', 1);
insert into Parcking.dbo.TPlace values (null, null, '6.851207',		'53.212054', 1);
insert into Parcking.dbo.TPlace values (null, null, '6.851148',		'53.212070', 1);
insert into Parcking.dbo.TPlace values (null, null, '6.851094',		'53.212081', 1);
insert into Parcking.dbo.TPlace values (null, null, '6.851044',		'53.212097', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850991',	'53.212113', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850941',	'53.212129', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850897',	'53.212137', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850857',	'53.212145', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850818',	'53.212148', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850771',	'53.212167', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850712',	'53.212199', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.851257',	'53.212353', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.851209',	'53.212362', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.851167',	'53.212383', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.851123',	'53.212391', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.851079',	'53.212412', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.851032',	'53.212423', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850982',	'53.212439', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850950',	'53.212445', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850950',	'53.212445', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850915',	'53.212463', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850879',	'53.212480', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850847',	'53.212482', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850818',	'53.212482', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850778',	'53.212495', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850742',	'53.212506', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850696',	'53.212522', 1);
insert into Parcking.dbo.TPlace values (null, null, '56.850664',	'53.212533', 1);
