create table tb_sign
(
    id        bigint unsigned auto_increment comment '主键'
        primary key,
    user_id   bigint unsigned     not null comment '用户id',
    year      year                not null comment '签到的年',
    month     tinyint(2)          not null comment '签到的月',
    date      date                not null comment '签到的日期',
    is_backup tinyint(1) unsigned null comment '是否补签'
)
    charset = utf8mb4
    row_format = COMPACT;

