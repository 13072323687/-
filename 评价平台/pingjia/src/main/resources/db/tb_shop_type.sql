create table tb_shop_type
(
    id          bigint unsigned auto_increment comment '主键'
        primary key,
    name        varchar(32)                         null comment '类型名称',
    icon        varchar(255)                        null comment '图标',
    sort        int(3) unsigned                     null comment '顺序',
    create_time timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    update_time timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间'
)
    charset = utf8mb4
    row_format = COMPACT;

