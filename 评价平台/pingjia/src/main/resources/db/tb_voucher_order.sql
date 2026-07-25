create table tb_voucher_order
(
    id          bigint                                        not null comment '主键'
        primary key,
    user_id     bigint unsigned                               not null comment '下单的用户id',
    voucher_id  bigint unsigned                               not null comment '购买的代金券id',
    pay_type    tinyint(1) unsigned default 1                 not null comment '支付方式 1：余额支付；2：支付宝；3：微信',
    status      tinyint(1) unsigned default 1                 not null comment '订单状态，1：未支付；2：已支付；3：已核销；4：已取消；5：退款中；6：已退款',
    create_time timestamp           default CURRENT_TIMESTAMP not null comment '下单时间',
    pay_time    timestamp                                     null comment '支付时间',
    use_time    timestamp                                     null comment '核销时间',
    refund_time timestamp                                     null comment '退款时间',
    update_time timestamp           default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    charset = utf8mb4
    row_format = COMPACT;

