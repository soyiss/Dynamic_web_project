## member table
```
    drop table if exists member_table
    create table member_table(
        custno bigint auto_increment primary key,
        custname varchar(20),
        phone varchar(13),
        address varchar(60),
        joindate date,
        grade varchar(1),
        city varchar(2)
);
```