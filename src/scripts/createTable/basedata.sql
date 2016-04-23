/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/4/23 ������ ���� 11:08:43                    */
/*==============================================================*/


drop table if exists T_BD_accountbank;

drop table if exists T_BD_customer;

drop table if exists T_BD_customerpossession;

drop table if exists T_BD_possession;

drop table if exists T_BD_product;

drop table if exists T_BD_shop;

drop table if exists T_BD_shopcustomer;

drop table if exists T_BD_supplier;

drop table if exists T_BD_supplierproduct;

/*==============================================================*/
/* Table: T_BD_accountbank                                      */
/*==============================================================*/
create table T_BD_accountbank
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(50) not null comment '����',
   fnumber              varchar(50) not null comment '����',
   fbankaccount         varchar(50) comment '�����˺�',
   fshopid              varchar(50) comment '��������',
   fisclosed            int         comment '�Ƿ�����',
   fopendate            date comment '��������',
   fclosedate           date comment '��������',
   fbank                varchar(50) comment '���л���',
   fphonenumber         varchar(50) comment '�绰����',
   fissetbankinterface  varchar(50) comment '�Ƿ��������нӿ�',
   fbanktype            varchar(50) comment '��������',
   finneraccount        varchar(50) comment '��Ӧ�ڲ��˺�',
   fctrlstrategy        varchar(50) comment '�������',
   fclassification      varchar(50) comment '���˷���',
   fismotheraccount     varchar(50) comment '�Ƿ�ĸ�˺�',
   faccounttype         varchar(50) comment '�˻�����',
   fnotoutpay           int         comment '�շ��������֧��',
   fsubaccount          varchar(50) comment 'ĸ�˺�',
   fisbank              int         comment '�Ƿ����п�Ŀ',
   fiscash              int         comment '�Ƿ��ֽ��Ŀ',
   facctname            varchar(50) comment '�˻�����',
   frelemotheracct      varchar(50) comment '��Ӧĸ�˺�',
   fisdcpay             int         comment '�Ƿ���ת',
   fisreckoning         int         comment '�Ƿ����㻧',
   fsimplecode          varchar(50) comment '������',
   fagencyshop          varchar(50) comment '���������',
   fmaxpayamount        varchar(50) comment '֧���޶�',
   fapplybillid         varchar(50) comment '���뵥id',
   fbankversion         varchar(50) comment '���а汾',
   fbankcert            varchar(50) comment '����֤��',
   freference           varchar(50) comment '�ο���Ϣ',
   fcountry             varchar(50) comment '����',
   fbankinterface       varchar(50) comment '����ӿ���Ϣ',
   fbankinterfaceid     varchar(50) comment '����ӿ�id',
   fsyncstatus          int         comment 'ͬ��״̬',
   fsyncstatusmsg       varchar(50) comment 'ͬ��״̬���������Ϣ',
   fsharetype           int         comment '�˻�ʹ��Ȩ������',
   fdescription         varchar(50) comment '����',
   fcreator             date comment '������',
   fcreatetime          date comment '����ʱ��',
   flastudpateuser      varchar(50) comment '��������',
   flastupdatetime      varchar(50) comment '������ʱ��',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_accountbank comment '�����˻�';

/*==============================================================*/
/* Table: T_BD_customer                                         */
/*==============================================================*/
create table T_BD_customer
(
   fid                  varchar(50) not null comment 'UUID',
   fname                varchar(100) not null comment '�û�����',
   fnumber              varchar(50) not null comment '�û�����',
   fshopid              varchar(50) comment '��������',
   fgender              int         comment '�Ա�',
   fbirthday            date        comment '��������',
   femai                varchar(50) comment '����',
   fstate               int comment '״̬',
   fhomephone           varchar(50) comment '��ͥ�绰',
   fofficephone         varchar(50) comment '�칫�绰',
   fcell                varchar(50) comment '�ֻ�����',
   fidcard              varchar(50) comment '���֤',
   fheight              int comment '���',
   fnativeplace         varchar(50) comment '����',
   fbloodtype           int comment 'Ѫ��',
   ffolk                varchar(50) comment '����',
   fdescription         varchar(50) comment '����',
   fcreator             varchar(50) comment '������',
   fcreatetime          date comment '����ʱ��',
   flastupdateuser      varchar(50) comment '��������',
   flastupdatetime      date comment '������ʱ��',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_customer comment '�ͻ�';

/*==============================================================*/
/* Table: T_BD_customerpossession                               */
/*==============================================================*/
create table T_BD_customerpossession
(
   fid                  varchar(50) not null comment 'uuid',
   fcustomerid          varchar(50) not null comment '�˿�id',
   fpossessionid        varchar(50) not null comment '�Ʋ�id',
   fnum                 int comment '����',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_customerpossession comment '�˿ͲƲ�';

/*==============================================================*/
/* Table: T_BD_possession                                       */
/*==============================================================*/
create table T_BD_possession
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '�Ʋ���',
   fnumber              varchar(100) not null comment '�Ʋ�����',
   fstatus              int comment '״̬',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_possession comment '�Ʋ�';

/*==============================================================*/
/* Table: T_BD_product                                          */
/*==============================================================*/
create table T_BD_product
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '��Ʒ����',
   fnumber              varchar(100) not null comment '��Ʒ����',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_product comment '��Ʒ';

/*==============================================================*/
/* Table: T_BD_shop                                             */
/*==============================================================*/
create table T_BD_shop
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '��������',
   fnumber              varchar(100) not null comment '���̱���',
   fparentid            varchar(50) comment '�ϼ�����',
   ftaxnumber           varchar(100) comment '˰��ǼǺ�',
   fisgroup             int comment '�Ƿ�Ϊ���Ź�˾',
   faccountbank         varchar(100) comment '�����˺�',
   freportcurrency      varchar(50) comment '�������',
   faccountperiodtype   varchar(100) comment '����ڼ�����',
   fjuridicalperson     varchar(100) comment '���˴���',
   faddress             varchar(100) comment '��ַ',
   fregion              varchar(100) comment '����',
   feconomictype        varchar(100) comment '��������',
   fregisteredcapital   decimal(12,2) comment 'ע���ʱ�',
   fsetupdate           date comment '��������',
   fendupdate           date comment 'Ӫҵ��Ч��',
   fregisteredcode      varchar(200) comment 'ע��ǼǺ�',
   fdescription         varchar(200) comment '����',
   fcreator             varchar(50) comment '������',
   fcreatetime          date comment '����ʱ��',
   flastupdateuser      varchar(50) comment '��������',
   flastupdatetime      date comment '������ʱ��',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_shop comment '����,�����һ�����̼�';

/*==============================================================*/
/* Table: T_BD_shopcustomer                                     */
/*==============================================================*/
create table T_BD_shopcustomer
(
   fid                  varchar(50) not null comment 'uuid',
   fshopid              varchar(50) not null comment '����id',
   fcustomerid          varchar(50) not null comment '�˿�id',
   fstatus              int comment '״̬',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_shopcustomer comment '���̺��û���������ϵ��';

/*==============================================================*/
/* Table: T_BD_supplier                                         */
/*==============================================================*/
create table T_BD_supplier
(
   fid                  varchar(50) not null comment 'id',
   fname                varchar(100) not null comment '��Ӧ������',
   fnumber              varchar(50) not null comment '��Ӧ�̱���',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_supplier comment '��Ӧ��';

/*==============================================================*/
/* Table: T_BD_supplierproduct                                  */
/*==============================================================*/
create table T_BD_supplierproduct
(
   fid                  varchar(50) not null comment 'uuid',
   fsupplierid          varchar(50) not null comment '��Ӧ��id',
   fproductid           varchar(50) not null comment '��Ʒid',
   fnum                 int comment '����',
   fprice               decimal(18, 2) comment '�۸�',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_supplierproduct comment '��Ӧ��ӵ�е���Ʒ';

