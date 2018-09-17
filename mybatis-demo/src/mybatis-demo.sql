SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_lecture
-- ----------------------------
DROP TABLE IF EXISTS `t_lecture`;
CREATE TABLE `t_lecture` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `lecture_name` varchar(60) NOT NULL COMMENT '�γ�����',
  `note` varchar(1024) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_lecture
-- ----------------------------
INSERT INTO `t_lecture` VALUES ('1', '����', '���ı�ע');
INSERT INTO `t_lecture` VALUES ('2', '��ѧ', '��ѧ��ע');
INSERT INTO `t_lecture` VALUES ('3', 'Ӣ��', 'Ӣ�ﱸע');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `role_name` varchar(60) NOT NULL COMMENT '��ɫ����',
  `note` varchar(1024) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('2', 'metst', 'testNode1');
INSERT INTO `t_role` VALUES ('3', 'melkjfdsalkj', 'testNode2');
INSERT INTO `t_role` VALUES ('4', '����֮��', '���±�ע');
INSERT INTO `t_role` VALUES ('5', 'testName34', '4');
INSERT INTO `t_role` VALUES ('6', 'testName5', '5');
INSERT INTO `t_role` VALUES ('7', 'testName6', '6');
INSERT INTO `t_role` VALUES ('8', 'testName7', '7');
INSERT INTO `t_role` VALUES ('9', 'testName8', '8');
INSERT INTO `t_role` VALUES ('10', 'testName9', '9');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `cnname` varchar(60) NOT NULL COMMENT '����',
  `sex` tinyint(3) NOT NULL COMMENT '�Ա�',
  `selfcard_no` int(20) NOT NULL COMMENT 'ѧ��֤��',
  `note` varchar(1024) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '����', '1', '1000', 'fdsafsdahj');
INSERT INTO `t_student` VALUES ('2', '����', '2', '1001', '���Ա�ע');
INSERT INTO `t_student` VALUES ('3', '����', '1', '1002', '�²���');

-- ----------------------------
-- Table structure for t_student_health_female
-- ----------------------------
DROP TABLE IF EXISTS `t_student_health_female`;
CREATE TABLE `t_student_health_female` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `student_id` varchar(60) NOT NULL COMMENT 'ѧ�����',
  `check_date` varchar(60) NOT NULL COMMENT '�������',
  `heart` varchar(60) NOT NULL COMMENT '��',
  `liver` varchar(60) NOT NULL COMMENT '��',
  `spleen` varchar(60) NOT NULL COMMENT 'Ƣ',
  `lung` varchar(60) NOT NULL COMMENT '��',
  `kidney` varchar(60) NOT NULL COMMENT '��',
  `uterus` varchar(60) NOT NULL COMMENT '�ӹ�',
  `note` varchar(1024) NOT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student_health_female
-- ----------------------------
INSERT INTO `t_student_health_female` VALUES ('1', '1', '2017-01-01', '1', '2', '3', '4', '5', '6', '7');
INSERT INTO `t_student_health_female` VALUES ('2', '2', '2017-01-01', '10', '20', '30', '40', '50', '60', '70');
INSERT INTO `t_student_health_female` VALUES ('3', '3', '2017-01-01', '9', '8', '7', '6', '5', '2', '1');

-- ----------------------------
-- Table structure for t_student_health_male
-- ----------------------------
DROP TABLE IF EXISTS `t_student_health_male`;
CREATE TABLE `t_student_health_male` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `student_id` varchar(60) NOT NULL COMMENT 'ѧ�����',
  `check_date` varchar(60) NOT NULL COMMENT '�������',
  `heart` varchar(60) NOT NULL COMMENT '��',
  `liver` varchar(60) NOT NULL COMMENT '��',
  `spleen` varchar(60) NOT NULL COMMENT 'Ƣ',
  `lung` varchar(60) NOT NULL COMMENT '��',
  `kidney` varchar(60) NOT NULL COMMENT '��',
  `prostate` varchar(60) NOT NULL COMMENT 'ǰ����',
  `note` varchar(1024) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student_health_male
-- ----------------------------
INSERT INTO `t_student_health_male` VALUES ('1', '1', '2017-01-02', '1', '2', '3', '4', '5', '6', '7');
INSERT INTO `t_student_health_male` VALUES ('2', '2', '2017-01-03', '10', '20', '30', '40', '50', '60', '70');
INSERT INTO `t_student_health_male` VALUES ('3', '3', '2017-01-10', '9', '8', '7', '6', '5', '2', '1');

-- ----------------------------
-- Table structure for t_student_lecture
-- ----------------------------
DROP TABLE IF EXISTS `t_student_lecture`;
CREATE TABLE `t_student_lecture` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `student_id` int(20) NOT NULL COMMENT 'ѧ�����',
  `lecture_id` int(20) NOT NULL COMMENT '�γ̱��',
  `grade` decimal(16,2) NOT NULL COMMENT '����',
  `note` varchar(1024) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student_lecture
-- ----------------------------
INSERT INTO `t_student_lecture` VALUES ('1', '1', '1', '100.00', '����');
INSERT INTO `t_student_lecture` VALUES ('2', '1', '2', '90.00', '��ѧ');
INSERT INTO `t_student_lecture` VALUES ('3', '1', '3', '89.00', 'Ӣ��');
INSERT INTO `t_student_lecture` VALUES ('4', '2', '1', '75.00', '����');
INSERT INTO `t_student_lecture` VALUES ('5', '2', '2', '80.00', '��ѧ');
INSERT INTO `t_student_lecture` VALUES ('6', '2', '3', '65.00', 'Ӣ��');

-- ----------------------------
-- Table structure for t_student_selfcard
-- ----------------------------
DROP TABLE IF EXISTS `t_student_selfcard`;
CREATE TABLE `t_student_selfcard` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `student_id` int(20) NOT NULL COMMENT 'ѧ�����',
  `native` varchar(60) NOT NULL COMMENT '����',
  `issue_date` date NOT NULL COMMENT '��֤����',
  `end_date` date NOT NULL COMMENT '��������',
  `note` varchar(1024) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student_selfcard
-- ----------------------------
INSERT INTO `t_student_selfcard` VALUES ('1', '1', '����', '2017-07-02', '2017-07-07', '��ע��Ϣ');
INSERT INTO `t_student_selfcard` VALUES ('2', '2', '����', '2017-07-02', '2017-07-07', '��ע��Ϣ2');
INSERT INTO `t_student_selfcard` VALUES ('3', '3', '����', '2017-07-02', '2017-07-07', '��ע��Ϣ1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���',
  `user_name` varchar(60) NOT NULL COMMENT '�û�����',
  `cnname` varchar(60) NOT NULL COMMENT '����',
  `sex` tinyint(3) NOT NULL COMMENT '�Ա�',
  `mobile` varchar(20) NOT NULL COMMENT '�ֻ�����',
  `email` varchar(60) DEFAULT NULL COMMENT '�����ʼ�',
  `note` varchar(1024) DEFAULT NULL COMMENT '��ע',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'zhangsan', '����', '0', '1325656546', 'lfkdsj@dlkjf.com', 'fdsafljdsakf');
INSERT INTO `t_user` VALUES ('2', 'zlkjklfdsa', '����', '1', '1325656546', 'lfkdsj@dlkjf.com', 'fdsafljdsakf');
INSERT INTO `t_user` VALUES ('3', 'wangwuz', '����', '2', '1265445', '211321@fdsaf.com', '2');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '�û����',
  `role_id` int(20) NOT NULL COMMENT '��ɫ���',
  PRIMARY KEY (`user_id`,`role_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '2');
INSERT INTO `t_user_role` VALUES ('2', '3');
INSERT INTO `t_user_role` VALUES ('3', '4');