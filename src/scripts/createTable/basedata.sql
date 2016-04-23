/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/4/23 星期六 上午 11:08:43                    */
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
   fname                char(10) not null comment '名称',
   fnumber              char(10) not null comment '编码',
   fbankaccount         char(10) comment '银行账号',
   fshopid              char(10) comment '开户店铺',
   fisclosed            char(10) comment '是否销户',
   fopendate            char(10) comment '开户日期',
   fclosedate           char(10) comment '销户日期',
   fbank                char(10) comment '银行机构',
   fphonenumber         char(10) comment '电话号码',
   fissetbankinterface  char(10) comment '是否设置银行接口',
   fbanktype            char(10) comment '银行类型',
   finneraccount        char(10) comment '对应内部账号',
   fctrlstrategy        char(10) comment '管理策略',
   fclassification      char(10) comment '记账分类',
   fismotheraccount     char(10) comment '是否母账号',
   faccounttype         char(10) comment '账户性质',
   fnotoutpay           char(10) comment '收否不允许对外支付',
   fsubaccount          char(10) comment '母账号',
   fisbank              char(10) comment '是否银行科目',
   fiscash              char(10) comment '是否现金科目',
   facctname            char(10) comment '账户名称',
   frelemotheracct      char(10) comment '对应母账号',
   fisdcpay             char(10) comment '是否定向划转',
   fisreckoning         char(10) comment '是否清算户',
   fsimplecode          char(10) comment '助记码',
   fagencyshop          char(10) comment '代理付款店铺',
   fmaxpayamount        char(10) comment '支付限额',
   fapplybillid         char(10) comment '申请单id',
   fbankversion         char(10) comment '银行版本',
   fbankcert            char(10) comment '银行证书',
   freference           char(10) comment '参考信息',
   fcountry             char(10) comment '国家',
   fbankinterface       char(10) comment '银企接口信息',
   fbankinterfaceid     char(10) comment '银企接口id',
   fsyncstatus          char(10) comment '同步状态',
   fsyncstatusmsg       char(10) comment '同步状态结果返回信息',
   fsharetype           char(10) comment '账户使用权限类型',
   fdescription         char(10) comment '描述',
   fcreator             char(10) comment '创建人',
   fcreatetime          char(10) comment '创建时间',
   flastudpateuser      char(10) comment '最后更新人',
   flastupdatetime      char(10) comment '最后更新时间',
   primary key (fid)
);

alter table T_BD_accountbank comment '银行账户';

/*==============================================================*/
/* Table: T_BD_customer                                         */
/*==============================================================*/
create table T_BD_customer
(
   fid                  varchar(50) not null comment 'UUID',
   fname                varchar(100) not null comment '用户名称',
   fnumber              varchar(50) not null comment '用户编码',
   fshopid              varchar(50) comment '所属店铺',
   fgender              int comment '性别',
   fbirthday            date comment '出生日期',
   femai                varchar(50) comment '邮箱',
   fstate               int comment '状态',
   fhomephone           varchar(50) comment '家庭电话',
   fofficephone         varchar(50) comment '办公电话',
   fcell                varchar(50) comment '手机号码',
   fidcard              varchar(50) comment '身份证',
   fheight              int comment '身高',
   fnativeplace         varchar(50) comment '籍贯',
   fbloodtype           int comment '血型',
   ffolk                varchar(50) comment '民族',
   fdescription         varchar(50) comment '描叙',
   fcreator             varchar(50) comment '创建者',
   fcreatetime          date comment '创建时间',
   flastupdateuser      varchar(50) comment '最后更新人',
   flastupdatetime      date comment '最后更新时间',
   primary key (fid)
);

alter table T_BD_customer comment '客户';

/*==============================================================*/
/* Table: T_BD_customerpossession                               */
/*==============================================================*/
create table T_BD_customerpossession
(
   fid                  varchar(50) not null comment 'uuid',
   fcustomerid          varchar(50) not null comment '顾客id',
   fpossessionid        varchar(50) not null comment '财产id',
   fnum                 int comment '数量',
   primary key (fid)
);

alter table T_BD_customerpossession comment '顾客财产';

/*==============================================================*/
/* Table: T_BD_possession                                       */
/*==============================================================*/
create table T_BD_possession
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '财产名',
   fnumber              varchar(100) not null comment '财产编码',
   fstatus              int comment '状态',
   primary key (fid)
);

alter table T_BD_possession comment '财产';

/*==============================================================*/
/* Table: T_BD_product                                          */
/*==============================================================*/
create table T_BD_product
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '商品名称',
   fnumber              varchar(100) not null comment '商品编码',
   primary key (fid)
);

alter table T_BD_product comment '商品';

/*==============================================================*/
/* Table: T_BD_shop                                             */
/*==============================================================*/
create table T_BD_shop
(
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(100) not null comment '店铺名称',
   fnumber              varchar(100) not null comment '店铺编码',
   fparentid            varchar(50) comment '上级店铺',
   ftaxnumber           varchar(100) comment '税务登记号',
   fisgroup             int comment '是否为集团公司',
   faccountbank         varchar(100) comment '银行账号',
   freportcurrency      varchar(50) comment '报告货币',
   faccountperiodtype   varchar(100) comment '会计期间类型',
   fjuridicalperson     varchar(100) comment '法人代表',
   faddress             varchar(100) comment '地址',
   fregion              varchar(100) comment '区域',
   feconomictype        varchar(100) comment '经济类型',
   fregisteredcapital   decimal(12,2) comment '注册资本',
   fsetupdate           date comment '成立日期',
   fendupdate           date comment '营业有效期',
   fregisteredcode      varchar(200) comment '注册登记号',
   fdescription         varchar(200) comment '描述',
   fcreator             varchar(50) comment '创建者',
   fcreatetime          date comment '创建时间',
   flastupdateuser      varchar(50) comment '最后更新人',
   flastupdatetime      date comment '最后更新时间',
   primary key (fid)
);

alter table T_BD_shop comment '店铺,具体的一个个商家';

/*==============================================================*/
/* Table: T_BD_shopcustomer                                     */
/*==============================================================*/
create table T_BD_shopcustomer
(
   fid                  varchar(50) not null comment 'uuid',
   fshopid              varchar(50) not null comment '店铺id',
   fcustomerid          varchar(50) not null comment '顾客id',
   fstatus              int comment '状态',
   primary key (fid)
);

alter table T_BD_shopcustomer comment '店铺和用户的所属关系表';

/*==============================================================*/
/* Table: T_BD_supplier                                         */
/*==============================================================*/
create table T_BD_supplier
(
   fid                  varchar(50) not null comment 'id',
   fname                varchar(100) not null comment '供应商名称',
   fnumber              varchar(50) not null comment '供应商编码',
   primary key (fid)
);

alter table T_BD_supplier comment '供应商';

/*==============================================================*/
/* Table: T_BD_supplierproduct                                  */
/*==============================================================*/
create table T_BD_supplierproduct
(
   fid                  char(10) not null comment 'uuid',
   fsupplierid          char(10) not null comment '供应商id',
   fproductid           char(10) not null comment '产品id',
   fnum                 char(10) comment '数量',
   fprice               char(10) comment '价格',
   primary key (fid)
);

alter table T_BD_supplierproduct comment '供应商拥有的商品';

