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
   fid                  char(10) not null comment 'uuid',
   fname                char(10) not null comment '����',
   fnumber              char(10) not null comment '����',
   fbankaccount         char(10) comment '�����˺�',
   fshopid              char(10) comment '��������',
   fisclosed            char(10) comment '�Ƿ�����',
   fopendate            char(10) comment '��������',
   fclosedate           char(10) comment '��������',
   fbank                char(10) comment '���л���',
   fphonenumber         char(10) comment '�绰����',
   fissetbankinterface  char(10) comment '�Ƿ��������нӿ�',
   fbanktype            char(10) comment '��������',
   finneraccount        char(10) comment '��Ӧ�ڲ��˺�',
   fctrlstrategy        char(10) comment '�������',
   fclassification      char(10) comment '���˷���',
   fismotheraccount     char(10) comment '�Ƿ�ĸ�˺�',
   faccounttype         char(10) comment '�˻�����',
   fnotoutpay           char(10) comment '�շ��������֧��',
   fsubaccount          char(10) comment 'ĸ�˺�',
   fisbank              char(10) comment '�Ƿ����п�Ŀ',
   fiscash              char(10) comment '�Ƿ��ֽ��Ŀ',
   facctname            char(10) comment '�˻�����',
   frelemotheracct      char(10) comment '��Ӧĸ�˺�',
   fisdcpay             char(10) comment '�Ƿ���ת',
   fisreckoning         char(10) comment '�Ƿ����㻧',
   fsimplecode          char(10) comment '������',
   fagencyshop          char(10) comment '���������',
   fmaxpayamount        char(10) comment '֧���޶�',
   fapplybillid         char(10) comment '���뵥id',
   fbankversion         char(10) comment '���а汾',
   fbankcert            char(10) comment '����֤��',
   freference           char(10) comment '�ο���Ϣ',
   fcountry             char(10) comment '����',
   fbankinterface       char(10) comment '����ӿ���Ϣ',
   fbankinterfaceid     char(10) comment '����ӿ�id',
   fsyncstatus          char(10) comment 'ͬ��״̬',
   fsyncstatusmsg       char(10) comment 'ͬ��״̬���������Ϣ',
   fsharetype           char(10) comment '�˻�ʹ��Ȩ������',
   fdescription         char(10) comment '����',
   fcreator             char(10) comment '������',
   fcreatetime          char(10) comment '����ʱ��',
   flastudpateuser      char(10) comment '��������',
   flastupdatetime      char(10) comment '������ʱ��',
   primary key (fid)
);

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
   fgender              int comment '�Ա�',
   fbirthday            date comment '��������',
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
);

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
);

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
);

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
);

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
);

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
);

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
);

alter table T_BD_supplier comment '��Ӧ��';

/*==============================================================*/
/* Table: T_BD_supplierproduct                                  */
/*==============================================================*/
create table T_BD_supplierproduct
(
   fid                  char(10) not null comment 'uuid',
   fsupplierid          char(10) not null comment '��Ӧ��id',
   fproductid           char(10) not null comment '��Ʒid',
   fnum                 char(10) comment '����',
   fprice               char(10) comment '�۸�',
   primary key (fid)
);

alter table T_BD_supplierproduct comment '��Ӧ��ӵ�е���Ʒ';

