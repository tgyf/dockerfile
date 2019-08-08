use mysql;
select host, user from user;
create user irext identified by '421aWill';
grant all on irext.* to irext@'%' identified by '421aWill' with grant option;
flush privileges;