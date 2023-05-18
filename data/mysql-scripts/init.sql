GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'redpanda' ;

create database redpanda;

GRANT ALL PRIVILEGES ON redpanda.* TO 'redpanda'@'%';

use redpanda;
create table leaderboard (
    id int primary key,
    username varchar(32),
    score int unsigned,
    created_date datetime,
    last_modified_date datetime
);
insert into leaderboard (id, username, score, created_date, last_modified_date)
values (1, 'curiouscat78', 1000, now(), now());
insert into leaderboard (id, username, score, created_date, last_modified_date)
values (2, 'Hokage1998', 3000, now(), now());
insert into leaderboard (id, username, score, created_date, last_modified_date)
values (3, 'thanos_ring23', 400, now(), now());