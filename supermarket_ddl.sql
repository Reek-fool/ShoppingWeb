/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/5/13 17:53:04                           */
/*==============================================================*/
drop database  if exists supermarket;

create database supermarket;

use supermarket;

drop table if exists address;

drop table if exists cart;

drop table if exists citys;

drop table if exists courier;

drop table if exists emp_role;

drop table if exists employee;

drop table if exists evaluation;

drop table if exists fresh_goods;

drop table if exists good_type;

drop table if exists logistics;

drop table if exists order_detial;

drop table if exists orders;

drop table if exists permissions;

drop table if exists province;

drop table if exists role_perm;

drop table if exists roles;

drop table if exists township;

drop table if exists users;

/*==============================================================*/
/* Table: address                                               */
/*==============================================================*/
create table address
(
   did                  int not null auto_increment,
   user_id              varchar(30),
   province             varchar(10),
   city                 varchar(10),
   township             varchar(10),
   detial               varchar(50),
   types                int default 1,
   primary key (did)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: cart                                                  */
/*==============================================================*/
create table cart
(
   cid                  int not null auto_increment,
   user_id              varchar(30) not null,
   fdid                 varchar(32) not null,
   count                int not null,
   primary key (cid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: citys                                                 */
/*==============================================================*/
create table citys
(
   cid                  int not null auto_increment,
   cname                varchar(30) not null,
   pid                  int not null,
   primary key (cid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: courier                                               */
/*==============================================================*/
create table courier
(
   account              varchar(32) not null,
   name                 varchar(32) not null,
   tel                  varchar(11),
   primary key (account)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: emp_role                                              */
/*==============================================================*/
create table emp_role
(
   eid                  int not null,
   rid                  int not null,
   primary key (eid, rid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: employee                                              */
/*==============================================================*/
create table employee
(
   eid                  int not null auto_increment,
   ename                varchar(30) not null,
   password             varchar(30) not null,
   tel                  varchar(11) not null,
   primary key (eid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: evaluation                                            */
/*==============================================================*/
create table evaluation
(
   eid                  int not null,
   user_id              varchar(30) not null,
   fdid                 varchar(32) not null,
   detial               text not null,
   grade                int not null default 5,
   eva_date             datetime default CURRENT_TIMESTAMP,
   primary key (eid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: fresh_goods                                           */
/*==============================================================*/
create table fresh_goods
(
   fdid                 varchar(32) not null,
   good_name            varchar(30) not null,
   gtid                 int not null,
   img                  varchar(255) not null,
   price                double not null,
   discount             int not null default 0,
   preference           int not null,
   if_promotion         int not null default 0,
   last_sales           int not null,
   current_sales        int not null,
   count_sales          int not null,
   summery              varchar(255),
   attr1                varchar(20),
   attr2                varchar(20),
   primary key (fdid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: good_type                                             */
/*==============================================================*/
create table good_type
(
   gtid                 int not null auto_increment,
   gtname               varchar(30) not null,
   primary key (gtid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: logistics                                             */
/*==============================================================*/
create table logistics
(
   lid                  int not null,
   account              varchar(32),
   user_id              varchar(30) not null,
   oid                  varchar(32) not null,
   pay_time             datetime not null,
   package_time         datetime,
   begin_time           datetime,
   end_time             datetime,
   status               int not null default 0,
   primary key (lid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: order_detial                                          */
/*==============================================================*/
create table order_detial
(
   did                  int not null auto_increment,
   oid                  varchar(32) not null,
   fdid                 varchar(32) not null,
   count                int not null,
   primary key (did)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: orders                                                */
/*==============================================================*/
create table orders
(
   oid                  varchar(32) not null,
   user_id              varchar(30) not null,
   order_time           datetime not null default CURRENT_TIMESTAMP,
   total_price          double not null,
   order_status         int not null default 1,
   pay_type             int not null,
   primary key (oid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: permissions                                           */
/*==============================================================*/
create table permissions
(
   pid                  int not null,
   pname                varchar(30) not null,
   primary key (pid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: province                                              */
/*==============================================================*/
create table province
(
   pid                  int not null auto_increment,
   pname                varchar(30) not null,
   primary key (pid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: role_perm                                             */
/*==============================================================*/
create table role_perm
(
   rid                  int not null,
   pid                  int not null,
   primary key (rid, pid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: roles                                                 */
/*==============================================================*/
create table roles
(
   rid                  int not null,
   rname                varchar(30) not null,
   detial               varchar(30),
   primary key (rid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: township                                              */
/*==============================================================*/
create table township
(
   tid                  int not null,
   tname                varchar(30) not null,
   cid                  int not null,
   primary key (tid)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: users                                                 */
/*==============================================================*/
create table users
(
   user_id              varchar(30) not null,
   user_name            varchar(32) not null,
   password             varchar(32) not null,
   email                varchar(32) not null,
   tel                  varchar(11) not null,
   level                int default 1,
   integral             int default 0,
   if_new				int default 0,
   primary key (user_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

alter table address add constraint FK_Reference_1 foreign key (user_id)
      references users (user_id) on delete restrict on update restrict;

alter table cart add constraint FK_Reference_7 foreign key (fdid)
      references fresh_goods (fdid) on delete restrict on update restrict;

alter table cart add constraint FK_Reference_8 foreign key (user_id)
      references users (user_id) on delete restrict on update restrict;

alter table citys add constraint FK_Reference_2 foreign key (pid)
      references province (pid) on delete restrict on update restrict;

alter table emp_role add constraint FK_Reference_11 foreign key (eid)
      references employee (eid) on delete restrict on update restrict;

alter table emp_role add constraint FK_Reference_12 foreign key (rid)
      references roles (rid) on delete restrict on update restrict;

alter table evaluation add constraint FK_Reference_4 foreign key (fdid)
      references fresh_goods (fdid) on delete restrict on update restrict;

alter table evaluation add constraint FK_Reference_5 foreign key (user_id)
      references users (user_id) on delete restrict on update restrict;

alter table fresh_goods add constraint FK_Reference_6 foreign key (gtid)
      references good_type (gtid) on delete restrict on update restrict;

alter table logistics add constraint FK_Reference_15 foreign key (account)
      references courier (account) on delete restrict on update restrict;

alter table logistics add constraint FK_Reference_16 foreign key (oid)
      references orders (oid) on delete restrict on update restrict;

alter table logistics add constraint FK_Reference_17 foreign key (user_id)
      references users (user_id) on delete restrict on update restrict;

alter table order_detial add constraint FK_Reference_9 foreign key (oid)
      references orders (oid) on delete restrict on update restrict;

alter table orders add constraint FK_Reference_10 foreign key (user_id)
      references users (user_id) on delete restrict on update restrict;

alter table role_perm add constraint FK_Reference_13 foreign key (rid)
      references roles (rid) on delete restrict on update restrict;

alter table role_perm add constraint FK_Reference_14 foreign key (pid)
      references permissions (pid) on delete restrict on update restrict;

alter table township add constraint FK_Reference_3 foreign key (cid)
      references citys (cid) on delete restrict on update restrict;

