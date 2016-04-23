/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     2016/4/23 20:23:32                           */
/*==============================================================*/


drop index if exists fuser.fuser_PK;

drop table if exists fuser;

drop index if exists permitem.permitem_PK;

drop table if exists permitem;

drop index if exists role.role_PK;

drop table if exists role;

drop index if exists roleperm.roleperm_PK;

drop table if exists roleperm;

drop index if exists userrole.userrole_PK;

drop table if exists userrole;

/*==============================================================*/
/* Table: fuser                                                 */
/*==============================================================*/
create table fuser 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(50)                    not null,
   ftype                integer                        null,
   fpassword            varchar(50)                    null,
   fisLocked            integer                        null,
   fisforbidden         integer                        null,
   ferrCount            integer                        null,
   fstaff               varchar(50)                    null,
   flockedtime          date                           null,
   fdescription         varchar(200)                   null,
   fcreator             varchar(50)                    null,
   fcreattime           date                           null,
   flastupdateuser      varchar(50)                    null,
   flastupdatetime      date                           null,
   constraint PK_FUSER primary key (fid)
);

comment on table fuser is 
'�û���';

comment on column fuser.fid is 
'uuid';

comment on column fuser.fname is 
'�û�����';

comment on column fuser.fnumber is 
'�û�����';

comment on column fuser.ftype is 
'�û�����';

comment on column fuser.fpassword is 
'����';

comment on column fuser.fisLocked is 
'�Ƿ���';

comment on column fuser.fisforbidden is 
'�Ƿ����';

comment on column fuser.ferrCount is 
'��½�������';

comment on column fuser.fstaff is 
'ְԱ';

comment on column fuser.flockedtime is 
'�û�����ʱ��';

comment on column fuser.fdescription is 
'����';

comment on column fuser.fcreator is 
'������';

comment on column fuser.fcreattime is 
'����ʱ��';

comment on column fuser.flastupdateuser is 
'����޸���';

comment on column fuser.flastupdatetime is 
'����޸�ʱ��';

/*==============================================================*/
/* Index: fuser_PK                                              */
/*==============================================================*/
create unique index fuser_PK on fuser (
fid ASC
);

/*==============================================================*/
/* Table: permitem                                              */
/*==============================================================*/
create table permitem 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(50)                    not null,
   fui                  varchar(100)                   null,
   flongnumber          varchar(200)                   null,
   fparentid            varchar(50)                    null,
   fisleaf              integer                        null,
   fdescription         varchar(200)                   null,
   constraint PK_PERMITEM primary key (fid)
);

comment on table permitem is 
'Ȩ����';

comment on column permitem.fid is 
'uuid';

comment on column permitem.fname is 
'Ȩ������';

comment on column permitem.fnumber is 
'Ȩ�ޱ���';

comment on column permitem.fui is 
'��ӦUI';

comment on column permitem.flongnumber is 
'������';

comment on column permitem.fparentid is 
'���ڵ�';

comment on column permitem.fisleaf is 
'�Ƿ�Ҷ��';

comment on column permitem.fdescription is 
'����';

/*==============================================================*/
/* Index: permitem_PK                                           */
/*==============================================================*/
create unique index permitem_PK on permitem (
fid ASC
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(100)                   not null,
   fshopid              varchar(50)                    not null,
   fdescription         varchar(200)                   null,
   fcreator             varchar(50)                    null,
   fcreatetime          varchar(200)                   null,
   flastupdateuser      varchar(50)                    null,
   flastupdatetime      varchar(200)                   null,
   constraint PK_ROLE primary key (fid)
);

comment on table role is 
'��ɫ';

comment on column role.fid is 
'uuid';

comment on column role.fname is 
'��ɫ����';

comment on column role.fnumber is 
'��ɫ����';

comment on column role.fshopid is 
'��������';

comment on column role.fdescription is 
'����';

comment on column role.fcreator is 
'������';

comment on column role.fcreatetime is 
'����ʱ��';

comment on column role.flastupdateuser is 
'��������';

comment on column role.flastupdatetime is 
'������ʱ��';

/*==============================================================*/
/* Index: role_PK                                               */
/*==============================================================*/
create unique index role_PK on role (
fid ASC
);

/*==============================================================*/
/* Table: roleperm                                              */
/*==============================================================*/
create table roleperm 
(
   fid                  varchar(50)                    not null,
   froleid              varchar(50)                    not null,
   fpermid              varchar(50)                    not null,
   fpermtype            integer                        null,
   fruleexpr            varchar(500)                   null,
   constraint PK_ROLEPERM primary key (fid)
);

comment on table roleperm is 
'��ɫȨ��';

comment on column roleperm.fid is 
'uuid';

comment on column roleperm.froleid is 
'��ɫ';

comment on column roleperm.fpermid is 
'Ȩ����';

comment on column roleperm.fpermtype is 
'Ȩ������';

comment on column roleperm.fruleexpr is 
'��������';

/*==============================================================*/
/* Index: roleperm_PK                                           */
/*==============================================================*/
create unique index roleperm_PK on roleperm (
fid ASC
);

/*==============================================================*/
/* Table: userrole                                              */
/*==============================================================*/
create table userrole 
(
   fid                  varchar(50)                    not null,
   froleid              varchar(50)                    not null,
   fuserid              varchar(50)                    not null,
   constraint PK_USERROLE primary key (fid)
);

comment on column userrole.fid is 
'uuid';

comment on column userrole.froleid is 
'��ɫ';

comment on column userrole.fuserid is 
'�û�';

/*==============================================================*/
/* Index: userrole_PK                                           */
/*==============================================================*/
create unique index userrole_PK on userrole (
fid ASC
);

