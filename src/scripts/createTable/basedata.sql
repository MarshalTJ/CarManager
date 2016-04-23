/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     2016/4/23 20:21:14                           */
/*==============================================================*/


drop index if exists T_BD_accountbank.T_BD_accountbank_PK;

drop table if exists T_BD_accountbank;

drop index if exists T_BD_customer.T_BD_customer_PK;

drop table if exists T_BD_customer;

drop index if exists T_BD_customerpossession.T_BD_customerpossession_PK;

drop table if exists T_BD_customerpossession;

drop index if exists T_BD_possession.T_BD_possession_PK;

drop table if exists T_BD_possession;

drop index if exists T_BD_product.T_BD_product_PK;

drop table if exists T_BD_product;

drop index if exists T_BD_shop.T_BD_shop_PK;

drop table if exists T_BD_shop;

drop index if exists T_BD_supplier.T_BD_supplier_PK;

drop table if exists T_BD_supplier;

drop index if exists T_BD_supplierproduct.T_BD_supplierproduct_PK;

drop table if exists T_BD_supplierproduct;

/*==============================================================*/
/* Table: T_BD_accountbank                                      */
/*==============================================================*/
create table T_BD_accountbank 
(
   fid                  char(10)                       not null,
   fname                char(10)                       not null,
   fnumber              char(10)                       not null,
   fbankaccount         char(10)                       null,
   fshopid              char(10)                       null,
   fisclosed            char(10)                       null,
   fopendate            char(10)                       null,
   fclosedate           char(10)                       null,
   fbank                char(10)                       null,
   fphonenumber         char(10)                       null,
   fissetbankinterface  char(10)                       null,
   fbanktype            char(10)                       null,
   finneraccount        char(10)                       null,
   fctrlstrategy        char(10)                       null,
   fclassification      char(10)                       null,
   fismotheraccount     char(10)                       null,
   faccounttype         char(10)                       null,
   fnotoutpay           char(10)                       null,
   fsubaccount          char(10)                       null,
   fisbank              char(10)                       null,
   fiscash              char(10)                       null,
   facctname            char(10)                       null,
   frelemotheracct      char(10)                       null,
   fisdcpay             char(10)                       null,
   fisreckoning         char(10)                       null,
   fsimplecode          char(10)                       null,
   fagencyshop          char(10)                       null,
   fmaxpayamount        char(10)                       null,
   fapplybillid         char(10)                       null,
   fbankversion         char(10)                       null,
   fbankcert            char(10)                       null,
   freference           char(10)                       null,
   fcountry             char(10)                       null,
   fbankinterface       char(10)                       null,
   fbankinterfaceid     char(10)                       null,
   fsyncstatus          char(10)                       null,
   fsyncstatusmsg       char(10)                       null,
   fsharetype           char(10)                       null,
   fdescription         char(10)                       null,
   fcreator             char(10)                       null,
   fcreatetime          char(10)                       null,
   flastudpateuser      char(10)                       null,
   flastupdatetime      char(10)                       null,
   constraint PK_T_BD_ACCOUNTBANK primary key (fid)
);

comment on table T_BD_accountbank is 
'�����˻�';

comment on column T_BD_accountbank.fid is 
'uuid';

comment on column T_BD_accountbank.fname is 
'����';

comment on column T_BD_accountbank.fnumber is 
'����';

comment on column T_BD_accountbank.fbankaccount is 
'�����˺�';

comment on column T_BD_accountbank.fshopid is 
'��������';

comment on column T_BD_accountbank.fisclosed is 
'�Ƿ�����';

comment on column T_BD_accountbank.fopendate is 
'��������';

comment on column T_BD_accountbank.fclosedate is 
'��������';

comment on column T_BD_accountbank.fbank is 
'���л���';

comment on column T_BD_accountbank.fphonenumber is 
'�绰����';

comment on column T_BD_accountbank.fissetbankinterface is 
'�Ƿ��������нӿ�';

comment on column T_BD_accountbank.fbanktype is 
'��������';

comment on column T_BD_accountbank.finneraccount is 
'��Ӧ�ڲ��˺�';

comment on column T_BD_accountbank.fctrlstrategy is 
'�������';

comment on column T_BD_accountbank.fclassification is 
'���˷���';

comment on column T_BD_accountbank.fismotheraccount is 
'�Ƿ�ĸ�˺�';

comment on column T_BD_accountbank.faccounttype is 
'�˻�����';

comment on column T_BD_accountbank.fnotoutpay is 
'�շ��������֧��';

comment on column T_BD_accountbank.fsubaccount is 
'ĸ�˺�';

comment on column T_BD_accountbank.fisbank is 
'�Ƿ����п�Ŀ';

comment on column T_BD_accountbank.fiscash is 
'�Ƿ��ֽ��Ŀ';

comment on column T_BD_accountbank.facctname is 
'�˻�����';

comment on column T_BD_accountbank.frelemotheracct is 
'��Ӧĸ�˺�';

comment on column T_BD_accountbank.fisdcpay is 
'�Ƿ���ת';

comment on column T_BD_accountbank.fisreckoning is 
'�Ƿ����㻧';

comment on column T_BD_accountbank.fsimplecode is 
'������';

comment on column T_BD_accountbank.fagencyshop is 
'���������';

comment on column T_BD_accountbank.fmaxpayamount is 
'֧���޶�';

comment on column T_BD_accountbank.fapplybillid is 
'���뵥id';

comment on column T_BD_accountbank.fbankversion is 
'���а汾';

comment on column T_BD_accountbank.fbankcert is 
'����֤��';

comment on column T_BD_accountbank.freference is 
'�ο���Ϣ';

comment on column T_BD_accountbank.fcountry is 
'����';

comment on column T_BD_accountbank.fbankinterface is 
'����ӿ���Ϣ';

comment on column T_BD_accountbank.fbankinterfaceid is 
'����ӿ�id';

comment on column T_BD_accountbank.fsyncstatus is 
'ͬ��״̬';

comment on column T_BD_accountbank.fsyncstatusmsg is 
'ͬ��״̬���������Ϣ';

comment on column T_BD_accountbank.fsharetype is 
'�˻�ʹ��Ȩ������';

comment on column T_BD_accountbank.fdescription is 
'����';

comment on column T_BD_accountbank.fcreator is 
'������';

comment on column T_BD_accountbank.fcreatetime is 
'����ʱ��';

comment on column T_BD_accountbank.flastudpateuser is 
'��������';

comment on column T_BD_accountbank.flastupdatetime is 
'������ʱ��';

/*==============================================================*/
/* Index: T_BD_accountbank_PK                                   */
/*==============================================================*/
create unique index T_BD_accountbank_PK on T_BD_accountbank (
fid ASC
);

/*==============================================================*/
/* Table: T_BD_customer                                         */
/*==============================================================*/
create table T_BD_customer 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(50)                    not null,
   fopenid              varchar(200)                   null,
   fheadportrait        varchar(200)                   null,
   fissubsciber         char(10)                       null,
   fbindcode            char(10)                       null,
   fshopid              varchar(50)                    null,
   fgender              integer                        null,
   fbirthday            date                           null,
   femai                varchar(50)                    null,
   fstate               integer                        null,
   fhomephone           varchar(50)                    null,
   fofficephone         varchar(50)                    null,
   fcell                varchar(50)                    null,
   fidcard              varchar(50)                    null,
   fheight              integer                        null,
   fnativeplace         varchar(50)                    null,
   fbloodtype           integer                        null,
   ffolk                varchar(50)                    null,
   fdescription         varchar(50)                    null,
   fcreator             varchar(50)                    null,
   fcreatetime          date                           null,
   flastupdateuser      varchar(50)                    null,
   flastupdatetime      date                           null,
   constraint PK_T_BD_CUSTOMER primary key (fid)
);

comment on table T_BD_customer is 
'�ͻ�';

comment on column T_BD_customer.fid is 
'UUID';

comment on column T_BD_customer.fname is 
'�û�����';

comment on column T_BD_customer.fnumber is 
'�û�����';

comment on column T_BD_customer.fopenid is 
'΢�ŵ�openid';

comment on column T_BD_customer.fheadportrait is 
'΢��ͷ��';

comment on column T_BD_customer.fissubsciber is 
'�Ƿ��עͷ��';

comment on column T_BD_customer.fbindcode is 
'����';

comment on column T_BD_customer.fshopid is 
'��������';

comment on column T_BD_customer.fgender is 
'�Ա�';

comment on column T_BD_customer.fbirthday is 
'��������';

comment on column T_BD_customer.femai is 
'����';

comment on column T_BD_customer.fstate is 
'״̬';

comment on column T_BD_customer.fhomephone is 
'��ͥ�绰';

comment on column T_BD_customer.fofficephone is 
'�칫�绰';

comment on column T_BD_customer.fcell is 
'�ֻ�����';

comment on column T_BD_customer.fidcard is 
'���֤';

comment on column T_BD_customer.fheight is 
'���';

comment on column T_BD_customer.fnativeplace is 
'����';

comment on column T_BD_customer.fbloodtype is 
'Ѫ��';

comment on column T_BD_customer.ffolk is 
'����';

comment on column T_BD_customer.fdescription is 
'����';

comment on column T_BD_customer.fcreator is 
'������';

comment on column T_BD_customer.fcreatetime is 
'����ʱ��';

comment on column T_BD_customer.flastupdateuser is 
'��������';

comment on column T_BD_customer.flastupdatetime is 
'������ʱ��';

/*==============================================================*/
/* Index: T_BD_customer_PK                                      */
/*==============================================================*/
create unique index T_BD_customer_PK on T_BD_customer (
fid ASC
);

/*==============================================================*/
/* Table: T_BD_customerpossession                               */
/*==============================================================*/
create table T_BD_customerpossession 
(
   fid                  varchar(50)                    not null,
   fcustomerid          varchar(50)                    not null,
   fpossessionid        varchar(50)                    not null,
   fnum                 integer                        null,
   constraint PK_T_BD_CUSTOMERPOSSESSION primary key (fid)
);

comment on table T_BD_customerpossession is 
'�˿ͲƲ�';

comment on column T_BD_customerpossession.fid is 
'uuid';

comment on column T_BD_customerpossession.fcustomerid is 
'�˿�id';

comment on column T_BD_customerpossession.fpossessionid is 
'�Ʋ�id';

comment on column T_BD_customerpossession.fnum is 
'����';

/*==============================================================*/
/* Index: T_BD_customerpossession_PK                            */
/*==============================================================*/
create unique index T_BD_customerpossession_PK on T_BD_customerpossession (
fid ASC
);

/*==============================================================*/
/* Table: T_BD_possession                                       */
/*==============================================================*/
create table T_BD_possession 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(100)                   not null,
   fstatus              integer                        null,
   constraint PK_T_BD_POSSESSION primary key (fid)
);

comment on table T_BD_possession is 
'�Ʋ�';

comment on column T_BD_possession.fid is 
'uuid';

comment on column T_BD_possession.fname is 
'�Ʋ���';

comment on column T_BD_possession.fnumber is 
'�Ʋ�����';

comment on column T_BD_possession.fstatus is 
'״̬';

/*==============================================================*/
/* Index: T_BD_possession_PK                                    */
/*==============================================================*/
create unique index T_BD_possession_PK on T_BD_possession (
fid ASC
);

/*==============================================================*/
/* Table: T_BD_product                                          */
/*==============================================================*/
create table T_BD_product 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(100)                   not null,
   constraint PK_T_BD_PRODUCT primary key (fid)
);

comment on table T_BD_product is 
'��Ʒ';

comment on column T_BD_product.fid is 
'uuid';

comment on column T_BD_product.fname is 
'��Ʒ����';

comment on column T_BD_product.fnumber is 
'��Ʒ����';

/*==============================================================*/
/* Index: T_BD_product_PK                                       */
/*==============================================================*/
create unique index T_BD_product_PK on T_BD_product (
fid ASC
);

/*==============================================================*/
/* Table: T_BD_shop                                             */
/*==============================================================*/
create table T_BD_shop 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(100)                   not null,
   fparentid            varchar(50)                    null,
   ftaxnumber           varchar(100)                   null,
   fisgroup             integer                        null,
   faccountbank         varchar(100)                   null,
   faccountperiodtype   varchar(100)                   null,
   fjuridicalperson     varchar(100)                   null,
   faddress             varchar(100)                   null,
   fregisteredcapital   decimal(12,2)                  null,
   fsetupdate           date                           null,
   fendupdate           date                           null,
   fregisteredcode      varchar(200)                   null,
   fdescription         varchar(200)                   null,
   fcreator             varchar(50)                    null,
   fcreatetime          date                           null,
   flastupdateuser      varchar(50)                    null,
   flastupdatetime      date                           null,
   constraint PK_T_BD_SHOP primary key (fid)
);

comment on table T_BD_shop is 
'����,�����һ�����̼�';

comment on column T_BD_shop.fid is 
'uuid';

comment on column T_BD_shop.fname is 
'��������';

comment on column T_BD_shop.fnumber is 
'���̱���';

comment on column T_BD_shop.fparentid is 
'�ϼ�����';

comment on column T_BD_shop.ftaxnumber is 
'˰��ǼǺ�';

comment on column T_BD_shop.fisgroup is 
'�Ƿ�Ϊ���Ź�˾';

comment on column T_BD_shop.faccountbank is 
'�����˺�';

comment on column T_BD_shop.faccountperiodtype is 
'����ڼ�����';

comment on column T_BD_shop.fjuridicalperson is 
'���˴���';

comment on column T_BD_shop.faddress is 
'��ַ';

comment on column T_BD_shop.fregisteredcapital is 
'ע���ʱ�';

comment on column T_BD_shop.fsetupdate is 
'��������';

comment on column T_BD_shop.fendupdate is 
'Ӫҵ��Ч��';

comment on column T_BD_shop.fregisteredcode is 
'ע��ǼǺ�';

comment on column T_BD_shop.fdescription is 
'����';

comment on column T_BD_shop.fcreator is 
'������';

comment on column T_BD_shop.fcreatetime is 
'����ʱ��';

comment on column T_BD_shop.flastupdateuser is 
'��������';

comment on column T_BD_shop.flastupdatetime is 
'������ʱ��';

/*==============================================================*/
/* Index: T_BD_shop_PK                                          */
/*==============================================================*/
create unique index T_BD_shop_PK on T_BD_shop (
fid ASC
);

/*==============================================================*/
/* Table: T_BD_supplier                                         */
/*==============================================================*/
create table T_BD_supplier 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(50)                    not null,
   constraint PK_T_BD_SUPPLIER primary key (fid)
);

comment on table T_BD_supplier is 
'��Ӧ��';

comment on column T_BD_supplier.fid is 
'id';

comment on column T_BD_supplier.fname is 
'��Ӧ������';

comment on column T_BD_supplier.fnumber is 
'��Ӧ�̱���';

/*==============================================================*/
/* Index: T_BD_supplier_PK                                      */
/*==============================================================*/
create unique index T_BD_supplier_PK on T_BD_supplier (
fid ASC
);

/*==============================================================*/
/* Table: T_BD_supplierproduct                                  */
/*==============================================================*/
create table T_BD_supplierproduct 
(
   fid                  char(10)                       not null,
   fsupplierid          char(10)                       not null,
   fproductid           char(10)                       not null,
   fnum                 char(10)                       null,
   fprice               char(10)                       null,
   constraint PK_T_BD_SUPPLIERPRODUCT primary key (fid)
);

comment on table T_BD_supplierproduct is 
'��Ӧ��ӵ�е���Ʒ';

comment on column T_BD_supplierproduct.fid is 
'uuid';

comment on column T_BD_supplierproduct.fsupplierid is 
'��Ӧ��id';

comment on column T_BD_supplierproduct.fproductid is 
'��Ʒid';

comment on column T_BD_supplierproduct.fnum is 
'����';

comment on column T_BD_supplierproduct.fprice is 
'�۸�';

/*==============================================================*/
/* Index: T_BD_supplierproduct_PK                               */
/*==============================================================*/
create unique index T_BD_supplierproduct_PK on T_BD_supplierproduct (
fid ASC
);

