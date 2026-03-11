drop database if exists `MVC_Basics_2509AB-main`;
create database `MVC_Basics_2509AB-main`;
use `MVC_Basics_2509AB-main`;

create table smartphones(
 Id smallint unsigned      not null auto_increment
,Merk Varchar(50)         not null
,Model Varchar(50)        not null
,Prijs decimal(6,2)          not null
,Geheugen decimal(4,0)         not null
,Besturingssysteem Varchar(25) not null
,Schermgrootte  decimal(3,2) not null
,Releasedatum Date           not null
,MegaPixels decimal(3,0)     not null
,IsActief bit      not null       default 1
,DatumAangemaakt Datetime(6)     not null   default now(6)
,DatumGewijzigd Datetime(6)      not null   default now(6)
,Constraint  Pk_smartphones_Id primary key (Id)
)Engine=InnoDB;


Insert into smartphones(
    Merk
    ,Model
    ,Prijs
    ,Geheugen
    ,Besturingssysteem
    ,Schermgrootte
    ,Releasedatum
    ,MegaPixels
)

Values
('Apple', 'Iphone 16 Pro', 1256.56, 64, 'iOS 18', 6.7, '2025-01-19', 50),
('Samsung', 'Galaxy S25 Ultra', 1539, 128, 'Android 15', 6.1, '2025-02-01', 200),
('Google', 'Pixel 9 Pro', 890, 1024, 'Android 15', 6.3, '2024-12-20', 100);




create table Sneakers(
    Id smallint unsigned not null auto_increment
    ,Merk Varchar(50) not null 
    ,Model Varchar(50)    not null
    ,Type Varchar(25) not null
    ,IsActief bit not null default 1
    ,Opmerking Varchar(255) null default null
    ,DatumAangemaakt Datetime(6) not null   default now(6)
    ,DatumGewijzigd Datetime(6) not null   default now(6)
    ,Constraint  Pk_smartphones_Id primary key (Id)
)Engine=InnoDB;

Insert into Sneakers(
    Merk
    ,Model
    ,Type
)

Values
('Nike', 'Air Jordan 1', 'Hardloop'),
('Adidas', 'Yeazy Boost 25', 'Basketball'),
('New Balance', 'Pixel 9 Pro', 'Casual'),
('Trico', 'New age ', 'Casual'),
('Overlord', 'Tristar 6', 'Hardloop');

create table Horloges(
     Id smallint unsigned not null auto_increment
    ,Merk Varchar(50) not null
    ,Model Varchar(50) not null
    ,Prijs decimal(6,0) not null
    ,IsActief bit not null default 1
    ,Opmerking Varchar(255) null default null
    ,DatumAangemaakt Datetime(6) not null default now(6)
    ,DatumGewijzigd Datetime(6) not null default now(6)
    ,Constraint Pk_Horloges_Id primary key (Id)
)Engine=InnoDB;

Insert into Horloges(
    Merk
    ,Model
    ,Prijs
)

Values
('Rolex', 'Daytona 125600LN', 19800),
('Omega', 'Speedmaster Moonwatch Profesional', 8500),
('Vecheron Constantin', 'Overseas prepatual Calander Ultra-thin', 98000),
('Jeager-LeCoultre', 'Reverse Tribute DuoFace', 17000);