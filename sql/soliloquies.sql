set names utf8;
set foreign_key_checks=0;

drop database if exists soliloquies;
create database if not exists soliloquies;

use soliloquies;

-- ユーザー
create table users(
	id int primary key not null auto_increment comment "ID",
	login_id varchar(16) unique not null comment "ログインID",
	password varchar(16) not null comment "パスワード",
	name varchar(100) not null comment "表示名",
	introductions varchar(500) not null default "" comment "紹介文",
	created_at datetime not null comment "作成日",
	updated_at datetime not null comment "更新日"
);

insert into users values(1, "guest", "guest", "guest", "introductions", now(), now());
