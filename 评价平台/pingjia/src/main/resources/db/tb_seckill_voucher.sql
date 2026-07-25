create table tb_seckill_voucher
(
    voucher_id  bigint unsigned                     not null comment '关联的优惠券的id'
        primary key,
    stock       int(8)                              not null comment '库存',
    create_time timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    begin_time  timestamp default CURRENT_TIMESTAMP not null comment '生效时间',
    end_time    timestamp default CURRENT_TIMESTAMP not null comment '失效时间',
    update_time timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    comment '秒杀优惠券表，与优惠券是一对一关系' charset = utf8mb4
                                                row_format = COMPACT;

