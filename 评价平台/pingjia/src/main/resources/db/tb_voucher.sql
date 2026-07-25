create table tb_voucher
(
    id           bigint unsigned auto_increment comment '主键'
        primary key,
    shop_id      bigint unsigned                               null comment '商铺id',
    title        varchar(255)                                  not null comment '代金券标题',
    sub_title    varchar(255)                                  null comment '副标题',
    rules        varchar(1024)                                 null comment '使用规则',
    pay_value    bigint(10) unsigned                           not null comment '支付金额，单位是分。例如200代表2元',
    actual_value bigint(10)                                    not null comment '抵扣金额，单位是分。例如200代表2元',
    type         tinyint(1) unsigned default 0                 not null comment '0,普通券；1,秒杀券',
    status       tinyint(1) unsigned default 1                 not null comment '1,上架; 2,下架; 3,过期',
    create_time  timestamp           default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time  timestamp           default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    charset = utf8mb4
    row_format = COMPACT;

