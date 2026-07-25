create table tb_shop
(
    id          bigint unsigned auto_increment comment '主键'
        primary key,
    name        varchar(128)                        not null comment '商铺名称',
    type_id     bigint unsigned                     not null comment '商铺类型的id',
    images      varchar(1024)                       not null comment '商铺图片，多个图片以'',''隔开',
    area        varchar(128)                        null comment '商圈，例如陆家嘴',
    address     varchar(255)                        not null comment '地址',
    x           double unsigned                     not null comment '经度',
    y           double unsigned                     not null comment '维度',
    avg_price   bigint(10) unsigned                 null comment '均价，取整数',
    sold        int unsigned zerofill               not null comment '销量',
    comments    int unsigned zerofill               not null comment '评论数量',
    score       int(2) unsigned zerofill            not null comment '评分，1~5分，乘10保存，避免小数',
    open_hours  varchar(32)                         null comment '营业时间，例如 10:00-22:00',
    create_time timestamp default CURRENT_TIMESTAMP null comment '创建时间',
    update_time timestamp default CURRENT_TIMESTAMP null on update CURRENT_TIMESTAMP comment '更新时间'
)
    charset = utf8mb4
    row_format = COMPACT;

create index foreign_key_type
    on tb_shop (type_id);

