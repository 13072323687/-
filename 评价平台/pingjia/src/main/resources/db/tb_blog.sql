create table tb_blog
(
    id          bigint unsigned auto_increment comment '主键'
        primary key,
    shop_id     bigint                                    not null comment '商户id',
    user_id     bigint unsigned                           not null comment '用户id',
    title       varchar(255) collate utf8mb4_unicode_ci   not null comment '标题',
    images      varchar(2048)                             not null comment '探店的照片，最多9张，多张以","隔开',
    content     varchar(2048) collate utf8mb4_unicode_ci  not null comment '探店的文字描述',
    liked       int(8) unsigned default 0                 null comment '点赞数量',
    comments    int(8) unsigned                           null comment '评论数量',
    create_time timestamp       default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp       default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    charset = utf8mb4
    row_format = COMPACT;

