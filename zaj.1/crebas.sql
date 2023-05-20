/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     31.03.2023 16:33:40                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_3') and o.name = 'FK_R_3_R_3_AUTOKAR')
alter table R_3
   drop constraint FK_R_3_R_3_AUTOKAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('R_3') and o.name = 'FK_R_3_R_4_WYPOSAZE')
alter table R_3
   drop constraint FK_R_3_R_4_WYPOSAZE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('autokar') and o.name = 'FK_AUTOKAR_R_2_MODEL')
alter table autokar
   drop constraint FK_AUTOKAR_R_2_MODEL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('model') and o.name = 'FK_MODEL_R_1_MARKA')
alter table model
   drop constraint FK_MODEL_R_1_MARKA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_3')
            and   name  = 'R_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_3.R_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('R_3')
            and   name  = 'R_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index R_3.R_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('R_3')
            and   type = 'U')
   drop table R_3
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('autokar')
            and   name  = 'R_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index autokar.R_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('autokar')
            and   type = 'U')
   drop table autokar
go

if exists (select 1
            from  sysobjects
           where  id = object_id('marka')
            and   type = 'U')
   drop table marka
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('model')
            and   name  = 'R_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index model.R_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('model')
            and   type = 'U')
   drop table model
go

if exists (select 1
            from  sysobjects
           where  id = object_id('wyposazenie')
            and   type = 'U')
   drop table wyposazenie
go

/*==============================================================*/
/* Table: R_3                                                   */
/*==============================================================*/
create table R_3 (
   id_autokar           int                  not null,
   id_wyposazenie       int                  not null,
   constraint PK_R_3 primary key (id_autokar, id_wyposazenie)
)
go

/*==============================================================*/
/* Index: R_3_FK                                                */
/*==============================================================*/
create index R_3_FK on R_3 (
id_autokar ASC
)
go

/*==============================================================*/
/* Index: R_4_FK                                                */
/*==============================================================*/
create index R_4_FK on R_3 (
id_wyposazenie ASC
)
go

/*==============================================================*/
/* Table: autokar                                               */
/*==============================================================*/
create table autokar (
   id_autokar           int                  not null,
   id_model             int                  not null,
   nr_rejestracyjny     varchar(10)          not null,
   rok                  char(4)              not null,
   constraint PK_AUTOKAR primary key nonclustered (id_autokar)
)
go

/*==============================================================*/
/* Index: R_2_FK                                                */
/*==============================================================*/
create index R_2_FK on autokar (
id_model ASC
)
go

/*==============================================================*/
/* Table: marka                                                 */
/*==============================================================*/
create table marka (
   id_marka             int                  not null,
   nazwa_marka          varchar(50)          not null,
   constraint PK_MARKA primary key nonclustered (id_marka)
)
go

/*==============================================================*/
/* Table: model                                                 */
/*==============================================================*/
create table model (
   id_model             int                  not null,
   id_marka             int                  not null,
   nazwa_model          varchar(50)          not null,
   ilosc_miejsc         int                  not null,
   constraint PK_MODEL primary key nonclustered (id_model)
)
go

/*==============================================================*/
/* Index: R_1_FK                                                */
/*==============================================================*/
create index R_1_FK on model (
id_marka ASC
)
go

/*==============================================================*/
/* Table: wyposazenie                                           */
/*==============================================================*/
create table wyposazenie (
   id_wyposazenie       int                  not null,
   nazwa_wyposazenie    varchar(50)          not null,
   constraint PK_WYPOSAZENIE primary key nonclustered (id_wyposazenie)
)
go

alter table R_3
   add constraint FK_R_3_R_3_AUTOKAR foreign key (id_autokar)
      references autokar (id_autokar)
go

alter table R_3
   add constraint FK_R_3_R_4_WYPOSAZE foreign key (id_wyposazenie)
      references wyposazenie (id_wyposazenie)
go

alter table autokar
   add constraint FK_AUTOKAR_R_2_MODEL foreign key (id_model)
      references model (id_model)
go

alter table model
   add constraint FK_MODEL_R_1_MARKA foreign key (id_marka)
      references marka (id_marka)
go

