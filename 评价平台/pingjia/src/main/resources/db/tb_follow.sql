create table tb_follow
(
    id             bigint auto_increment comment '主键'
        primary key,
    user_id        bigint unsigned                     not null comment '用户id',
    follow_user_id bigint unsigned                     not null comment '关联的用户id',
    create_time    timestamp default CURRENT_TIMESTAMP not null comment '创建时间'
)
    charset = utf8mb4
    row_format = COMPACT;

