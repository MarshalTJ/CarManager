/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     2016/4/23 20:54:55                           */
/*==============================================================*/


drop index if exists t_pm_permitem.permitem_PK;

drop table if exists t_pm_permitem;

drop index if exists t_pm_role.role_PK;

drop table if exists t_pm_role;

drop index if exists t_pm_roleperm.roleperm_PK;

drop table if exists t_pm_roleperm;

drop index if exists t_pm_user.fuser_PK;

drop table if exists t_pm_user;

drop index if exists t_pm_userrole.userrole_PK;

drop table if exists t_pm_userrole;

/*==============================================================*/
/* Table: t_pm_permitem                                         */
/*==============================================================*/
create table t_pm_permitem 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(50)                    not null,
   fui                  varchar(100)                   null,
   flongnumber          varchar(200)                   null,
   fparentid            varchar(50)                    null,
   fisleaf              integer                        null,
   fdescription         varchar(200)                   null,
   constraint PK_T_PM_PERMITEM primary key (fid)
);

comment on table t_pm_permitem is 
'Ȩ����';

comment on column t_pm_permitem.fid is 
'uuid';

comment on column t_pm_permitem.fname is 
'Ȩ������';

comment on column t_pm_permitem.fnumber is 
'Ȩ�ޱ���';

comment on column t_pm_permitem.fui is 
'��ӦUI';

comment on column t_pm_permitem.flongnumber is 
'������';

comment on column t_pm_permitem.fparentid is 
'���ڵ�';

comment on column t_pm_permitem.fisleaf is 
'�Ƿ�Ҷ��';

comment on column t_pm_permitem.fdescription is 
'����';

/*==============================================================*/
/* Index: permitem_PK                                           */
/*==============================================================*/
create unique index permitem_PK on t_pm_permitem (
fid ASC
);

/*==============================================================*/
/* Table: t_pm_role                                             */
/*==============================================================*/
create table t_pm_role 
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
   constraint PK_T_PM_ROLE primary key (fid)
);

comment on table t_pm_role is 
'��ɫ';

comment on column t_pm_role.fid is 
'uuid';

comment on column t_pm_role.fname is 
'��ɫ����';

comment on column t_pm_role.fnumber is 
'��ɫ����';

comment on column t_pm_role.fshopid is 
'��������';

comment on column t_pm_role.fdescription is 
'����';

comment on column t_pm_role.fcreator is 
'������';

comment on column t_pm_role.fcreatetime is 
'����ʱ��';

comment on column t_pm_role.flastupdateuser is 
'��������';

comment on column t_pm_role.flastupdatetime is 
'������ʱ��';

/*==============================================================*/
/* Index: role_PK                                               */
/*==============================================================*/
create unique index role_PK on t_pm_role (
fid ASC
);

/*==============================================================*/
/* Table: t_pm_roleperm                                         */
/*==============================================================*/
create table t_pm_roleperm 
(
   fid                  varchar(50)                    not null,
   froleid              varchar(50)                    not null,
   fpermid              varchar(50)                    not null,
   fpermtype            integer                        null,
   fruleexpr            varchar(500)                   null,
   constraint PK_T_PM_ROLEPERM primary key (fid)
);

comment on table t_pm_roleperm is 
'��ɫȨ��';

comment on column t_pm_roleperm.fid is 
'uuid';

comment on column t_pm_roleperm.froleid is 
'��ɫ';

comment on column t_pm_roleperm.fpermid is 
'Ȩ����';

comment on column t_pm_roleperm.fpermtype is 
'Ȩ������';

comment on column t_pm_roleperm.fruleexpr is 
'��������';

/*==============================================================*/
/* Index: roleperm_PK                                           */
/*==============================================================*/
create unique index roleperm_PK on t_pm_roleperm (
fid ASC
);

/*==============================================================*/
/* Table: t_pm_user                                             */
/*==============================================================*/
create table t_pm_user 
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
   constraint PK_T_PM_USER primary key (fid)
);

comment on table t_pm_user is 
'�û���';

comment on column t_pm_user.fid is 
'uuid';

comment on column t_pm_user.fname is 
'�û�����';

comment on column t_pm_user.fnumber is 
'�û�����';

comment on column t_pm_user.ftype is 
'�û�����';

comment on column t_pm_user.fpassword is 
'����';

comment on column t_pm_user.fisLocked is 
'�Ƿ���';

comment on column t_pm_user.fisforbidden is 
'�Ƿ����';

comment on column t_pm_user.ferrCount is 
'��½�������';

comment on column t_pm_user.fstaff is 
'ְԱ';

comment on column t_pm_user.flockedtime is 
'�û�����ʱ��';

comment on column t_pm_user.fdescription is 
'����';

comment on column t_pm_user.fcreator is 
'������';

comment on column t_pm_user.fcreattime is 
'����ʱ��';

comment on column t_pm_user.flastupdateuser is 
'����޸���';

comment on column t_pm_user.flastupdatetime is 
'����޸�ʱ��';

/*==============================================================*/
/* Index: fuser_PK                                              */
/*==============================================================*/
create unique index fuser_PK on t_pm_user (
fid ASC
);

/*==============================================================*/
/* Table: t_pm_userrole                                         */
/*==============================================================*/
create table t_pm_userrole 
(
   fid                  varchar(50)                    not null,
   froleid              varchar(50)                    not null,
   fuserid              varchar(50)                    not null,
   constraint PK_T_PM_USERROLE primary key (fid)
);

comment on column t_pm_userrole.fid is 
'uuid';

comment on column t_pm_userrole.froleid is 
'��ɫ';

comment on column t_pm_userrole.fuserid is 
'�û�';

/*==============================================================*/
/* Index: userrole_PK                                           */
/*==============================================================*/
create unique index userrole_PK on t_pm_userrole (
fid ASC
);

