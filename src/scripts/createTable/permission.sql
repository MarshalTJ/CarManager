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
'权限项';

comment on column t_pm_permitem.fid is 
'uuid';

comment on column t_pm_permitem.fname is 
'权限名称';

comment on column t_pm_permitem.fnumber is 
'权限编码';

comment on column t_pm_permitem.fui is 
'对应UI';

comment on column t_pm_permitem.flongnumber is 
'长编码';

comment on column t_pm_permitem.fparentid is 
'父节点';

comment on column t_pm_permitem.fisleaf is 
'是否叶子';

comment on column t_pm_permitem.fdescription is 
'描述';

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
'角色';

comment on column t_pm_role.fid is 
'uuid';

comment on column t_pm_role.fname is 
'角色名称';

comment on column t_pm_role.fnumber is 
'角色编码';

comment on column t_pm_role.fshopid is 
'所属店铺';

comment on column t_pm_role.fdescription is 
'描述';

comment on column t_pm_role.fcreator is 
'创建人';

comment on column t_pm_role.fcreatetime is 
'创建时间';

comment on column t_pm_role.flastupdateuser is 
'最后更新人';

comment on column t_pm_role.flastupdatetime is 
'最后更新时间';

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
'角色权限';

comment on column t_pm_roleperm.fid is 
'uuid';

comment on column t_pm_roleperm.froleid is 
'角色';

comment on column t_pm_roleperm.fpermid is 
'权限项';

comment on column t_pm_roleperm.fpermtype is 
'权限类型';

comment on column t_pm_roleperm.fruleexpr is 
'规则条件';

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
'用户表';

comment on column t_pm_user.fid is 
'uuid';

comment on column t_pm_user.fname is 
'用户名称';

comment on column t_pm_user.fnumber is 
'用户编码';

comment on column t_pm_user.ftype is 
'用户类型';

comment on column t_pm_user.fpassword is 
'密码';

comment on column t_pm_user.fisLocked is 
'是否锁';

comment on column t_pm_user.fisforbidden is 
'是否禁用';

comment on column t_pm_user.ferrCount is 
'登陆错误次数';

comment on column t_pm_user.fstaff is 
'职员';

comment on column t_pm_user.flockedtime is 
'用户锁定时间';

comment on column t_pm_user.fdescription is 
'描述';

comment on column t_pm_user.fcreator is 
'创建者';

comment on column t_pm_user.fcreattime is 
'创建时间';

comment on column t_pm_user.flastupdateuser is 
'最后修改人';

comment on column t_pm_user.flastupdatetime is 
'最后修改时间';

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
'角色';

comment on column t_pm_userrole.fuserid is 
'用户';

/*==============================================================*/
/* Index: userrole_PK                                           */
/*==============================================================*/
create unique index userrole_PK on t_pm_userrole (
fid ASC
);

