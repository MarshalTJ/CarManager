/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/4/23 星期六 上午 11:46:24                    */
/*==============================================================*/


drop table if exists t_pm_permitem;

drop table if exists t_pm_role;

drop table if exists t_pm_roleperm;

drop table if exists t_pm_user;

drop table if exists t_pm_userrole;

/*==============================================================*/
/* Table: t_pm_permitem                                         */
/*==============================================================*/
create table t_pm_permitem
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '权限名称',
   fnumber              varchar(50) not null comment '权限编码',
   fui                  varchar(100) comment '对应UI',
   falias               varchar(100) comment '别名',
   flongnumber          varchar(200) comment '长编码',
   fobjecttype          varchar(100) comment '对象类型',
   ftype                int comment '类型',
   fparentid            varchar(50) comment '父节点',
   fisleaf              int comment '是否叶子',
   foperationtype       int comment '操作类型',
   fenabledatapermission int comment '是否支持数据权限',
   fdescription         varchar(200) comment '描述',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table t_pm_permitem comment '权限项';

/*==============================================================*/
/* Table: t_pm_role                                             */
/*==============================================================*/
create table t_pm_role
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '角色名称',
   fnumber              varchar(100) not null comment '角色编码',
   fshopid              varchar(50) not null comment '所属店铺',
   fdescription         varchar(200) comment '描述',
   fcreator             varchar(50) comment '创建人',
   fcreatetime          varchar(200) comment '创建时间',
   flastupdateuser      varchar(50) comment '最后更新人',
   flastupdatetime      varchar(200) comment '最后更新时间',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table t_pm_role comment '角色';

/*==============================================================*/
/* Table: t_pm_roleperm                                         */
/*==============================================================*/
create table t_pm_roleperm
(
   fid                  varchar(50) not null comment 'uuid',
   froleid              varchar(50) not null comment '角色',
   fpermid              varchar(50) not null comment '权限项',
   fpermtype            int comment '权限类型',
   frulestructure       varchar(500) comment '规则表达式',
   fruleexpr            varchar(500) comment '规则条件',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: t_pm_user                                             */
/*==============================================================*/
create table t_pm_user
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '用户名称',
   fnumber              varchar(50) not null comment '用户编码',
   fshopid              varchar(50) comment '所属店铺',
   ftype                int comment '用户类型',
   fpassword            varchar(50) comment '密码',
   fisdelete            int comment '是否已经删除',
   fislocked            int comment '是否锁',
   fisforbidden         int comment '是否禁用',
   feffectivedate       date comment '生效日期',
   finvalidationdate    date comment '失效日期',
   fisregister          int comment '是否注册',
   ferrCount            int comment '登陆错误次数',
   fstaff               varchar(50) comment '职员',
   fsecurity            varchar(20) comment '密码策略',
   flockedtime          date comment '用户锁定时间',
   fbizadmin            int comment '是否为业务管理员',
   fchangedpw           int comment '是否修改过密码',
   fagentuser           varchar(50) comment '代理用户',
   fpwdhisstr           varchar(100) comment '历史密码',
   fdescription         varchar(200) comment '描述',
   fcreator             varchar(50) comment '创建者',
   fcreattime           date comment '创建时间',
   flastupdateuser      varchar(50) comment '最后修改人',
   flastupdatetime      date comment '最后修改时间',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table t_pm_user comment '用户表';

/*==============================================================*/
/* Table: t_pm_userrole                                         */
/*==============================================================*/
create table t_pm_userrole
(
   fid                  varchar(50) not null comment 'uuid',
   froleid              varchar(50) not null comment '角色',
   fuserid              varchar(50) not null comment '用户',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

