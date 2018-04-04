/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.66-community : Database - jeesite3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jeesite3` /*!40100 DEFAULT CHARACTER SET gbk */;

USE `jeesite3`;

/*Table structure for table `cms_article` */

DROP TABLE IF EXISTS `cms_article`;

CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`),
  KEY `cms_article_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='文章表';

/*Data for the table `cms_article` */

insert  into `cms_article`(`id`,`category_id`,`title`,`link`,`color`,`image`,`keywords`,`description`,`weight`,`weight_date`,`hits`,`posid`,`custom_content_view`,`view_config`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','3','文章标题标题标题标题456','','green','','关键字1,关键字2','',0,NULL,11,',null,','','','1','2013-05-27 08:00:00','1','2014-03-14 10:59:21',NULL,'0'),('10','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,23,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','3','文章标题标题标题标题2222','','red','','关键字1,关键字2','',0,NULL,10,',null,','','','1','2013-05-27 08:00:00','1','2014-03-14 11:02:37',NULL,'0'),('20','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,13,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','3','文章标题标题标题标题3333','','','','关键字1,关键字2','',0,NULL,17,',null,','','','1','2013-05-27 08:00:00','1','2014-03-14 11:04:07',NULL,'0'),('30','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','16','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2014-03-13 14:37:01',NULL,'1'),('8','4','文章标题标题标题标题hhh','','blue','','关键字1,关键字2','',0,NULL,21,',null,','','','1','2013-05-27 08:00:00','1','2014-03-14 11:16:25',NULL,'0'),('9','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,10,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `cms_article_data` */

DROP TABLE IF EXISTS `cms_article_data`;

CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`),
  KEY `cms_article_data_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='文章详表';

/*Data for the table `cms_article_data` */

insert  into `cms_article_data`(`id`,`content`,`copyfrom`,`relation`,`allow_comment`) values ('1','<p>\r\n	文章内容内容内容内容aaaaaa</p>\r\n','来源','1,2,3,','1'),('10','文章内容内容内容内容','来源','1,2,3','1'),('11','文章内容内容内容内容','来源','1,2,3','1'),('12','文章内容内容内容内容','来源','1,2,3','1'),('13','文章内容内容内容内容','来源','1,2,3','1'),('14','文章内容内容内容内容','来源','1,2,3','1'),('15','文章内容内容内容内容','来源','1,2,3','1'),('16','文章内容内容内容内容','来源','1,2,3','1'),('17','文章内容内容内容内容','来源','1,2,3','1'),('18','文章内容内容内容内容','来源','1,2,3','1'),('19','文章内容内容内容内容','来源','1,2,3','1'),('2','<p>\r\n	文章内容内容内容内容</p>\r\n','来源','1,2,3,','1'),('20','文章内容内容内容内容','来源','1,2,3','1'),('21','文章内容内容内容内容','来源','1,2,3','1'),('22','文章内容内容内容内容','来源','1,2,3','1'),('23','文章内容内容内容内容','来源','1,2,3','1'),('24','文章内容内容内容内容','来源','1,2,3','1'),('25','文章内容内容内容内容','来源','1,2,3','1'),('26','文章内容内容内容内容','来源','1,2,3','1'),('27','文章内容内容内容内容','来源','1,2,3','1'),('28','文章内容内容内容内容','来源','1,2,3','1'),('29','文章内容内容内容内容','来源','1,2,3','1'),('3','<p>\r\n	文章内容内容内容内容</p>\r\n','来源','1,2,3,','1'),('30','文章内容内容内容内容','来源','1,2,3','1'),('31','文章内容内容内容内容','来源','1,2,3','1'),('32','文章内容内容内容内容','来源','1,2,3','1'),('33','文章内容内容内容内容','来源','1,2,3','1'),('34','文章内容内容内容内容','来源','1,2,3','1'),('35','文章内容内容内容内容','来源','1,2,3','1'),('36','文章内容内容内容内容','来源','1,2,3','1'),('37','文章内容内容内容内容','来源','1,2,3','1'),('38','文章内容内容内容内容','来源','1,2,3','1'),('39','文章内容内容内容内容','来源','1,2,3','1'),('4','文章内容内容内容内容','来源','1,2,3','1'),('40','文章内容内容内容内容','来源','1,2,3','1'),('41','文章内容内容内容内容','来源','1,2,3','1'),('42','文章内容内容内容内容','来源','1,2,3','1'),('43','文章内容内容内容内容','来源','1,2,3','1'),('44','文章内容内容内容内容','来源','1,2,3','1'),('45','文章内容内容内容内容','来源','1,2,3','1'),('46','文章内容内容内容内容','来源','1,2,3','1'),('47','文章内容内容内容内容','来源','1,2,3','1'),('48','文章内容内容内容内容','来源','1,2,3','1'),('49','文章内容内容内容内容','来源','1,2,3','1'),('5','文章内容内容内容内容','来源','1,2,3','1'),('50','文章内容内容内容内容','来源','1,2,3','1'),('51','文章内容内容内容内容','来源','1,2,3','1'),('52','文章内容内容内容内容','来源','1,2,3','1'),('53','文章内容内容内容内容','来源','1,2,3','1'),('6','文章内容内容内容内容','来源','1,2,3','1'),('7','文章内容内容内容内容','来源','1,2,3','1'),('8','<p>\r\n	文章内容内容内容内容</p>\r\n','来源','1,2,3,','1'),('9','文章内容内容内容内容','来源','1,2,3','1');

/*Table structure for table `cms_category` */

DROP TABLE IF EXISTS `cms_category`;

CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `site_id` varchar(64) DEFAULT '1' COMMENT '站点编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `view_config` text COMMENT '视图配置',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_parent_ids` (`parent_ids`(383)),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_site_id` (`site_id`),
  KEY `cms_category_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='栏目表';

/*Data for the table `cms_category` */

insert  into `cms_category`(`id`,`site_id`,`parent_id`,`parent_ids`,`module`,`name`,`image`,`href`,`target`,`description`,`keywords`,`sort`,`in_menu`,`in_list`,`show_modes`,`allow_comment`,`is_audit`,`custom_list_view`,`custom_content_view`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`,`view_config`) values ('1','0','0','0,',NULL,'顶级栏目',NULL,NULL,NULL,NULL,NULL,0,'1','1','0','0','1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('10','1','1','0,1,','article','后台技术','','','','','',20,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('11','1','10','0,1,10,','article','Spring','','','','','',30,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('12','1','10','0,1,10,','article','持久化','','','','','',40,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('13','1','10','0,1,10,','article','权限控制','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('14','1','10','0,1,10,','article','网络优化',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',NULL),('15','1','10','0,1,10,','article','框架学习','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('16','1','10','0,1,10,','article','高级编程','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('17','1','10','0,1,10,','article','其他','','','','','',50,'1','1','2','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('18','1','1','0,1,','link','精彩站点','','','','','',90,'1','1','1','1','0','','','1','2013-05-27 08:00:00','1','2014-04-03 19:38:26',NULL,'0',''),('19','1','18','0,1,18,','link','项目学习','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-04-03 19:38:26',NULL,'0',''),('2','1','1','0,1,','article','组织机构','','','','','',10,'1','1','0','0','1','','','1','2013-05-27 08:00:00','1','2014-03-14 13:04:32',NULL,'0',''),('20','1','18','0,1,18,','link','前端学习','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-04-03 19:38:26',NULL,'0',''),('21','1','18','0,1,18,','link','后端学习','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-04-03 19:38:26',NULL,'0',''),('22','1','18','0,1,18,','link','原理学习','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-04-03 19:38:26',NULL,'0',''),('23','1','18','0,1,18,','link','行业资讯','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-04-03 19:38:26',NULL,'0',''),('24','1','1','0,1,',NULL,'百度一下',NULL,'http://www.baidu.com','_blank',NULL,NULL,90,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',NULL),('25','1','1','0,1,',NULL,'全文检索',NULL,'/search',NULL,NULL,NULL,90,'0','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',NULL),('26','2','1','0,1,','article','测试栏目',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0',NULL),('27','1','1','0,1,',NULL,'公共留言',NULL,'/guestbook',NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,'1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',NULL),('2c7fc0bbf08e4fa78f8904cdd21c8168','1','1','0,1,','link','测试222','/jeesite3/userfiles/1/images/cms/category/2014/03/ee08985494eef01f319b30cae0fe9925bd317dbc.jpg','','','','',5,'0','1','0','0','0','','','1','2014-03-11 08:48:04','1','2014-03-14 10:07:38',NULL,'0',''),('3','1','2','0,1,2,','article','网站简介','','','','','',30,'1','1','2','0','1','','','1','2013-05-27 08:00:00','1','2014-03-14 13:04:49',NULL,'0',''),('3a99a18cfa444205b9ca9e6bd10f692c','1','3d615804d1634a1b9e81ec04b1974f9f','0,1,2,3d615804d1634a1b9e81ec04b1974f9f,','article','测试2','','','','','',30,'0','1','0','0','0','','','1','2014-03-11 08:47:16','1','2014-03-14 13:04:32',NULL,'1',''),('3d615804d1634a1b9e81ec04b1974f9f','1','2','0,1,2,','article','测试1','','','','','',30,'0','1','0','0','0','','','1','2014-03-11 08:47:05','1','2014-03-14 13:04:32',NULL,'1',''),('4','1','2','0,1,2,','article','内部机构',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','0','1',NULL,NULL,'1','2013-05-27 08:00:00','1','2014-03-14 13:04:32',NULL,'0',NULL),('5','1','2','0,1,2,','article','地方机构',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','0','1',NULL,NULL,'1','2013-05-27 08:00:00','1','2014-03-14 13:04:32',NULL,'0',NULL),('6','1','1','0,1,','article','前台技术','','','','','',20,'1','1','1','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:15',NULL,'0',''),('7','1','6','0,1,6,','article','JavaScript','','','','','',30,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('8','1','6','0,1,6,','article','Jquery','','','','','',40,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0',''),('9','1','6','0,1,6,','article','其他','','','','','',50,'1','1','0','1','0','','','1','2013-05-27 08:00:00','1','2014-03-11 08:48:16',NULL,'0','');

/*Table structure for table `cms_comment` */

DROP TABLE IF EXISTS `cms_comment`;

CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` text COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`),
  KEY `cms_comment_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='评论表';

/*Data for the table `cms_comment` */

insert  into `cms_comment`(`id`,`category_id`,`content_id`,`title`,`content`,`name`,`ip`,`create_date`,`audit_user_id`,`audit_date`,`del_flag`) values ('093e7328b473403d9d2c871878efca40','7','14','文章标题标题标题标题','lalal','匿名','0:0:0:0:0:0:0:1','2014-03-14 15:24:01','1','2014-03-14 15:24:23','0'),('620fefa8a40c4004b81d0623498c5066','7','14','文章标题标题标题标题','影片最令人惊叹的是Cristian Mungiu的长镜运用与构图。全片多次采取对称构图的手法，从主人公Otilia与室友Garbita在凌乱的大学生宿舍里的对话开始，到二者在旅店餐馆的对视中结束，每一个镜头都是精心布置细致安排的，处处用对称来比照Otilia的心态情绪。其中Otilia在窄小的卫生间注视Garbita的镜头，尽管只有Otilia一个人入镜，导演依然通过浴室的镜子制造了一个相当完美的','匿名','0:0:0:0:0:0:0:1','2014-04-03 20:45:02',NULL,NULL,'0'),('67ad70e885344f4cbc6f8f51b38e51ad','7','14','文章标题标题标题标题','罗马尼亚导演Cristian Mungiu的《四月三周二天》可说是近年来对巴赞的长镜理论最忠实最全面的一场实践，他凭此片获嘎纳金棕榈大奖，有如法国新浪潮势力卷土重来，令人对罗马尼亚电影业刮目相看。','匿名','0:0:0:0:0:0:0:1','2014-04-03 20:43:17',NULL,NULL,'0'),('7397279b9b374f9dbf6af44517f50396','7','14','文章标题标题标题标题','AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA','匿名','0:0:0:0:0:0:0:1','2014-04-03 20:31:02',NULL,NULL,'0'),('79a4c9004a4d4c22a2f9f7873eef8c33','7','14','文章标题标题标题标题','加油霍霍霍！','匿名','0:0:0:0:0:0:0:1','2014-03-14 15:21:21','1','2014-03-14 15:21:56','0'),('8bc8121703764ca7b8e4a3994de50ab9','7','14','文章标题标题标题标题','这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了这是干嘛了','匿名','0:0:0:0:0:0:0:1','2014-04-03 20:42:45',NULL,NULL,'0'),('d20c6c6d14244b5bad2118ffab8ea563','7','14','文章标题标题标题标题','你好吗 世界','匿名','0:0:0:0:0:0:0:1','2014-04-03 20:32:14',NULL,NULL,'0'),('da848e62653449079b686340313e07de','7','14','文章标题标题标题标题','水水水水水水水水水水水水水水水水','匿名','0:0:0:0:0:0:0:1','2014-04-03 20:21:13',NULL,NULL,'0'),('ed84eb14a794451097079a5b009a4b99','7','14','文章标题标题标题标题','恢复','匿名','0:0:0:0:0:0:0:1','2014-03-14 15:40:07','1','2014-03-14 15:40:32','0');

/*Table structure for table `cms_guestbook` */

DROP TABLE IF EXISTS `cms_guestbook`;

CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`),
  KEY `cms_site_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='留言板';

/*Data for the table `cms_guestbook` */

insert  into `cms_guestbook`(`id`,`type`,`content`,`name`,`email`,`phone`,`workunit`,`ip`,`create_date`,`re_user_id`,`re_date`,`re_content`,`del_flag`) values ('2ef3ce43c49b4dd8a006a87c8d4e0576','2','1','1','111@123.com','06682203981','1','0:0:0:0:0:0:0:1','2014-03-14 16:15:27','1','2014-03-14 16:16:08','ok！','0'),('b21d462cf8be4a8ea5fc75b6ea0bdcfd','1','你好 世界 你好 世界你好 世界你好 世界你好 世界你好 世界','lala','123@123.com','13345678911','1222','0:0:0:0:0:0:0:1','2014-04-03 21:00:16',NULL,NULL,NULL,'0'),('f55f1b3d6d0c4f8a9a0b6f384863bc0e','1','11','lala','111@123.com','06682203981','123','0:0:0:0:0:0:0:1','2014-03-14 16:10:19','1','2014-03-14 16:10:58','OK！','0');

/*Table structure for table `cms_link` */

DROP TABLE IF EXISTS `cms_link`;

CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`),
  KEY `cms_link_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='友情链接';

/*Data for the table `cms_link` */

insert  into `cms_link`(`id`,`category_id`,`title`,`color`,`image`,`href`,`weight`,`weight_date`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','19','JeeSite123','','','',0,NULL,'1','2013-05-27 08:00:00','1','2014-04-03 20:07:35','','1'),('10','22','58同城',NULL,NULL,'http://www.58.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','23','视频大全',NULL,NULL,'http://v.360.cn/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','23','凤凰网',NULL,NULL,'http://www.ifeng.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','19','ThinkGem','','','',0,NULL,'1','2013-05-27 08:00:00','1','2014-04-03 20:07:27','','1'),('3','19','百度一下',NULL,NULL,'http://www.baidu.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','19','谷歌搜索',NULL,NULL,'http://www.google.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','20','新浪网',NULL,NULL,'http://www.sina.com.cn',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','20','腾讯网',NULL,NULL,'http://www.qq.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','21','淘宝网',NULL,NULL,'http://www.taobao.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','21','新华网',NULL,NULL,'http://www.xinhuanet.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','22','赶集网',NULL,NULL,'http://www.ganji.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `cms_site` */

DROP TABLE IF EXISTS `cms_site`;

CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`),
  KEY `cms_site_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='站点表';

/*Data for the table `cms_site` */

insert  into `cms_site`(`id`,`name`,`title`,`logo`,`domain`,`description`,`keywords`,`theme`,`copyright`,`custom_index_view`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','默认站点','JeeSite Web',NULL,NULL,'JeeSite','JeeSite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','子站点测试','JeeSite Subsite',NULL,NULL,'JeeSite subsite','JeeSite subsite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5c44ec83de474dfbbd763c6492f2ab6d','测试站点','hello world','',NULL,'','测试','basic','<p>\r\n	helloworld</p>\r\n','','1','2014-03-11 10:00:52','1','2014-03-11 10:02:40',NULL,'0');

/*Table structure for table `prj_project` */

DROP TABLE IF EXISTS `prj_project`;

CREATE TABLE `prj_project` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `root_package` varchar(255) DEFAULT NULL COMMENT '包名',
  `erm_path` varchar(2000) DEFAULT NULL COMMENT '数据文件路径',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL COMMENT '删除标志',
  PRIMARY KEY (`id`),
  KEY `prj_project_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='项目';

/*Data for the table `prj_project` */

/*Table structure for table `sys_area` */

DROP TABLE IF EXISTS `sys_area`;

CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `name` varchar(100) NOT NULL COMMENT '区域名称',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_parent_ids` (`parent_ids`(383)),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='区域表';

/*Data for the table `sys_area` */

insert  into `sys_area`(`id`,`parent_id`,`parent_ids`,`code`,`name`,`type`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','0','0,','100000','中国','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','8','0,1,2,','370532','历城区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','8','0,1,2,','370533','历城区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','8','0,1,2,','370534','历下区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','8','0,1,2,','370535','天桥区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','8','0,1,2,','370536','槐荫区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('1f2a1a04996f43fd9a2144fa2b610225','1','0,1,','220021','广东省','2','1','2014-03-10 11:28:37','1','2014-03-10 11:28:37','','0'),('2','1','0,1,','110000','北京市','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','110101','东城区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','2','0,1,2,','110102','西城区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42eb9ee8c71b46c1a0751aec986354ac','1f2a1a04996f43fd9a2144fa2b610225','0,1,1f2a1a04996f43fd9a2144fa2b610225,','220033','茂名市','3','1','2014-03-10 11:35:56','1','2014-03-10 11:36:01','','0'),('5','2','0,1,2,','110103','朝阳区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59ffae0bdc7a44fb80be610accd30b8a','816446213f2f4f5f85f097a193d616f9','0,1,1f2a1a04996f43fd9a2144fa2b610225,816446213f2f4f5f85f097a193d616f9,','2200312','海珠区','4','1','2014-03-10 11:38:34','1','2014-03-10 11:38:34','','0'),('6','2','0,1,2,','110104','丰台区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6ada63e2c498412292ad1a9c5cd35073','1f2a1a04996f43fd9a2144fa2b610225','0,1,1f2a1a04996f43fd9a2144fa2b610225,','220032','肇庆市','3','1','2014-03-10 11:35:23','1','2014-03-10 11:35:23','','0'),('7','2','0,1,2,','110105','海淀区','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('756eed89f1d249e88d09949d3765b4e4','42eb9ee8c71b46c1a0751aec986354ac','0,1,1f2a1a04996f43fd9a2144fa2b610225,42eb9ee8c71b46c1a0751aec986354ac,','2200332','茂港区','1','1','2014-03-10 11:37:04','1','2014-03-10 11:37:04','','0'),('8','1','0,1,','370000','山东省','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('816446213f2f4f5f85f097a193d616f9','1f2a1a04996f43fd9a2144fa2b610225','0,1,1f2a1a04996f43fd9a2144fa2b610225,','220031','广州市','3','1','2014-03-10 11:33:42','1','2014-03-10 11:33:42','','0'),('9','8','0,1,2,','370531','济南市','3','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('d0e52776730a4bf886204a7185faeb35','42eb9ee8c71b46c1a0751aec986354ac','0,1,1f2a1a04996f43fd9a2144fa2b610225,42eb9ee8c71b46c1a0751aec986354ac,','2200331','茂南区','4','1','2014-03-10 11:36:28','1','2014-03-10 11:36:28','','0'),('e70c7b6a315940888cb9bb707a5a4902','816446213f2f4f5f85f097a193d616f9','0,1,1f2a1a04996f43fd9a2144fa2b610225,816446213f2f4f5f85f097a193d616f9,','2200311','天河区','4','1','2014-03-10 11:37:24','1','2014-03-10 11:37:24','','0'),('fc12bb95c11e44aca416ed7547b65601','6ada63e2c498412292ad1a9c5cd35073','0,1,1f2a1a04996f43fd9a2144fa2b610225,6ada63e2c498412292ad1a9c5cd35073,','2200321','鼎湖区','4','1','2014-03-10 11:39:09','1','2014-03-10 11:39:09','','0');

/*Table structure for table `sys_dict` */

DROP TABLE IF EXISTS `sys_dict`;

CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='字典表';

/*Data for the table `sys_dict` */

insert  into `sys_dict`(`id`,`label`,`value`,`type`,`description`,`sort`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','正常','0','del_flag','删除标记',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','黄色','yellow','color','颜色值',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','橙色','orange','color','颜色值',50,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','默认主题','default','theme','主题方案',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','天蓝主题','cerulean','theme','主题方案',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','橙色主题','readable','theme','主题方案',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','红色主题','united','theme','主题方案',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','Flat主题','flat','theme','主题方案',60,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','国家','1','sys_area_type','区域类型',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','省份、直辖市','2','sys_area_type','区域类型',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','地市','3','sys_area_type','区域类型',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','删除','1','del_flag','删除标记',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','区县','4','sys_area_type','区域类型',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','公司','1','sys_office_type','机构类型',60,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','部门','2','sys_office_type','机构类型',70,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','一级','1','sys_office_grade','机构等级',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','二级','2','sys_office_grade','机构等级',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','三级','3','sys_office_grade','机构等级',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','四级','4','sys_office_grade','机构等级',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','所有数据','1','sys_data_scope','数据范围',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','所在公司及以下数据','2','sys_data_scope','数据范围',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','所在公司数据','3','sys_data_scope','数据范围',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','显示','1','show_hide','显示/隐藏',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','所在部门及以下数据','4','sys_data_scope','数据范围',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','所在部门数据','5','sys_data_scope','数据范围',50,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','仅本人数据','8','sys_data_scope','数据范围',90,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','按明细设置','9','sys_data_scope','数据范围',100,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3315c5e81761425db4b148a982ad5f38','555555','5','cms_guestbook','留言板分类',50,'1','2014-03-10 17:59:38','1','2014-03-10 17:59:38',NULL,'1'),('34','系统管理','1','sys_user_type','用户类型',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','部门经理','2','sys_user_type','用户类型',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','普通用户','3','sys_user_type','用户类型',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','基础主题','basic','cms_theme','站点主题',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','蓝色主题','blue','cms_theme','站点主题',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('39','红色主题','red','cms_theme','站点主题',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('4','隐藏','0','show_hide','显示/隐藏',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','文章模型','article','cms_module','栏目模型',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','图片模型','picture','cms_module','栏目模型',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('42','下载模型','download','cms_module','栏目模型',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('43','链接模型','link','cms_module','栏目模型',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','专题模型','special','cms_module','栏目模型',50,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','默认展现方式','0','cms_show_modes','展现方式',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','首栏目内容列表','1','cms_show_modes','展现方式',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','栏目第一条内容','2','cms_show_modes','展现方式',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','发布','0','cms_del_flag','内容状态',10,'1','2013-05-27 08:00:00','1','2014-03-10 17:59:09',NULL,'0'),('49','删除','1','cms_del_flag','内容状态',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','是','1','yes_no','是/否',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','审核','2','cms_del_flag','内容状态',15,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','首页焦点图','1','cms_posid','推荐位',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','栏目页文章推荐','2','cms_posid','推荐位',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','咨询','1','cms_guestbook','留言板分类',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','建议','2','cms_guestbook','留言板分类',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','投诉','3','cms_guestbook','留言板分类',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','其它','4','cms_guestbook','留言板分类',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','公休','1','oa_leave_type','请假类型',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','病假','2','oa_leave_type','请假类型',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','事假','3','oa_leave_type','请假类型',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','否','0','yes_no','是/否',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','调休','4','oa_leave_type','请假类型',40,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','婚假','5','oa_leave_type','请假类型',60,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','接入日志','1','sys_log_type','日志类型',30,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('63','异常日志','2','sys_log_type','日志类型',40,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('64','单表增删改查','single','prj_template_type','代码模板',10,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('65','所有entity和dao','entityAndDao','prj_template_type','代码模板',20,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('7','红色','red','color','颜色值',10,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','绿色','green','color','颜色值',20,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','蓝色','blue','color','颜色值',30,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='日志表';

/*Data for the table `sys_log` */

/*Table structure for table `sys_mdict` */

DROP TABLE IF EXISTS `sys_mdict`;

CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `sort` int(11) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_parent_ids` (`parent_ids`(383)),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='多级字典表';

/*Data for the table `sys_mdict` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '菜单名称',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `sort` int(11) NOT NULL COMMENT '排序（升序）',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_parent_ids` (`parent_ids`(383)),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='菜单表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`parent_id`,`parent_ids`,`name`,`href`,`target`,`icon`,`sort`,`is_show`,`permission`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('09765e1380984bccb4628736303bcfc8','1e83b18dce5c4f45b20cac13d3f8994a','0,1,7d7a556218e64673b95057a0ff426375,3286e0fcdf1b43b3b88cf365d5dfe091,1e83b18dce5c4f45b20cac13d3f8994a,','测试子菜单111212','','','share',30,'1','','1','2014-03-10 14:25:58','1','2014-03-10 14:25:58',NULL,'0'),('1','0','0,','顶级菜单',NULL,NULL,NULL,0,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','3','0,1,2,3,','字典管理','/sys/dict/',NULL,'th-list',60,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('11','10','0,1,2,3,10,','查看',NULL,NULL,NULL,30,'0','sys:dict:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('12','10','0,1,2,3,10,','修改',NULL,NULL,NULL,30,'0','sys:dict:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('13','2','0,1,2,','机构用户',NULL,NULL,NULL,970,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('14','13','0,1,2,13,','区域管理','/sys/area/',NULL,'th',50,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('15','14','0,1,2,13,14,','查看',NULL,NULL,NULL,30,'0','sys:area:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('16','14','0,1,2,13,14,','修改',NULL,NULL,NULL,30,'0','sys:area:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('1e83b18dce5c4f45b20cac13d3f8994a','3286e0fcdf1b43b3b88cf365d5dfe091','0,1,7d7a556218e64673b95057a0ff426375,3286e0fcdf1b43b3b88cf365d5dfe091,','测试子菜单11122','','','random',30,'1','','1','2014-03-10 14:24:52','1','2014-03-10 14:24:52',NULL,'0'),('2','1','0,1,','系统设置',NULL,NULL,NULL,900,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('20','13','0,1,2,13,','用户管理','/sys/user/',NULL,'user',30,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('21','20','0,1,2,13,20,','查看',NULL,NULL,NULL,30,'0','sys:user:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('2118392a43774fbd8b7662916e75f18d','1e83b18dce5c4f45b20cac13d3f8994a','0,1,7d7a556218e64673b95057a0ff426375,3286e0fcdf1b43b3b88cf365d5dfe091,1e83b18dce5c4f45b20cac13d3f8994a,','测试子菜单111211','','','fast-backward',30,'1','','1','2014-03-10 14:25:11','1','2014-03-10 14:25:11',NULL,'0'),('22','20','0,1,2,13,20,','修改',NULL,NULL,NULL,30,'0','sys:user:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('27','1','0,1,','我的面板',NULL,NULL,NULL,100,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:33',NULL,'0'),('28','27','0,1,27,','个人信息',NULL,NULL,NULL,990,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:33',NULL,'0'),('29','28','0,1,27,28,','个人信息','/sys/user/info',NULL,'user',30,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:33',NULL,'0'),('3','2','0,1,2,','系统设置',NULL,NULL,NULL,980,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('30','28','0,1,27,28,','修改密码','/sys/user/modifyPwd',NULL,'lock',40,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:33',NULL,'0'),('31','1','0,1,','内容管理',NULL,NULL,NULL,500,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:33',NULL,'0'),('32','31','0,1,31,','栏目设置',NULL,NULL,NULL,990,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('3286e0fcdf1b43b3b88cf365d5dfe091','7d7a556218e64673b95057a0ff426375','0,1,7d7a556218e64673b95057a0ff426375,','测试子菜单1112','','','star-empty',30,'1','sys:music:view','1','2014-03-10 14:21:39','1','2014-03-10 14:23:33',NULL,'0'),('33','32','0,1,31,32,','栏目管理','/cms/category/',NULL,'align-justify',30,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('34','33','0,1,31,32,33,','查看',NULL,NULL,NULL,30,'0','cms:category:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('35','33','0,1,31,32,33,','修改',NULL,NULL,NULL,30,'0','cms:category:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('36','32','0,1,31,32,','站点设置','/cms/site/',NULL,'certificate',40,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('37','36','0,1,31,32,36,','查看',NULL,NULL,NULL,30,'0','cms:site:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('38','36','0,1,31,32,36,','修改',NULL,NULL,NULL,30,'0','cms:site:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('39','32','0,1,31,32,','切换站点','/cms/site/select',NULL,'retweet',50,'1','cms:site:select','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('4','3','0,1,2,3,','菜单管理','/sys/menu/',NULL,'list-alt',30,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('40','31','0,1,31,','内容管理',NULL,NULL,NULL,500,'1','cms:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:33',NULL,'0'),('41','40','0,1,31,40,','内容发布','/cms/',NULL,'briefcase',30,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('42','41','0,1,31,40,41,','文章模型','/cms/article/',NULL,'file',40,'0',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('43','42','0,1,31,40,41,42,','查看',NULL,NULL,NULL,30,'0','cms:article:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('44','42','0,1,31,40,41,42,','修改',NULL,NULL,NULL,30,'0','cms:article:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('45','42','0,1,31,40,41,42,','审核',NULL,NULL,NULL,30,'0','cms:article:audit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('46','41','0,1,31,40,41,','链接模型','/cms/link/',NULL,'random',60,'0',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('47','46','0,1,31,40,41,46,','查看',NULL,NULL,NULL,30,'0','cms:link:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('48','46','0,1,31,40,41,46,','修改',NULL,NULL,NULL,30,'0','cms:link:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('49','46','0,1,31,40,41,46,','审核',NULL,NULL,NULL,30,'0','cms:link:audit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('5','4','0,1,2,3,4,','查看',NULL,NULL,NULL,30,'0','sys:menu:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('50','40','0,1,31,40,','评论管理','/cms/comment/?delFlag=0',NULL,'comment',40,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('51','50','0,1,31,40,50,','查看',NULL,NULL,NULL,30,'0','cms:comment:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('52','50','0,1,31,40,50,','审核',NULL,NULL,NULL,30,'0','cms:comment:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('53','40','0,1,31,40,','公共留言','/cms/guestbook/?delFlag=0',NULL,'glass',80,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('54','53','0,1,31,40,53,','查看',NULL,NULL,NULL,30,'0','cms:guestbook:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('55','53','0,1,31,40,53,','审核',NULL,NULL,NULL,30,'0','cms:guestbook:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('56','40','0,1,31,40,','文件管理','/../static/ckfinder/ckfinder.html',NULL,'folder-open',90,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('57','56','0,1,31,40,56,','查看',NULL,NULL,NULL,30,'0','cms:ckfinder:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('58','56','0,1,31,40,56,','上传',NULL,NULL,NULL,30,'0','cms:ckfinder:upload','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('59','56','0,1,31,40,56,','修改',NULL,NULL,NULL,30,'0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:34',NULL,'0'),('6','4','0,1,2,3,4,','修改',NULL,NULL,NULL,30,'0','sys:menu:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('60','31','0,1,31,','统计分析',NULL,NULL,NULL,600,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('61','60','0,1,31,60,','信息量统计','/cms/stats/article',NULL,'tasks',30,'1','cms:stats:article','1','2013-05-27 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('67','2','0,1,2,','日志查询',NULL,NULL,NULL,985,'1',NULL,'1','2013-06-03 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('68','67','0,1,2,67,','日志查询','/sys/log',NULL,'pencil',30,'1','sys:log:view','1','2013-06-03 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('7','3','0,1,2,3,','角色管理','/sys/role/',NULL,'lock',50,'1',NULL,'1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('73','32','0,1,31,32,','模板管理','/cms/template',NULL,'pencil',40,'1',NULL,'1','2013-12-12 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('74','73','0,1,31,32,73,','查看',NULL,NULL,NULL,30,'0','cms:template:view','1','2013-12-12 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('75','73','0,1,31,32,73,','修改',NULL,NULL,NULL,30,'0','cms:template:edit','1','2013-12-12 08:00:00','1','2014-03-10 14:23:35',NULL,'0'),('76','1','0,1,','项目管理',NULL,NULL,NULL,1000,'1',NULL,'1','2013-12-12 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('77','76','0,1,76,','项目数据',NULL,NULL,NULL,30,'1',NULL,'1','2013-12-12 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('78','77','0,1,76,77,','项目管理','/prj/project/',NULL,'globe',30,'1',NULL,'1','2013-12-12 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('79','78','0,1,76,77,78,','查看',NULL,NULL,NULL,30,'0','prj:project:view','1','2013-12-12 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('7d7a556218e64673b95057a0ff426375','1','0,1,','测试菜单111','','','music',30,'1','','1','2014-03-10 14:20:05','1','2014-03-10 14:23:33',NULL,'0'),('8','7','0,1,2,3,7,','查看',NULL,NULL,NULL,30,'0','sys:role:view','1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('80','78','0,1,76,77,78,','修改',NULL,NULL,NULL,40,'0','prj:project:edit','1','2013-12-12 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('9','7','0,1,2,3,7,','修改',NULL,NULL,NULL,30,'0','sys:role:edit','1','2013-05-27 08:00:00','1','2014-03-10 14:23:36',NULL,'0'),('ef047b3fd34b4c109118782a9ea0d698','7d7a556218e64673b95057a0ff426375','0,1,7d7a556218e64673b95057a0ff426375,','测试子菜单1114','','','signal',30,'1','','1','2014-03-10 14:24:02','1','2014-03-10 14:24:02',NULL,'0'),('fb7dba0898664ee184b65b55a2f95793','7d7a556218e64673b95057a0ff426375','0,1,7d7a556218e64673b95057a0ff426375,','测试子菜单1113','','','zoom-in',30,'1','sys:music:edit','1','2014-03-10 14:23:08','1','2014-03-10 14:23:33',NULL,'0'),('fe6cdeecf4224cec844d9111f99d2080','3286e0fcdf1b43b3b88cf365d5dfe091','0,1,7d7a556218e64673b95057a0ff426375,3286e0fcdf1b43b3b88cf365d5dfe091,','测试子菜单11121','','','file',30,'1','','1','2014-03-10 14:24:26','1','2014-03-10 14:24:26',NULL,'0');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='角色表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('1','系统管理员','1','2013-05-27 08:00:00','1','2014-03-11 10:08:39',NULL,'0'),('6','普通用户','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('bdbbe3faaed04d1cb33b497284094297','SuperWoman','1','2014-03-10 15:15:18','1','2014-03-10 15:15:18',NULL,'0'),('dfe6ce00954644c08e4c856e5df10b80','SuperMan','1','2014-03-10 15:14:33','1','2014-03-10 15:14:56',NULL,'1');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='角色-菜单';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values ('1','09765e1380984bccb4628736303bcfc8'),('1','1'),('1','10'),('1','11'),('1','12'),('1','13'),('1','14'),('1','15'),('1','16'),('1','1e83b18dce5c4f45b20cac13d3f8994a'),('1','2'),('1','20'),('1','21'),('1','2118392a43774fbd8b7662916e75f18d'),('1','22'),('1','27'),('1','28'),('1','29'),('1','3'),('1','30'),('1','31'),('1','32'),('1','3286e0fcdf1b43b3b88cf365d5dfe091'),('1','33'),('1','34'),('1','35'),('1','36'),('1','37'),('1','38'),('1','39'),('1','4'),('1','40'),('1','41'),('1','42'),('1','43'),('1','44'),('1','45'),('1','46'),('1','47'),('1','48'),('1','49'),('1','5'),('1','50'),('1','51'),('1','52'),('1','53'),('1','54'),('1','55'),('1','56'),('1','57'),('1','58'),('1','59'),('1','6'),('1','60'),('1','61'),('1','67'),('1','68'),('1','7'),('1','73'),('1','74'),('1','75'),('1','76'),('1','77'),('1','78'),('1','79'),('1','7d7a556218e64673b95057a0ff426375'),('1','8'),('1','80'),('1','9'),('1','ef047b3fd34b4c109118782a9ea0d698'),('1','fb7dba0898664ee184b65b55a2f95793'),('1','fe6cdeecf4224cec844d9111f99d2080'),('6','1'),('6','10'),('6','11'),('6','12'),('6','13'),('6','14'),('6','15'),('6','16'),('6','17'),('6','18'),('6','19'),('6','2'),('6','20'),('6','21'),('6','22'),('6','23'),('6','24'),('6','25'),('6','26'),('6','27'),('6','28'),('6','29'),('6','3'),('6','30'),('6','31'),('6','32'),('6','33'),('6','34'),('6','35'),('6','36'),('6','37'),('6','38'),('6','39'),('6','4'),('6','40'),('6','41'),('6','42'),('6','43'),('6','44'),('6','45'),('6','46'),('6','47'),('6','48'),('6','49'),('6','5'),('6','50'),('6','51'),('6','52'),('6','53'),('6','54'),('6','55'),('6','56'),('6','57'),('6','58'),('6','59'),('6','6'),('6','60'),('6','61'),('6','62'),('6','63'),('6','64'),('6','65'),('6','66'),('6','67'),('6','68'),('6','69'),('6','7'),('6','70'),('6','8'),('6','9'),('bdbbe3faaed04d1cb33b497284094297','09765e1380984bccb4628736303bcfc8'),('bdbbe3faaed04d1cb33b497284094297','1'),('bdbbe3faaed04d1cb33b497284094297','10'),('bdbbe3faaed04d1cb33b497284094297','11'),('bdbbe3faaed04d1cb33b497284094297','12'),('bdbbe3faaed04d1cb33b497284094297','13'),('bdbbe3faaed04d1cb33b497284094297','14'),('bdbbe3faaed04d1cb33b497284094297','15'),('bdbbe3faaed04d1cb33b497284094297','16'),('bdbbe3faaed04d1cb33b497284094297','1e83b18dce5c4f45b20cac13d3f8994a'),('bdbbe3faaed04d1cb33b497284094297','2'),('bdbbe3faaed04d1cb33b497284094297','20'),('bdbbe3faaed04d1cb33b497284094297','21'),('bdbbe3faaed04d1cb33b497284094297','2118392a43774fbd8b7662916e75f18d'),('bdbbe3faaed04d1cb33b497284094297','22'),('bdbbe3faaed04d1cb33b497284094297','27'),('bdbbe3faaed04d1cb33b497284094297','28'),('bdbbe3faaed04d1cb33b497284094297','29'),('bdbbe3faaed04d1cb33b497284094297','3'),('bdbbe3faaed04d1cb33b497284094297','30'),('bdbbe3faaed04d1cb33b497284094297','31'),('bdbbe3faaed04d1cb33b497284094297','32'),('bdbbe3faaed04d1cb33b497284094297','3286e0fcdf1b43b3b88cf365d5dfe091'),('bdbbe3faaed04d1cb33b497284094297','33'),('bdbbe3faaed04d1cb33b497284094297','34'),('bdbbe3faaed04d1cb33b497284094297','35'),('bdbbe3faaed04d1cb33b497284094297','36'),('bdbbe3faaed04d1cb33b497284094297','37'),('bdbbe3faaed04d1cb33b497284094297','38'),('bdbbe3faaed04d1cb33b497284094297','39'),('bdbbe3faaed04d1cb33b497284094297','4'),('bdbbe3faaed04d1cb33b497284094297','40'),('bdbbe3faaed04d1cb33b497284094297','41'),('bdbbe3faaed04d1cb33b497284094297','42'),('bdbbe3faaed04d1cb33b497284094297','43'),('bdbbe3faaed04d1cb33b497284094297','44'),('bdbbe3faaed04d1cb33b497284094297','45'),('bdbbe3faaed04d1cb33b497284094297','46'),('bdbbe3faaed04d1cb33b497284094297','47'),('bdbbe3faaed04d1cb33b497284094297','48'),('bdbbe3faaed04d1cb33b497284094297','49'),('bdbbe3faaed04d1cb33b497284094297','5'),('bdbbe3faaed04d1cb33b497284094297','50'),('bdbbe3faaed04d1cb33b497284094297','51'),('bdbbe3faaed04d1cb33b497284094297','52'),('bdbbe3faaed04d1cb33b497284094297','53'),('bdbbe3faaed04d1cb33b497284094297','54'),('bdbbe3faaed04d1cb33b497284094297','55'),('bdbbe3faaed04d1cb33b497284094297','56'),('bdbbe3faaed04d1cb33b497284094297','57'),('bdbbe3faaed04d1cb33b497284094297','58'),('bdbbe3faaed04d1cb33b497284094297','59'),('bdbbe3faaed04d1cb33b497284094297','6'),('bdbbe3faaed04d1cb33b497284094297','60'),('bdbbe3faaed04d1cb33b497284094297','61'),('bdbbe3faaed04d1cb33b497284094297','67'),('bdbbe3faaed04d1cb33b497284094297','68'),('bdbbe3faaed04d1cb33b497284094297','7'),('bdbbe3faaed04d1cb33b497284094297','73'),('bdbbe3faaed04d1cb33b497284094297','74'),('bdbbe3faaed04d1cb33b497284094297','75'),('bdbbe3faaed04d1cb33b497284094297','76'),('bdbbe3faaed04d1cb33b497284094297','77'),('bdbbe3faaed04d1cb33b497284094297','78'),('bdbbe3faaed04d1cb33b497284094297','79'),('bdbbe3faaed04d1cb33b497284094297','7d7a556218e64673b95057a0ff426375'),('bdbbe3faaed04d1cb33b497284094297','8'),('bdbbe3faaed04d1cb33b497284094297','80'),('bdbbe3faaed04d1cb33b497284094297','9'),('bdbbe3faaed04d1cb33b497284094297','ef047b3fd34b4c109118782a9ea0d698'),('bdbbe3faaed04d1cb33b497284094297','fb7dba0898664ee184b65b55a2f95793'),('bdbbe3faaed04d1cb33b497284094297','fe6cdeecf4224cec844d9111f99d2080'),('dfe6ce00954644c08e4c856e5df10b80','09765e1380984bccb4628736303bcfc8'),('dfe6ce00954644c08e4c856e5df10b80','1'),('dfe6ce00954644c08e4c856e5df10b80','10'),('dfe6ce00954644c08e4c856e5df10b80','11'),('dfe6ce00954644c08e4c856e5df10b80','12'),('dfe6ce00954644c08e4c856e5df10b80','13'),('dfe6ce00954644c08e4c856e5df10b80','14'),('dfe6ce00954644c08e4c856e5df10b80','15'),('dfe6ce00954644c08e4c856e5df10b80','16'),('dfe6ce00954644c08e4c856e5df10b80','1e83b18dce5c4f45b20cac13d3f8994a'),('dfe6ce00954644c08e4c856e5df10b80','2'),('dfe6ce00954644c08e4c856e5df10b80','20'),('dfe6ce00954644c08e4c856e5df10b80','21'),('dfe6ce00954644c08e4c856e5df10b80','2118392a43774fbd8b7662916e75f18d'),('dfe6ce00954644c08e4c856e5df10b80','22'),('dfe6ce00954644c08e4c856e5df10b80','27'),('dfe6ce00954644c08e4c856e5df10b80','28'),('dfe6ce00954644c08e4c856e5df10b80','29'),('dfe6ce00954644c08e4c856e5df10b80','3'),('dfe6ce00954644c08e4c856e5df10b80','30'),('dfe6ce00954644c08e4c856e5df10b80','31'),('dfe6ce00954644c08e4c856e5df10b80','32'),('dfe6ce00954644c08e4c856e5df10b80','3286e0fcdf1b43b3b88cf365d5dfe091'),('dfe6ce00954644c08e4c856e5df10b80','33'),('dfe6ce00954644c08e4c856e5df10b80','34'),('dfe6ce00954644c08e4c856e5df10b80','35'),('dfe6ce00954644c08e4c856e5df10b80','36'),('dfe6ce00954644c08e4c856e5df10b80','37'),('dfe6ce00954644c08e4c856e5df10b80','38'),('dfe6ce00954644c08e4c856e5df10b80','39'),('dfe6ce00954644c08e4c856e5df10b80','4'),('dfe6ce00954644c08e4c856e5df10b80','40'),('dfe6ce00954644c08e4c856e5df10b80','41'),('dfe6ce00954644c08e4c856e5df10b80','42'),('dfe6ce00954644c08e4c856e5df10b80','43'),('dfe6ce00954644c08e4c856e5df10b80','44'),('dfe6ce00954644c08e4c856e5df10b80','45'),('dfe6ce00954644c08e4c856e5df10b80','46'),('dfe6ce00954644c08e4c856e5df10b80','47'),('dfe6ce00954644c08e4c856e5df10b80','48'),('dfe6ce00954644c08e4c856e5df10b80','49'),('dfe6ce00954644c08e4c856e5df10b80','5'),('dfe6ce00954644c08e4c856e5df10b80','50'),('dfe6ce00954644c08e4c856e5df10b80','51'),('dfe6ce00954644c08e4c856e5df10b80','52'),('dfe6ce00954644c08e4c856e5df10b80','53'),('dfe6ce00954644c08e4c856e5df10b80','54'),('dfe6ce00954644c08e4c856e5df10b80','55'),('dfe6ce00954644c08e4c856e5df10b80','56'),('dfe6ce00954644c08e4c856e5df10b80','57'),('dfe6ce00954644c08e4c856e5df10b80','58'),('dfe6ce00954644c08e4c856e5df10b80','59'),('dfe6ce00954644c08e4c856e5df10b80','6'),('dfe6ce00954644c08e4c856e5df10b80','60'),('dfe6ce00954644c08e4c856e5df10b80','61'),('dfe6ce00954644c08e4c856e5df10b80','67'),('dfe6ce00954644c08e4c856e5df10b80','68'),('dfe6ce00954644c08e4c856e5df10b80','7'),('dfe6ce00954644c08e4c856e5df10b80','73'),('dfe6ce00954644c08e4c856e5df10b80','74'),('dfe6ce00954644c08e4c856e5df10b80','75'),('dfe6ce00954644c08e4c856e5df10b80','76'),('dfe6ce00954644c08e4c856e5df10b80','77'),('dfe6ce00954644c08e4c856e5df10b80','78'),('dfe6ce00954644c08e4c856e5df10b80','79'),('dfe6ce00954644c08e4c856e5df10b80','7d7a556218e64673b95057a0ff426375'),('dfe6ce00954644c08e4c856e5df10b80','8'),('dfe6ce00954644c08e4c856e5df10b80','80'),('dfe6ce00954644c08e4c856e5df10b80','9'),('dfe6ce00954644c08e4c856e5df10b80','ef047b3fd34b4c109118782a9ea0d698'),('dfe6ce00954644c08e4c856e5df10b80','fb7dba0898664ee184b65b55a2f95793'),('dfe6ce00954644c08e4c856e5df10b80','fe6cdeecf4224cec844d9111f99d2080');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`login_name`,`password`,`no`,`name`,`email`,`phone`,`mobile`,`user_type`,`login_ip`,`login_date`,`create_by`,`create_date`,`update_by`,`update_date`,`remarks`,`del_flag`) values ('019aa099cf474d25bca068244b750da3','lian','889b0be1407cfd9226b6c5c31745f9fbc862028e70d21b4f74e70713','0004','莲','thinkgem@163.com','8675','8675','',NULL,NULL,'1','2014-03-09 17:15:03','1','2014-03-10 17:02:43','','0'),('1','thinkgem','69fc18a44d59dd448181c23428e11504f58824ad3d5e064dc314d1e6','0001','Thinkgem','thinkgem@163.com','110','110',NULL,'0:0:0:0:0:0:0:1','2014-04-03 21:09:31','1','2013-05-27 08:00:00','1','2014-03-10 17:02:43','最高管理员 思密达','0'),('1cd4ba5c9dbe4fd8bb654f6d5f2d880c','tai22','73b8e753ddbf8577d6189d010157c7e16cee06507613aff5a4a76060','0005','泰22','thinkgem@163.com','110','110','',NULL,NULL,'1','2014-03-09 21:59:41','1','2014-03-09 21:59:41','最高管理员 思密达','0'),('2','admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0002','管理员','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','管理员','0'),('5','bj_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0005','技术部','thinkgem@163.com','8675','8675',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00','技术部','0'),('5314e94e11d047acadcc8ff8c2cebb9e','lian22','7b9cdb31d46a37b35c2c4552851ca0c99694e0d794b186fd16b36dc0','0004','莲22','thinkgem@163.com','8675','8675','',NULL,NULL,'1','2014-03-09 21:59:40','1','2014-03-09 21:59:40','技术部','0'),('71c984a7142b47d59d1d91089e2e64a2','lala','eb94e786b5631d869b7bdaf6ce2321fccf82b68402c17e5c49d79c6b','0001','拉拉','thinkgem@163.com','110','110','',NULL,NULL,'1','2014-03-09 23:15:49','1','2014-03-10 17:32:08','最高管理员 思密达','0'),('7b31a83978f24e69afa24fc96d3888ba','zhenyi','285057d9dfefb64ddb64f270d87516522df2a2bf3d0bea3c676d862a','0005','真一','thinkgem@163.com','8675','8675','',NULL,NULL,'1','2014-03-09 17:15:03','1','2014-03-10 17:32:40','','0'),('7fb5a3197a5a4755b4de83400884143d','nana22','26596aa56f67bc1e884b1c740107c02150ce202ba3b6e28b1e679e2b','0003','娜娜22','123@123.com','120','120','1',NULL,NULL,'1','2014-03-09 21:59:40','1','2014-03-09 21:59:40','卡机嘛','0'),('9a7bc2b364af4722ab647bd6d2f1bf95','shane','f1ad1fa47e98fff08695b3bf1cedc974380a606160b6f4c763a67dce','0002','酱油君','123@123.com','120','120','1',NULL,NULL,'1','2014-03-09 16:40:08','1','2014-03-09 16:41:47','卡机嘛','0'),('b13c778f6d5949c6868adc5306c47d44','nana','a774262f098b519a892c7f43e9957e7a149decece0d07003aaa1bdd3','0003','娜娜','123@123.com','120','120','1',NULL,NULL,'1','2014-03-09 17:15:02','1','2014-03-10 17:02:43','','0'),('bec4a83acf7f47f2bf1b654056fc8143','jack','0581086405752f76fa88ac6b85b212e4f243ecbcad8c598e06088724','0001','杰克','thinkgem@163.com','110','110','1',NULL,NULL,'1','2014-03-09 23:17:29','1','2014-03-09 23:17:29','最高管理员 思密达','0'),('e04c821ce3ce486eaa4d49ba63c330a8','tai','314f8345f8623c0598c499dcdae927dd5d0618243bc7baeaa4b5c9cb','0005','泰','thinkgem@163.com','110','110','',NULL,NULL,'1','2014-03-09 17:15:03','1','2014-03-09 17:15:03','41707.68980324074','0'),('e3501718ffb341bf8399918ebd5988d2','zhenyi22','824317f18df51cade141c626ac6258493a063f0f5de3b7a4b5728abc','0005','真一22','thinkgem@163.com','8675','8675','',NULL,NULL,'1','2014-03-09 21:59:41','1','2014-03-09 21:59:41','管理员','0');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='用户-角色';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values ('019aa099cf474d25bca068244b750da3','bdbbe3faaed04d1cb33b497284094297'),('1','1'),('1','bdbbe3faaed04d1cb33b497284094297'),('1cd4ba5c9dbe4fd8bb654f6d5f2d880c','1'),('2','1'),('5','4'),('5314e94e11d047acadcc8ff8c2cebb9e','1'),('71c984a7142b47d59d1d91089e2e64a2','1'),('71c984a7142b47d59d1d91089e2e64a2','bdbbe3faaed04d1cb33b497284094297'),('7b31a83978f24e69afa24fc96d3888ba','bdbbe3faaed04d1cb33b497284094297'),('7fb5a3197a5a4755b4de83400884143d','1'),('9a7bc2b364af4722ab647bd6d2f1bf95','1'),('9a7bc2b364af4722ab647bd6d2f1bf95','6'),('b13c778f6d5949c6868adc5306c47d44','bdbbe3faaed04d1cb33b497284094297'),('bec4a83acf7f47f2bf1b654056fc8143','1'),('e3501718ffb341bf8399918ebd5988d2','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
