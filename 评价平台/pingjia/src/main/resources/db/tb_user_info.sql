create table tb_user_info
(
    user_id     bigint unsigned                               not null comment '主键，用户id'
        primary key,
    city        varchar(64)         default ''                null comment '城市名称',
    introduce   varchar(128)                                  null comment '个人介绍，不要超过128个字符',
    fans        int(8) unsigned     default 0                 null comment '粉丝数量',
    followee    int(8) unsigned     default 0                 null comment '关注的人的数量',
    gender      tinyint(1) unsigned default 0                 null comment '性别，0：男，1：女',
    birthday    date                                          null comment '生日',
    credits     int(8) unsigned     default 0                 null comment '积分',
    level       tinyint(1) unsigned default 0                 null comment '会员级别，0~9级,0代表未开通会员',
    create_time timestamp           default CURRENT_TIMESTAMP not null comment '创建时间',
    update_time timestamp           default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
)
    charset = utf8mb4
    row_format = COMPACT;

