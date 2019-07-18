/* -----------------------------------------用户表----------------------------------------- */

-- 用户信息基础表
create table if not exists consumer_base (
    cb_id bigint not null primary key auto_increment comment '用户ID，自增主键',
    cb_username varchar(64) not null comment '用户名',
    cb_password varchar(64) not null comment '密码，可以是汉字',
    cb_phone char(11) comment '手机号，暂时只考虑大陆区号',
    cb_email varchar(200) comment '电子邮箱',
    cb_nickname varchar(64) comment '昵称，可以随意更改',
    cb_date date not null default current_date comment '注册日期',
    cb_time time not null default current_time comment '注册时间',
    cb_have_phone char(1) not null default 0 comment '是否绑定手机，1为是，0为否',
    cb_have_email char(1) not null default 0 comment '是否绑定邮箱，1为是，0为否',
    cb_isdel char(1) not null default 1 comment '是否删除，1为存在，0为删除，其他状态预留'
) engine = InnoDB auto_increment = 1 default charset = utf8mb4;

/*
-- 用户信息历史表：1
create table if not exists cb_history_1 (
    cbh1_id bigint not null primary key auto_increment comment '自增主键',
    cbh1_username varchar(64) comment '上一个用户名',
    cbh1_password varchar(64) comment '上一个密码',
    cbh1_phone char(11) comment '上一个手机号',
    cbh1_email varchar(200) comment '电子邮箱',
    cbh1_date date not null default current_date comment '注册日期',
    cbh1_time time not null default current_time comment '注册时间',
    cbh1_isdel char(1) not null default 1 comment '是否删除，1为存在，0为删除'
) engine = InnoDB auto_increment = 1 default charset =utf8mb4;

-- 用户信息历史表：2
create table if not exists cb_history_2 (
    cbh2_id bigint not null primary key auto_increment comment '',
    cbh2_username varchar(64) comment '上一个用户名',
    cbh2_password varchar(64) comment '上一个密码',
    cbh2_phone char(11) comment '上一个手机号',
    cbh2_email varchar(200) comment '电子邮箱',
    cbh2_date date not null default current_date comment '注册日期',
    cbh2_time time not null default current_time comment '注册时间',
    cbh2_isdel char(1) not null default 1 comment '是否删除，1为存在，0为删除'
) engine = InnoDB auto_increment = 1 default charset =utf8mb4;

-- 用户信息历史表：3
create table if not exists cb_history_3 (
    cbh3_id bigint not null primary key auto_increment comment '',
    cbh3_username varchar(64) comment '上一个用户名',
    cbh3_password varchar(64) comment '上一个密码',
    cbh3_phone char(11) comment '上一个手机号',
    cbh3_email varchar(200) comment '电子邮箱',
    cbh3_date date not null default current_date comment '注册日期',
    cbh3_time time not null default current_time comment '注册时间',
    cbh3_isdel char(1) not null default 1 comment '是否删除，1为存在，0为删除'
) engine = InnoDB auto_increment = 1 default charset =utf8mb4;
*/
/*
-- 用户信息历史表：用户名
create table if not exists username_in_cb_history (
    cbh_id bigint not null primary key auto_increment comment 'ID，自增主键',
    cbh_username_h1 varchar(64) not null comment '历史用户名1',
    cbh_username_h2 varchar(64) not null comment '历史用户名2',
    cbh_username_h3 varchar(64) not null comment '历史用户名3',
    cbh_isdel char(1) not null default 1 comment '是否删除，1为存在，0为删除，其他状态预留'
) engine = InnoDB auto_increment = 1 default charset = utf8mb4;

-- 用户信息历史表：密码
create table if not exists password_in_cb_history (
    cbh_id bigint not null primary key auto_increment comment 'ID，自增主键',
    cbh_password_h1 varchar(64) not null comment '历史密码1',
    cbh_password_h2 varchar(64) not null comment '历史密码2',
    cbh_password_h3 varchar(64) not null comment '历史密码3',
    cbh_isdel char(1) not null default 1 comment '是否删除，1为存在，0为删除，其他状态预留'
) engine = InnoDB auto_increment = 1 default charset = utf8mb4;
*/

-- 用户信息扩展表
create table if not exists consumer_extend (
    ce_id bigint not null primary key auto_increment comment '用户ID，自增主键',
    ce_name char(20) comment '姓名',
    ce_gender char(1) not null default 0 comment '性别，0为未知，1为男，2为女',
    ce_age int(3) not null default 0 comment '年龄，默认0岁',
    ce_birthday date default null comment '生日',
    ce_isdel char(1) not null default 1 comment '是否删除，1为存在，0为删除，其他状态预留'
) engine = InnoDB auto_increment = 1 default charset = utf8mb4;


-- 用户角色表
/* cr_role_code：用户角色码，
   一级码为一个小写字母（大写字母预留），
   二级码为两个字符，包括数字和大小写字母（目前只用小写字母，大写字母预留），
   三级码为一个数字或大小写字母（目前只用小写字母，大写字母预留）
 */
create table if not exists consumer_role (
    cr_id bigint not null primary key auto_increment comment '用户角色ID，自增主键',
    cr_role_code char(4) not null default 'aa11' comment '用户角色码，默认aa11',
    cr_role varchar(20) not null default 'tripper' comment '用户角色，默认游客',
    cr_isdel char(1) not null default 1 comment '是否删除，1为存在，0为删除，其他状态预留'
) engine = InnoDB auto_increment = 1 default charset = utf8mb4;