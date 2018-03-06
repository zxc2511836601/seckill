CREATE  database seckill;
USER  seckill;
-- 创建秒杀库存表
CREATE  TABLE  seckill{
'seckill_id' bigint PRIMARY KEY  not NULL AUTO_INCREMENT COMMIT '商品的',
'name' VARCHAR  NOT NULL  COMMIT '商品的名字',
'number' bigint NOT NULL  COMMIT '商品的数量',
'start_time' TIMESTAMP  NOT NULL  COMMIT '启动的时间',
'end_time'TIMESTAMP  NOT NULL  COMMIT '结束的时间',
'create_time' TIMESTAMP  NOT NULL  COMMIT '创建的时间',
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(end_time)
}
-- 插入秒杀数据
engine=innodb auto_increment=1000 DEFAULT charset=UTF_8 COMMIT '秒杀库存表'
INSERT INTO seckill(name,number,start_time,end_time)
values('1000元秒杀iphone','1000','2018-3-8 00:00:00','2018-3-8 00:01:00'),
('2元秒杀小米7','10','2018-3-8 00:00:00','2018-3-9 00:00:00'),
('3元秒杀iphone-x','10','2018-3-8 00：00：00','2018-3-9 00:00:00');
-- 创建验证成功表
CREATE TABLE  success_seckilled(
'seckill_id'bitint NOT NULL  COMMIT '用户id',
'user_phone'bitint NOT  NULL  COMMIT '用户手机',
'state' tinyint NOT NULL  COMMIT '状态表示，-1：无效，0：成功，1：付款',
'create_time'TIMESTAMP NOT NULL  COMMIT '创建时间'




)