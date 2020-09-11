DROP DATABASE IF EXISTS `T_Company`;
CREATE DATABASE `T_Company`; 
USE `T_Company`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;
CREATE TABLE `T_Company` (
  `Company_id` int(10) NOT NULL AUTO_INCREMENT,
  `Company_name` varchar(50) NOT NULL,
  `Company_email`varchar(100),
  `Company_tel`int(50),
  `Company_postcode`int(50),
  `Company_homepage`varchar(100),
  `Manager_name` varchar(20) ,
  `Manager_tel`int(50),
  `Manager_email` varchar(100),
  `Project_name` varchar(300),
  `Neededskill` varchar(200),
  `Otherskill` varchar(200),
  `Company_address` varchar(200), 
  `Period` varchar(50),
  `Job_detail` varchar(300),
  `Needed_member` varchar(10),
  `Unit_price` varchar(50),
  `Note` varchar(500) ,
  PRIMARY KEY (`Company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

SELECT Note AS '備考' FROM T_Company;

INSERT INTO `T_Company` VALUES (1,'株式会社TKG','西野','FinTech企業向けWebアプリ開発支援',
'Javaの開発経験3年以上,設計から開発を支援できるか,shellScriptの経験,Springの経験',
'ruby/railsの開発経験,.NETの経験,非機能要件/性能向上の経験','桜木町',
'2020/2～　長期予定','スコアリングシステムとそのフロント,web/APIサーバの開発支援',2,'MAX75万','外国籍NG');
INSERT INTO `T_Company` values (2,'株式会社TKG','竹田','基盤増強（BDA）案件','Hadoop全般の知識',
'Linuxの一般的な知識、経験','月島及び品川','2月～中長期','BDA(Oracle Bigdata Appliance)X8-2新設に伴
う、現環境X6-2からのデータ移行/切替方式の検討、試験および各種支援',2,'スキル見合い','対象がオラクル社のHadoopアプライアンスマシンであるBDAのため、
ディストリビューションとしては、CDH(Cloudera)が前提。データ移行や切替の検討、およびその試験
の支援が想定業務のため、Hadoopアプリケーションは多少見れることが望まれるものの、求めるスキルの重きは、基盤寄りの知識、経験になります。');
INSERT INTO `T_Company` VALUES (3,'株式会社TKG','竹田','製造業向け検索エンジンを使った検索システムの保守作業支援','Javaでの開発経験が10年以上ある方;
上級SEとして顧客との仕様詰めから構築までを独自でできること;英語の能力が必要。',
'コミュニケーション、勤怠が良好である事',
'大崎','即日～中長期','製品（検索エンジンの理解）※マニュアルは英語;保守：顧客からの問い合わせに対しシステムの中身を調査して回答;
顧客からの新機能要望に対するヒアリング、要件定義から構築までを対応;製品の不具合が発生した場合は、製造元（海外）へＱＡ票を英語で作成して回答を分析',
1,'MAX80万(140H-200H)スキル見合い','日本語と英語が堪能であれば、外国籍検討可（日本籍優先');

SELECT * FROM T_Company;

