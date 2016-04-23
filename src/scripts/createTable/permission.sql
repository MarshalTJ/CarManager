/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/4/23 ������ ���� 11:46:24                    */
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
   fname                varchar(100) not null comment 'Ȩ������',
   fnumber              varchar(50) not null comment 'Ȩ�ޱ���',
   fui                  varchar(100) comment '��ӦUI',
   falias               varchar(100) comment '����',
   flongnumber          varchar(200) comment '������',
   fobjecttype          varchar(100) comment '��������',
   ftype                int comment '����',
   fparentid            varchar(50) comment '���ڵ�',
   fisleaf              int comment '�Ƿ�Ҷ��',
   foperationtype       int comment '��������',
   fenabledatapermission int comment '�Ƿ�֧������Ȩ��',
   fdescription         varchar(200) comment '����',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table t_pm_permitem comment 'Ȩ����';

/*==============================================================*/
/* Table: t_pm_role                                             */
/*==============================================================*/
create table t_pm_role
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '��ɫ����',
   fnumber              varchar(100) not null comment '��ɫ����',
   fshopid              varchar(50) not null comment '��������',
   fdescription         varchar(200) comment '����',
   fcreator             varchar(50) comment '������',
   fcreatetime          varchar(200) comment '����ʱ��',
   flastupdateuser      varchar(50) comment '��������',
   flastupdatetime      varchar(200) comment '������ʱ��',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table t_pm_role comment '��ɫ';

/*==============================================================*/
/* Table: t_pm_roleperm                                         */
/*==============================================================*/
create table t_pm_roleperm
(
   fid                  varchar(50) not null comment 'uuid',
   froleid              varchar(50) not null comment '��ɫ',
   fpermid              varchar(50) not null comment 'Ȩ����',
   fpermtype            int comment 'Ȩ������',
   frulestructure       varchar(500) comment '������ʽ',
   fruleexpr            varchar(500) comment '��������',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: t_pm_user                                             */
/*==============================================================*/
create table t_pm_user
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '�û�����',
   fnumber              varchar(50) not null comment '�û�����',
   fshopid              varchar(50) comment '��������',
   ftype                int comment '�û�����',
   fpassword            varchar(50) comment '����',
   fisdelete            int comment '�Ƿ��Ѿ�ɾ��',
   fislocked            int comment '�Ƿ���',
   fisforbidden         int comment '�Ƿ����',
   feffectivedate       date comment '��Ч����',
   finvalidationdate    date comment 'ʧЧ����',
   fisregister          int comment '�Ƿ�ע��',
   ferrCount            int comment '��½�������',
   fstaff               varchar(50) comment 'ְԱ',
   fsecurity            varchar(20) comment '�������',
   flockedtime          date comment '�û�����ʱ��',
   fbizadmin            int comment '�Ƿ�Ϊҵ�����Ա',
   fchangedpw           int comment '�Ƿ��޸Ĺ�����',
   fagentuser           varchar(50) comment '�����û�',
   fpwdhisstr           varchar(100) comment '��ʷ����',
   fdescription         varchar(200) comment '����',
   fcreator             varchar(50) comment '������',
   fcreattime           date comment '����ʱ��',
   flastupdateuser      varchar(50) comment '����޸���',
   flastupdatetime      date comment '����޸�ʱ��',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table t_pm_user comment '�û���';

/*==============================================================*/
/* Table: t_pm_userrole                                         */
/*==============================================================*/
create table t_pm_userrole
(
   fid                  varchar(50) not null comment 'uuid',
   froleid              varchar(50) not null comment '��ɫ',
   fuserid              varchar(50) not null comment '�û�',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

