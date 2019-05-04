/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/4/25 16:52:42                           */
/*==============================================================*/


drop table if exists auth_function;

drop table if exists auth_role;

drop table if exists role_function;


drop table if exists user_role;

/*==============================================================*/
/* Table: auth_function                                         */
/*==============================================================*/
create table auth_function
(
   id                   varchar(64) not null,
   name                 varchar(255),
   code                 varchar(255),
   description          varchar(255),
   page                 varchar(255),
   generatemenu         varchar(255),
   zindex               int,
   pid                  varchar(64),
   primary key (id),
   key AK_Key_2 (name)
);

/*==============================================================*/
/* Table: auth_role                                             */
/*==============================================================*/
create table auth_role
(
   id                   varchar(64) not null,
   name                 varchar(255),
   code                 varchar(255),
   description          varchar(255),
   primary key (id),
   key AK_Key_2 (name)
);

/*==============================================================*/
/* Table: role_function                                         */
/*==============================================================*/
create table role_function
(
   role_id              varchar(64) not null,
   function_id          varchar(64) not null,
   primary key (role_id, function_id)
);


/*==============================================================*/
/* Table: user_role                                             */
/*==============================================================*/
create table user_role
(
   user_id              varchar(64) not null,
   role_id              varchar(64) not null,
   primary key (user_id, role_id)
);

alter table auth_function add constraint FK_Reference_10 foreign key (pid)
      references auth_function (id) on delete restrict on update restrict;

alter table role_function add constraint FK_Reference_20 foreign key (function_id)
      references auth_function (id) on delete restrict on update restrict;

alter table role_function add constraint FK_Reference_30 foreign key (role_id)
      references auth_role (id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_40 foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

alter table user_role add constraint FK_Reference_50 foreign key (role_id)
      references auth_role (id) on delete restrict on update restrict;

