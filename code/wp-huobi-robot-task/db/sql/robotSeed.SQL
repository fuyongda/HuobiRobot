--   -------------------------------------------------- 
--   Generated by Enterprise Architect Version 8.0.858
--   Created On : 星期五, 20 五月, 2016 
--   DBMS       : MySql 
--   -------------------------------------------------- 


SET FOREIGN_KEY_CHECKS=0;


--  Drop Tables, Stored Procedures and Views 

DROP TABLE IF EXISTS wpOrder;
DROP TABLE IF EXISTS wpSystemSetting;
DROP TABLE IF EXISTS wpUser;

--  Create Tables 
CREATE TABLE wpOrder
(
	id BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键',
	type INTEGER COMMENT '交易类型： 1限价买 2限价卖 3市价买 4市价卖',
	orderPrice DECIMAL(12,6) COMMENT '委托价格',
	orderAmount DECIMAL(12,6) COMMENT '委托数量',
	processedAmount DECIMAL(12,6) COMMENT '已完成数量',
	vot DECIMAL(12,6) COMMENT '交易额',
	fee DECIMAL(12,6) COMMENT '手续费',
	total DECIMAL(12,6) COMMENT '交易总额',
	status INTEGER COMMENT '状态 0未成交　1部分成交　2已完成　3已取消 4废弃（该状态已不再使用） 5异常 6部分成交已取消 7队列中',
	createTime DATETIME COMMENT '创建时间',
	huobiOrderId BIGINT COMMENT '火币订单号',
	platformOrderId BIGINT COMMENT '平台订单ID',
	PRIMARY KEY (id)
)  COMMENT='订单表';


CREATE TABLE wpSystemSetting
(
	id BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键',
	type INTEGER COMMENT '属性类型',
	attrName VARCHAR(50) COMMENT '属性名',
	attrValue VARCHAR(255) COMMENT '属性值',
	PRIMARY KEY (id)
) ;


CREATE TABLE wpUser
(
	id BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键',
	userName VARCHAR(50) COMMENT '用户名',
	loginPwd VARCHAR(128) COMMENT '登录密码',
	total DECIMAL(12,6) COMMENT '总资产',
	netAsset DECIMAL(12,6) COMMENT '净资产',
	availableCnyDisplay DECIMAL(12,6) COMMENT '可用人民币',
	availableBtcDisplay DECIMAL(12,6) COMMENT '可用比特币',
	availableLtcDisplay DECIMAL(12,6) COMMENT '可用莱特币',
	frozenCnyDisplay DECIMAL(12,6) COMMENT '冻结人民币',
	frozenBtcDisplay DECIMAL(12,6) COMMENT '冻结比特币',
	frozenLtcDisplay DECIMAL(12,6) COMMENT '冻结莱特币',
	loanCnyDisplay DECIMAL(12,6) COMMENT '待还人民币',
	loanBtcDisplay DECIMAL(12,6) COMMENT '待还比特币',
	loanLtcDisplay DECIMAL(12,6) COMMENT '待还莱特币',
	huobiAccessKey VARCHAR(255) COMMENT '火币访问KEY',
	huobiSecretKey VARCHAR(255) COMMENT '火币安全KEY',
	PRIMARY KEY (id)
) ;



SET FOREIGN_KEY_CHECKS=1;
