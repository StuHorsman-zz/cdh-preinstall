create database amon DEFAULT CHARACTER SET utf8;
create database rman DEFAULT CHARACTER SET utf8;
create database nav DEFAULT CHARACTER SET utf8;
create database hive DEFAULT CHARACTER SET utf8;
create database impala DEFAULT CHARACTER SET utf8;
grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'cl0udamon';
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'cl0udrman';
grant all on nav.* TO 'nav'@'%' IDENTIFIED BY 'cl0udnav';
grant all on impala.* TO 'impala'@'%' IDENTIFIED BY 'cl0udimp';
grant all on hive.* TO 'hive'@'%' IDENTIFIED BY 'cl0udhive';