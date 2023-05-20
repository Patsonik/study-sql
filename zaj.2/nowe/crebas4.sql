/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     21.04.2023 17:01:38                          */
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
   where r.fkeyid = object_id('kierowca') and o.name = 'FK_KIEROWCA_R_15_OSOBA')
alter table kierowca
   drop constraint FK_KIEROWCA_R_15_OSOBA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('linia') and o.name = 'FK_LINIA_R_10_MIASTO')
alter table linia
   drop constraint FK_LINIA_R_10_MIASTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('linia') and o.name = 'FK_LINIA_R_18_MIASTO')
alter table linia
   drop constraint FK_LINIA_R_18_MIASTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('linia') and o.name = 'FK_LINIA_R_7_MIASTO')
alter table linia
   drop constraint FK_LINIA_R_7_MIASTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('linia') and o.name = 'FK_LINIA_R_8_MIASTO')
alter table linia
   drop constraint FK_LINIA_R_8_MIASTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('linia') and o.name = 'FK_LINIA_R_9_MIASTO')
alter table linia
   drop constraint FK_LINIA_R_9_MIASTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('model') and o.name = 'FK_MODEL_R_1_MARKA')
alter table model
   drop constraint FK_MODEL_R_1_MARKA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('pasazer') and o.name = 'FK_PASAZER_R_17_OSOBA')
alter table pasazer
   drop constraint FK_PASAZER_R_17_OSOBA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('pilot') and o.name = 'FK_PILOT_R_16_OSOBA')
alter table pilot
   drop constraint FK_PILOT_R_16_OSOBA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('polaczenie') and o.name = 'FK_POLACZEN_R_11_KIEROWCA')
alter table polaczenie
   drop constraint FK_POLACZEN_R_11_KIEROWCA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('polaczenie') and o.name = 'FK_POLACZEN_R_12_KIEROWCA')
alter table polaczenie
   drop constraint FK_POLACZEN_R_12_KIEROWCA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('polaczenie') and o.name = 'FK_POLACZEN_R_13_PILOT')
alter table polaczenie
   drop constraint FK_POLACZEN_R_13_PILOT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('polaczenie') and o.name = 'FK_POLACZEN_R_14_PASAZER')
alter table polaczenie
   drop constraint FK_POLACZEN_R_14_PASAZER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('polaczenie') and o.name = 'FK_POLACZEN_R_5_AUTOKAR')
alter table polaczenie
   drop constraint FK_POLACZEN_R_5_AUTOKAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('polaczenie') and o.name = 'FK_POLACZEN_R_6_LINIA')
alter table polaczenie
   drop constraint FK_POLACZEN_R_6_LINIA
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
            from  sysindexes
           where  id    = object_id('kierowca')
            and   name  = 'R_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index kierowca.R_15_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('kierowca')
            and   type = 'U')
   drop table kierowca
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('linia')
            and   name  = 'R_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index linia.R_18_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('linia')
            and   name  = 'R_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index linia.R_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('linia')
            and   name  = 'R_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index linia.R_9_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('linia')
            and   name  = 'R_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index linia.R_7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('linia')
            and   name  = 'R_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index linia.R_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('linia')
            and   type = 'U')
   drop table linia
go

if exists (select 1
            from  sysobjects
           where  id = object_id('marka')
            and   type = 'U')
   drop table marka
go

if exists (select 1
            from  sysobjects
           where  id = object_id('miasto')
            and   type = 'U')
   drop table miasto
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
           where  id = object_id('osoba')
            and   type = 'U')
   drop table osoba
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pasazer')
            and   name  = 'R_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index pasazer.R_17_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('pasazer')
            and   type = 'U')
   drop table pasazer
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('pilot')
            and   name  = 'R_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index pilot.R_16_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('pilot')
            and   type = 'U')
   drop table pilot
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('polaczenie')
            and   name  = 'R_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index polaczenie.R_14_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('polaczenie')
            and   name  = 'R_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index polaczenie.R_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('polaczenie')
            and   name  = 'R_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index polaczenie.R_12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('polaczenie')
            and   name  = 'R_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index polaczenie.R_11_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('polaczenie')
            and   name  = 'R_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index polaczenie.R_6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('polaczenie')
            and   name  = 'R_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index polaczenie.R_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('polaczenie')
            and   type = 'U')
   drop table polaczenie
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
/* Table: kierowca                                              */
/*==============================================================*/
create table kierowca (
   id_kierowca          int                  not null,
   id_osoba             int                  not null,
   "prawo jazdy"        char(10)             not null,
   constraint PK_KIEROWCA primary key nonclustered (id_kierowca)
)
go

/*==============================================================*/
/* Index: R_15_FK                                               */
/*==============================================================*/
create index R_15_FK on kierowca (
id_osoba ASC
)
go

/*==============================================================*/
/* Table: linia                                                 */
/*==============================================================*/
create table linia (
   id_linia             int                  not null,
   id_miasto            int                  not null,
   mia_id_miasto        int                  not null,
   mia_id_miasto2       int                  not null,
   mia_id_miasto3       int                  not null,
   mia_id_miasto4       int                  not null,
   constraint PK_LINIA primary key nonclustered (id_linia)
)
go

/*==============================================================*/
/* Index: R_8_FK                                                */
/*==============================================================*/
create index R_8_FK on linia (
mia_id_miasto4 ASC
)
go

/*==============================================================*/
/* Index: R_7_FK                                                */
/*==============================================================*/
create index R_7_FK on linia (
mia_id_miasto2 ASC
)
go

/*==============================================================*/
/* Index: R_9_FK                                                */
/*==============================================================*/
create index R_9_FK on linia (
mia_id_miasto3 ASC
)
go

/*==============================================================*/
/* Index: R_10_FK                                               */
/*==============================================================*/
create index R_10_FK on linia (
id_miasto ASC
)
go

/*==============================================================*/
/* Index: R_18_FK                                               */
/*==============================================================*/
create index R_18_FK on linia (
mia_id_miasto ASC
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
/* Table: miasto                                                */
/*==============================================================*/
create table miasto (
   id_miasto            int                  not null,
   nazwa_miasto         varchar(50)          not null,
   constraint PK_MIASTO primary key nonclustered (id_miasto)
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
/* Table: osoba                                                 */
/*==============================================================*/
create table osoba (
   id_osoba             int                  not null,
   imie                 char(20)             not null,
   nazwisko             char(20)             not null,
   adres_1              char(20)             not null,
   adres_2              char(20)             not null,
   adres_3              char(30)             not null,
   constraint PK_OSOBA primary key nonclustered (id_osoba)
)
go

/*==============================================================*/
/* Table: pasazer                                               */
/*==============================================================*/
create table pasazer (
   id_pasazer           int                  not null,
   id_osoba             int                  not null,
   nr_karty             varchar(50)          not null,
   constraint PK_PASAZER primary key nonclustered (id_pasazer)
)
go

/*==============================================================*/
/* Index: R_17_FK                                               */
/*==============================================================*/
create index R_17_FK on pasazer (
id_osoba ASC
)
go

/*==============================================================*/
/* Table: pilot                                                 */
/*==============================================================*/
create table pilot (
   id_pilot             int                  not null,
   id_osoba             int                  not null,
   kursy                char(20)             not null,
   constraint PK_PILOT primary key nonclustered (id_pilot)
)
go

/*==============================================================*/
/* Index: R_16_FK                                               */
/*==============================================================*/
create index R_16_FK on pilot (
id_osoba ASC
)
go

/*==============================================================*/
/* Table: polaczenie                                            */
/*==============================================================*/
create table polaczenie (
   id_polaczenie        int                  not null,
   id_kierowca          int                  not null,
   kie_id_kierowca      int                  not null,
   id_autokar           int                  not null,
   id_linia             int                  not null,
   id_pilot             int                  not null,
   id_pasazer           int                  not null,
   data_wyj             datetime             not null,
   constraint PK_POLACZENIE primary key nonclustered (id_polaczenie)
)
go

/*==============================================================*/
/* Index: R_5_FK                                                */
/*==============================================================*/
create index R_5_FK on polaczenie (
id_autokar ASC
)
go

/*==============================================================*/
/* Index: R_6_FK                                                */
/*==============================================================*/
create index R_6_FK on polaczenie (
id_linia ASC
)
go

/*==============================================================*/
/* Index: R_11_FK                                               */
/*==============================================================*/
create index R_11_FK on polaczenie (
kie_id_kierowca ASC
)
go

/*==============================================================*/
/* Index: R_12_FK                                               */
/*==============================================================*/
create index R_12_FK on polaczenie (
id_kierowca ASC
)
go

/*==============================================================*/
/* Index: R_13_FK                                               */
/*==============================================================*/
create index R_13_FK on polaczenie (
id_pilot ASC
)
go

/*==============================================================*/
/* Index: R_14_FK                                               */
/*==============================================================*/
create index R_14_FK on polaczenie (
id_pasazer ASC
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

alter table kierowca
   add constraint FK_KIEROWCA_R_15_OSOBA foreign key (id_osoba)
      references osoba (id_osoba)
go

alter table linia
   add constraint FK_LINIA_R_10_MIASTO foreign key (id_miasto)
      references miasto (id_miasto)
go

alter table linia
   add constraint FK_LINIA_R_18_MIASTO foreign key (mia_id_miasto)
      references miasto (id_miasto)
go

alter table linia
   add constraint FK_LINIA_R_7_MIASTO foreign key (mia_id_miasto2)
      references miasto (id_miasto)
go

alter table linia
   add constraint FK_LINIA_R_8_MIASTO foreign key (mia_id_miasto4)
      references miasto (id_miasto)
go

alter table linia
   add constraint FK_LINIA_R_9_MIASTO foreign key (mia_id_miasto3)
      references miasto (id_miasto)
go

alter table model
   add constraint FK_MODEL_R_1_MARKA foreign key (id_marka)
      references marka (id_marka)
go

alter table pasazer
   add constraint FK_PASAZER_R_17_OSOBA foreign key (id_osoba)
      references osoba (id_osoba)
go

alter table pilot
   add constraint FK_PILOT_R_16_OSOBA foreign key (id_osoba)
      references osoba (id_osoba)
go

alter table polaczenie
   add constraint FK_POLACZEN_R_11_KIEROWCA foreign key (kie_id_kierowca)
      references kierowca (id_kierowca)
go

alter table polaczenie
   add constraint FK_POLACZEN_R_12_KIEROWCA foreign key (id_kierowca)
      references kierowca (id_kierowca)
go

alter table polaczenie
   add constraint FK_POLACZEN_R_13_PILOT foreign key (id_pilot)
      references pilot (id_pilot)
go

alter table polaczenie
   add constraint FK_POLACZEN_R_14_PASAZER foreign key (id_pasazer)
      references pasazer (id_pasazer)
go

alter table polaczenie
   add constraint FK_POLACZEN_R_5_AUTOKAR foreign key (id_autokar)
      references autokar (id_autokar)
go

alter table polaczenie
   add constraint FK_POLACZEN_R_6_LINIA foreign key (id_linia)
      references linia (id_linia)
go

