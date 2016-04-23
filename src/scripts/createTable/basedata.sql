/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     2016/4/23 20:57:00                           */
/*==============================================================*/


drop index if exists t_bd_accountbank.T_BD_accountbank_PK;

drop table if exists t_bd_accountbank;

drop index if exists t_bd_customer.T_BD_customer_PK;

drop table if exists t_bd_customer;

drop index if exists t_bd_customerpossession.T_BD_customerpossession_PK;

drop table if exists t_bd_customerpossession;

drop index if exists t_bd_possession.T_BD_possession_PK;

drop table if exists t_bd_possession;

drop index if exists t_bd_product.T_BD_product_PK;

drop table if exists t_bd_product;

drop index if exists t_bd_shop.T_BD_shop_PK;

drop table if exists t_bd_shop;

drop index if exists t_bd_supplier.T_BD_supplier_PK;

drop table if exists t_bd_supplier;

drop index if exists t_bd_supplierproduct.T_BD_supplierproduct_PK;

drop table if exists t_bd_supplierproduct;

/*==============================================================*/
/* Table: t_bd_accountbank                                      */
/*==============================================================*/
create table t_bd_accountbank 
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

comment on table t_bd_accountbank is 
'银行账户';

comment on column t_bd_accountbank.fid is 
'uuid';

comment on column t_bd_accountbank.fname is 
'名称';

comment on column t_bd_accountbank.fnumber is 
'编码';

comment on column t_bd_accountbank.fbankaccount is 
'银行账号';

comment on column t_bd_accountbank.fshopid is 
'开户店铺';

comment on column t_bd_accountbank.fisclosed is 
'是否销户';

comment on column t_bd_accountbank.fopendate is 
'开户日期';

comment on column t_bd_accountbank.fclosedate is 
'销户日期';

comment on column t_bd_accountbank.fbank is 
'银行机构';

comment on column t_bd_accountbank.fphonenumber is 
'电话号码';

comment on column t_bd_accountbank.fissetbankinterface is 
'是否设置银行接口';

comment on column t_bd_accountbank.fbanktype is 
'银行类型';

comment on column t_bd_accountbank.finneraccount is 
'对应内部账号';

comment on column t_bd_accountbank.fctrlstrategy is 
'管理策略';

comment on column t_bd_accountbank.fclassification is 
'记账分类';

comment on column t_bd_accountbank.fismotheraccount is 
'是否母账号';

comment on column t_bd_accountbank.faccounttype is 
'账户性质';

comment on column t_bd_accountbank.fnotoutpay is 
'收否不允许对外支付';

comment on column t_bd_accountbank.fsubaccount is 
'母账号';

comment on column t_bd_accountbank.fisbank is 
'是否银行科目';

comment on column t_bd_accountbank.fiscash is 
'是否现金科目';

comment on column t_bd_accountbank.facctname is 
'账户名称';

comment on column t_bd_accountbank.frelemotheracct is 
'对应母账号';

comment on column t_bd_accountbank.fisdcpay is 
'是否定向划转';

comment on column t_bd_accountbank.fisreckoning is 
'是否清算户';

comment on column t_bd_accountbank.fsimplecode is 
'助记码';

comment on column t_bd_accountbank.fagencyshop is 
'代理付款店铺';

comment on column t_bd_accountbank.fmaxpayamount is 
'支付限额';

comment on column t_bd_accountbank.fapplybillid is 
'申请单id';

comment on column t_bd_accountbank.fbankversion is 
'银行版本';

comment on column t_bd_accountbank.fbankcert is 
'银行证书';

comment on column t_bd_accountbank.freference is 
'参考信息';

comment on column t_bd_accountbank.fcountry is 
'国家';

comment on column t_bd_accountbank.fbankinterface is 
'银企接口信息';

comment on column t_bd_accountbank.fbankinterfaceid is 
'银企接口id';

comment on column t_bd_accountbank.fsyncstatus is 
'同步状态';

comment on column t_bd_accountbank.fsyncstatusmsg is 
'同步状态结果返回信息';

comment on column t_bd_accountbank.fsharetype is 
'账户使用权限类型';

comment on column t_bd_accountbank.fdescription is 
'描述';

comment on column t_bd_accountbank.fcreator is 
'创建人';

comment on column t_bd_accountbank.fcreatetime is 
'创建时间';

comment on column t_bd_accountbank.flastudpateuser is 
'最后更新人';

comment on column t_bd_accountbank.flastupdatetime is 
'最后更新时间';

/*==============================================================*/
/* Index: T_BD_accountbank_PK                                   */
/*==============================================================*/
create unique index T_BD_accountbank_PK on t_bd_accountbank (
fid ASC
);

/*==============================================================*/
/* Table: t_bd_customer                                         */
/*==============================================================*/
create table t_bd_customer 
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

comment on table t_bd_customer is 
'客户';

comment on column t_bd_customer.fid is 
'UUID';

comment on column t_bd_customer.fname is 
'用户名称';

comment on column t_bd_customer.fnumber is 
'用户编码';

comment on column t_bd_customer.fopenid is 
'微信的openid';

comment on column t_bd_customer.fheadportrait is 
'微信头像';

comment on column t_bd_customer.fissubsciber is 
'是否关注头像';

comment on column t_bd_customer.fbindcode is 
'绑定码';

comment on column t_bd_customer.fshopid is 
'所属店铺';

comment on column t_bd_customer.fgender is 
'性别';

comment on column t_bd_customer.fbirthday is 
'出生日期';

comment on column t_bd_customer.femai is 
'邮箱';

comment on column t_bd_customer.fstate is 
'状态';

comment on column t_bd_customer.fhomephone is 
'家庭电话';

comment on column t_bd_customer.fofficephone is 
'办公电话';

comment on column t_bd_customer.fcell is 
'手机号码';

comment on column t_bd_customer.fidcard is 
'身份证';

comment on column t_bd_customer.fheight is 
'身高';

comment on column t_bd_customer.fnativeplace is 
'籍贯';

comment on column t_bd_customer.fbloodtype is 
'血型';

comment on column t_bd_customer.ffolk is 
'民族';

comment on column t_bd_customer.fdescription is 
'描叙';

comment on column t_bd_customer.fcreator is 
'创建者';

comment on column t_bd_customer.fcreatetime is 
'创建时间';

comment on column t_bd_customer.flastupdateuser is 
'最后更新人';

comment on column t_bd_customer.flastupdatetime is 
'最后更新时间';

/*==============================================================*/
/* Index: T_BD_customer_PK                                      */
/*==============================================================*/
create unique index T_BD_customer_PK on t_bd_customer (
fid ASC
);

/*==============================================================*/
/* Table: t_bd_customerpossession                               */
/*==============================================================*/
create table t_bd_customerpossession 
(
   fid                  varchar(50)                    not null,
   fcustomerid          varchar(50)                    not null,
   fpossessionid        varchar(50)                    not null,
   fnum                 integer                        null,
   constraint PK_T_BD_CUSTOMERPOSSESSION primary key (fid)
);

comment on table t_bd_customerpossession is 
'顾客财产';

comment on column t_bd_customerpossession.fid is 
'uuid';

comment on column t_bd_customerpossession.fcustomerid is 
'顾客id';

comment on column t_bd_customerpossession.fpossessionid is 
'财产id';

comment on column t_bd_customerpossession.fnum is 
'数量';

/*==============================================================*/
/* Index: T_BD_customerpossession_PK                            */
/*==============================================================*/
create unique index T_BD_customerpossession_PK on t_bd_customerpossession (
fid ASC
);

/*==============================================================*/
/* Table: t_bd_possession                                       */
/*==============================================================*/
create table t_bd_possession 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(100)                   not null,
   fstatus              integer                        null,
   constraint PK_T_BD_POSSESSION primary key (fid)
);

comment on table t_bd_possession is 
'财产';

comment on column t_bd_possession.fid is 
'uuid';

comment on column t_bd_possession.fname is 
'财产名';

comment on column t_bd_possession.fnumber is 
'财产编码';

comment on column t_bd_possession.fstatus is 
'状态';

/*==============================================================*/
/* Index: T_BD_possession_PK                                    */
/*==============================================================*/
create unique index T_BD_possession_PK on t_bd_possession (
fid ASC
);

/*==============================================================*/
/* Table: t_bd_product                                          */
/*==============================================================*/
create table t_bd_product 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(100)                   not null,
   constraint PK_T_BD_PRODUCT primary key (fid)
);

comment on table t_bd_product is 
'商品';

comment on column t_bd_product.fid is 
'uuid';

comment on column t_bd_product.fname is 
'商品名称';

comment on column t_bd_product.fnumber is 
'商品编码';

/*==============================================================*/
/* Index: T_BD_product_PK                                       */
/*==============================================================*/
create unique index T_BD_product_PK on t_bd_product (
fid ASC
);

/*==============================================================*/
/* Table: t_bd_shop                                             */
/*==============================================================*/
create table t_bd_shop 
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

comment on table t_bd_shop is 
'店铺,具体的一个个商家';

comment on column t_bd_shop.fid is 
'uuid';

comment on column t_bd_shop.fname is 
'店铺名称';

comment on column t_bd_shop.fnumber is 
'店铺编码';

comment on column t_bd_shop.fparentid is 
'上级店铺';

comment on column t_bd_shop.ftaxnumber is 
'税务登记号';

comment on column t_bd_shop.fisgroup is 
'是否为集团公司';

comment on column t_bd_shop.faccountbank is 
'银行账号';

comment on column t_bd_shop.faccountperiodtype is 
'会计期间类型';

comment on column t_bd_shop.fjuridicalperson is 
'法人代表';

comment on column t_bd_shop.faddress is 
'地址';

comment on column t_bd_shop.fregisteredcapital is 
'注册资本';

comment on column t_bd_shop.fsetupdate is 
'成立日期';

comment on column t_bd_shop.fendupdate is 
'营业有效期';

comment on column t_bd_shop.fregisteredcode is 
'注册登记号';

comment on column t_bd_shop.fdescription is 
'描述';

comment on column t_bd_shop.fcreator is 
'创建者';

comment on column t_bd_shop.fcreatetime is 
'创建时间';

comment on column t_bd_shop.flastupdateuser is 
'最后更新人';

comment on column t_bd_shop.flastupdatetime is 
'最后更新时间';

/*==============================================================*/
/* Index: T_BD_shop_PK                                          */
/*==============================================================*/
create unique index T_BD_shop_PK on t_bd_shop (
fid ASC
);

/*==============================================================*/
/* Table: t_bd_supplier                                         */
/*==============================================================*/
create table t_bd_supplier 
(
   fid                  varchar(50)                    not null,
   fname                varchar(100)                   not null,
   fnumber              varchar(50)                    not null,
   constraint PK_T_BD_SUPPLIER primary key (fid)
);

comment on table t_bd_supplier is 
'供应商';

comment on column t_bd_supplier.fid is 
'id';

comment on column t_bd_supplier.fname is 
'供应商名称';

comment on column t_bd_supplier.fnumber is 
'供应商编码';

/*==============================================================*/
/* Index: T_BD_supplier_PK                                      */
/*==============================================================*/
create unique index T_BD_supplier_PK on t_bd_supplier (
fid ASC
);

/*==============================================================*/
/* Table: t_bd_supplierproduct                                  */
/*==============================================================*/
create table t_bd_supplierproduct 
(
   fid                  char(10)                       not null,
   fsupplierid          char(10)                       not null,
   fproductid           char(10)                       not null,
   fnum                 char(10)                       null,
   fprice               char(10)                       null,
   constraint PK_T_BD_SUPPLIERPRODUCT primary key (fid)
);

comment on table t_bd_supplierproduct is 
'供应商拥有的商品';

comment on column t_bd_supplierproduct.fid is 
'uuid';

comment on column t_bd_supplierproduct.fsupplierid is 
'供应商id';

comment on column t_bd_supplierproduct.fproductid is 
'产品id';

comment on column t_bd_supplierproduct.fnum is 
'数量';

comment on column t_bd_supplierproduct.fprice is 
'价格';

/*==============================================================*/
/* Index: T_BD_supplierproduct_PK                               */
/*==============================================================*/
create unique index T_BD_supplierproduct_PK on t_bd_supplierproduct (
fid ASC
);

