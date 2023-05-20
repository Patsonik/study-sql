/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     22.04.2023 12:42:48                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_2') and o.name = 'FK_R_2_R_2_RODZAJ_B')
alter table R_2
   drop constraint FK_R_2_R_2_RODZAJ_B
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_2') and o.name = 'FK_R_2_R_3_PRZYJECI')
alter table R_2
   drop constraint FK_R_2_R_3_PRZYJECI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rodzaj_badania') and o.name = 'FK_RODZAJ_B_R_1_GRUPA')
alter table Rodzaj_badania
   drop constraint FK_RODZAJ_B_R_1_GRUPA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Rodzaj_badania') and o.name = 'FK_RODZAJ_B_R_7_JEDNOSTK')
alter table Rodzaj_badania
   drop constraint FK_RODZAJ_B_R_7_JEDNOSTK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('przyjecie') and o.name = 'FK_PRZYJECI_R_4_PACJENT')
alter table przyjecie
   drop constraint FK_PRZYJECI_R_4_PACJENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('przyjecie') and o.name = 'FK_PRZYJECI_R_5_OPERACJA')
alter table przyjecie
   drop constraint FK_PRZYJECI_R_5_OPERACJA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('przyjecie') and o.name = 'FK_PRZYJECI_R_6_LEKARZ')
alter table przyjecie
   drop constraint FK_PRZYJECI_R_6_LEKARZ
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Grupa')
            and   type = 'U')
   drop table Grupa
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Pacjent')
            and   type = 'U')
   drop table Pacjent
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_2')
            and   name  = 'R_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_2.R_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_2')
            and   name  = 'R_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_2.R_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('R_2')
            and   type = 'U')
   drop table R_2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rodzaj_badania')
            and   name  = 'R_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rodzaj_badania.R_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Rodzaj_badania')
            and   name  = 'R_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index Rodzaj_badania.R_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Rodzaj_badania')
            and   type = 'U')
   drop table Rodzaj_badania
go

if exists (select 1
            from  sysobjects
           where  id = object_id('jednostka')
            and   type = 'U')
   drop table jednostka
go

if exists (select 1
            from  sysobjects
           where  id = object_id('lekarz')
            and   type = 'U')
   drop table lekarz
go

if exists (select 1
            from  sysobjects
           where  id = object_id('operacja')
            and   type = 'U')
   drop table operacja
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('przyjecie')
            and   name  = 'R_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index przyjecie.R_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('przyjecie')
            and   name  = 'R_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index przyjecie.R_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('przyjecie')
            and   name  = 'R_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index przyjecie.R_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('przyjecie')
            and   type = 'U')
   drop table przyjecie
go

/*==============================================================*/
/* Table: Grupa                                                 */
/*==============================================================*/
create table Grupa (
   id_grupa_badania     int                  not null,
   nazwa_grupa_badaia   varchar(50)          not null,
   constraint PK_GRUPA primary key nonclustered (id_grupa_badania)
)
go

/*==============================================================*/
/* Table: Pacjent                                               */
/*==============================================================*/
create table Pacjent (
   id_pacjent           int                  not null,
   nr_pacjenta          varchar(20)          not null,
   nazwisko             varchar(20)          not null,
   imie                 varchar(20)          not null,
   data_urodzin         datetime             not null,
   constraint PK_PACJENT primary key nonclustered (id_pacjent)
)
go

/*==============================================================*/
/* Table: R_2                                                   */
/*==============================================================*/
create table R_2 (
   id_rodzaj_badanie    int                  not null,
   id_przyjecie         int                  not null,
   wynik_badania        decimal              not null,
   data_badania         datetime             not null,
   constraint PK_R_2 primary key (id_rodzaj_badanie, id_przyjecie)
)
go

/*==============================================================*/
/* Index: R_2_FK                                                */
/*==============================================================*/
create index R_2_FK on R_2 (
id_rodzaj_badanie ASC
)
go

/*==============================================================*/
/* Index: R_3_FK                                                */
/*==============================================================*/
create index R_3_FK on R_2 (
id_przyjecie ASC
)
go

/*==============================================================*/
/* Table: Rodzaj_badania                                        */
/*==============================================================*/
create table Rodzaj_badania (
   id_rodzaj_badanie    int                  not null,
   id_grupa_badania     int                  not null,
   id_jednostka         int                  not null,
   rodzaj_badania       varchar(20)          not null,
   dolna_granica        decimal              not null,
   gorna_granica        decimal              not null,
   constraint PK_RODZAJ_BADANIA primary key nonclustered (id_rodzaj_badanie)
)
go

/*==============================================================*/
/* Index: R_1_FK                                                */
/*==============================================================*/
create index R_1_FK on Rodzaj_badania (
id_grupa_badania ASC
)
go

/*==============================================================*/
/* Index: R_7_FK                                                */
/*==============================================================*/
create index R_7_FK on Rodzaj_badania (
id_jednostka ASC
)
go

/*==============================================================*/
/* Table: jednostka                                             */
/*==============================================================*/
create table jednostka (
   id_jednostka         int                  not null,
   nazwa_jednostki      varchar(30)          not null,
   constraint PK_JEDNOSTKA primary key nonclustered (id_jednostka)
)
go

/*==============================================================*/
/* Table: lekarz                                                */
/*==============================================================*/
create table lekarz (
   id_lekarz            int                  not null,
   identyfikator_lekarz_prowadzacy varchar(30)          not null,
   constraint PK_LEKARZ primary key nonclustered (id_lekarz)
)
go

/*==============================================================*/
/* Table: operacja                                              */
/*==============================================================*/
create table operacja (
   id_operacja          int                  not null,
   identyfikator_operacja varchar(20)          not null,
   data_operacja        datetime             not null,
   constraint PK_OPERACJA primary key nonclustered (id_operacja)
)
go

/*==============================================================*/
/* Table: przyjecie                                             */
/*==============================================================*/
create table przyjecie (
   id_przyjecie         int                  not null,
   id_operacja          int                  null,
   id_lekarz            int                  null,
   id_pacjent           int                  not null,
   data_przyjecia       datetime             not null,
   constraint PK_PRZYJECIE primary key nonclustered (id_przyjecie)
)
go

/*==============================================================*/
/* Index: R_4_FK                                                */
/*==============================================================*/
create index R_4_FK on przyjecie (
id_pacjent ASC
)
go

/*==============================================================*/
/* Index: R_5_FK                                                */
/*==============================================================*/
create index R_5_FK on przyjecie (
id_operacja ASC
)
go

/*==============================================================*/
/* Index: R_6_FK                                                */
/*==============================================================*/
create index R_6_FK on przyjecie (
id_lekarz ASC
)
go

alter table R_2
   add constraint FK_R_2_R_2_RODZAJ_B foreign key (id_rodzaj_badanie)
      references Rodzaj_badania (id_rodzaj_badanie)
go

alter table R_2
   add constraint FK_R_2_R_3_PRZYJECI foreign key (id_przyjecie)
      references przyjecie (id_przyjecie)
go

alter table Rodzaj_badania
   add constraint FK_RODZAJ_B_R_1_GRUPA foreign key (id_grupa_badania)
      references Grupa (id_grupa_badania)
go

alter table Rodzaj_badania
   add constraint FK_RODZAJ_B_R_7_JEDNOSTK foreign key (id_jednostka)
      references jednostka (id_jednostka)
go

alter table przyjecie
   add constraint FK_PRZYJECI_R_4_PACJENT foreign key (id_pacjent)
      references Pacjent (id_pacjent)
go

alter table przyjecie
   add constraint FK_PRZYJECI_R_5_OPERACJA foreign key (id_operacja)
      references operacja (id_operacja)
go

alter table przyjecie
   add constraint FK_PRZYJECI_R_6_LEKARZ foreign key (id_lekarz)
      references lekarz (id_lekarz)
go

