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
   fid                  varchar(50) not null comment 'uuid',
   fname                varchar(50) not null comment '名称',
   fnumber              varchar(50) not null comment '编码',
   fbankaccount         varchar(50) comment '银行账号',
   fshopid              varchar(50) comment '开户店铺',
   fisclosed            int         comment '是否销户',
   fopendate            date comment '开户日期',
   fclosedate           date comment '销户日期',
   fbank                varchar(50) comment '银行机构',
   fphonenumber         varchar(50) comment '电话号码',
   fissetbankinterface  varchar(50) comment '是否设置银行接口',
   fbanktype            varchar(50) comment '银行类型',
   finneraccount        varchar(50) comment '对应内部账号',
   fctrlstrategy        varchar(50) comment '管理策略',
   fclassification      varchar(50) comment '记账分类',
   fismotheraccount     varchar(50) comment '是否母账号',
   faccounttype         varchar(50) comment '账户性质',
   fnotoutpay           int         comment '收否不允许对外支付',
   fsubaccount          varchar(50) comment '母账号',
   fisbank              int         comment '是否银行科目',
   fiscash              int         comment '是否现金科目',
   facctname            varchar(50) comment '账户名称',
   frelemotheracct      varchar(50) comment '对应母账号',
   fisdcpay             int         comment '是否定向划转',
   fisreckoning         int         comment '是否清算户',
   fsimplecode          varchar(50) comment '助记码',
   fagencyshop          varchar(50) comment '代理付款店铺',
   fmaxpayamount        varchar(50) comment '支付限额',
   fapplybillid         varchar(50) comment '申请单id',
   fbankversion         varchar(50) comment '银行版本',
   fbankcert            varchar(50) comment '银行证书',
   freference           varchar(50) comment '参考信息',
   fcountry             varchar(50) comment '国家',
   fbankinterface       varchar(50) comment '银企接口信息',
   fbankinterfaceid     varchar(50) comment '银企接口id',
   fsyncstatus          int         comment '同步状态',
   fsyncstatusmsg       varchar(50) comment '同步状态结果返回信息',
   fsharetype           int         comment '账户使用权限类型',
   fdescription         varchar(50) comment '描述',
   fcreator             date comment '创建人',
   fcreatetime          date comment '创建时间',
   flastudpateuser      varchar(50) comment '最后更新人',
   flastupdatetime      varchar(50) comment '最后更新时间',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
   fgender              int         comment '性别',
   fbirthday            date        comment '出生日期',
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
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_supplier comment '供应商';

/*==============================================================*/
/* Table: T_BD_supplierproduct                                  */
/*==============================================================*/
create table T_BD_supplierproduct
(
   fid                  varchar(50) not null comment 'uuid',
   fsupplierid          varchar(50) not null comment '供应商id',
   fproductid           varchar(50) not null comment '产品id',
   fnum                 int comment '数量',
   fprice               decimal(18, 2) comment '价格',
   primary key (fid)
) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

alter table T_BD_supplierproduct comment '供应商拥有的商品';

