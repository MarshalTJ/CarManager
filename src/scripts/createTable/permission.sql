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
'用户表';

comment on column fuser.fid is
'uuid';

comment on column fuser.fname is
'用户名称';

comment on column fuser.fnumber is
'用户编码';

comment on column fuser.ftype is
'用户类型';

comment on column fuser.fpassword is
'密码';

comment on column fuser.fisLocked is
'是否锁';

comment on column fuser.fisforbidden is
'是否禁用';

comment on column fuser.ferrCount is
'登陆错误次数';

comment on column fuser.fstaff is
'职员';

comment on column fuser.flockedtime is
'用户锁定时间';

comment on column fuser.fdescription is
'描述';

comment on column fuser.fcreator is
'创建者';

comment on column fuser.fcreattime is
'创建时间';

comment on column fuser.flastupdateuser is
'最后修改人';

comment on column fuser.flastupdatetime is
'最后修改时间';

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
'权限项';

comment on column permitem.fid is
'uuid';

comment on column permitem.fname is
'权限名称';

comment on column permitem.fnumber is
'权限编码';

comment on column permitem.fui is
'对应UI';

comment on column permitem.flongnumber is
'长编码';

comment on column permitem.fparentid is
'父节点';

comment on column permitem.fisleaf is
'是否叶子';

comment on column permitem.fdescription is
'描述';

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
'角色';

comment on column role.fid is
'uuid';

comment on column role.fname is
'角色名称';

comment on column role.fnumber is
'角色编码';

comment on column role.fshopid is
'所属店铺';

comment on column role.fdescription is
'描述';

comment on column role.fcreator is
'创建人';

comment on column role.fcreatetime is
'创建时间';

comment on column role.flastupdateuser is
'最后更新人';

comment on column role.flastupdatetime is
'最后更新时间';

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
'角色权限';

comment on column roleperm.fid is
'uuid';

comment on column roleperm.froleid is
'角色';

comment on column roleperm.fpermid is
'权限项';

comment on column roleperm.fpermtype is
'权限类型';

comment on column roleperm.fruleexpr is
'规则条件';

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
'角色';

comment on column userrole.fuserid is
'用户';

/*==============================================================*/
/* Index: userrole_PK                                           */
/*==============================================================*/
create unique index userrole_PK on userrole (
fid ASC
);

