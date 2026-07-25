create table tb_blog_comments
(
    id          bigint unsigned auto_increment comment '主键'
        primary key,
    user_id     bigint unsigned                     not null comment '用户id',
    blog_id     bigint unsigned                     not null comment '探店id',
    parent_id   bigint unsigned                     not null comment '关联的1级评论id，如果是一级评论，则值为0',
    answer_id   bigint unsigned                     not null comment '回复的评论id',
    content     varchar(255)                        not null comment '回复的内容',
    liked       int(8) unsigned                     null comment '点赞数',
    status      tinyint(1) unsigned                 null comment '状态，0：正常，1：被举报，2：禁止查看',
    create_time timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    charset = utf8mb4
    row_format = COMPACT;

