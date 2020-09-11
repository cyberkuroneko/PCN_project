DROP DATABASE IF EXISTS `T_Employee`;
CREATE DATABASE `T_Employee`; 
USE `T_Employee`;
SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;
CREATE TABLE `T_Employee` (
  `Emp_id` int(10) NOT NULL AUTO_INCREMENT,
  `Emp_name` varchar(50),
  `Emp_tel` int(50),
  `Emp_email` varchar(100),
  `Emp_skill` varchar(500),
  `Emp_birthdate` varchar(100),
  `Emp_keireki` varchar(500),
  `Emp_neareststation` varchar(20),
  `Emp_price` varchar(50),
  `Emp_nationality` varchar(15),
  `Emp_note` varchar(500),
  `Emp_company` varchar(100),
  `Emp_companytel` int(50),
  `Emp_companyemail`varchar(100),
  `Emp_manager` varchar(20),
  `Emp_managertel` int(50),
  `Emp_manageremail` varchar(50),
  PRIMARY KEY (`Emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `T_Employee` VALUES (1,'F.T',null,null,'C#.NET/WEBまたはクラサバ案件;PL/SQL,T-SQL開発、ストアド','47','エンジニア経験　21年
・C#.NET/ASP.NET、VBScript・PL/SQL、T-SQL、ストアドプロシージャ・詳細設計～開発、テスト','氷川台駅','73万',null,null,'株式会社アフロ',null,null,'伊庭',null,null);

INSERT INTO `T_Employee` VALUES (2,'N.M',null,null,'ASP.NET、VB.net、C#.net、PHP、HTML、JavaScript、SQL-Server','27','希望職種：開発系','中央線立川駅',
'64万/月（応相談）',null,'即日または6月～　※140～180hを基準にお願いします','株式会社アフロ',null,null,'伊庭',null,null); 

INSERT INTO `T_Employee` VALUES (3,'M.R',null,null,'言語：VB、VB.NET、C#.NET、Java; FW ：．NET Framework4.5.2; DB　：Oracle、SQLserver; 工程：調査分析、基本設計、開発、テスト;　業務/業界：物流、販売管理',
'47','・VB.NET設計、開発　約20年
・WEB、クラサバ　半々ぐらいの経験
・FW： NET Framework4.5、TERASOLNA、Struts
・物流、販売管理','登戸駅','73万（応相談）',null,'[希望案件]
.NET系　WEB開発案件※VB.NET/C#.NET WEB開発','株式会社アフロ',null,null,'伊庭'null,null);

INSERT INTO `T_Employee` VALUES (4,'T.H',null,null,'業務ポジション：PM・PL（環境調査・要件定義～製造～試験～リリース）','38','※人物面＝既存システムの調査・分析が得意ですが、全工程の経験が豊富です。
JAVA環境のプロジェクトでの、PL・PM経験あり。','戸越','月額85万（時間精算あり）',null,'就業可能日：6月8日～','株式会社アフロ',null,null,'伊庭',null,null);

INSERT INTO `T_Employee` VALUES (5,'Y.K',null,null,'SAP,AWS,インフラ基盤系構築DBA,基本詳細設計PL/SQL　C VC　shell　VB.net',
'46','日本語N1　英会話　Oralce','北池袋駅','75万円～',null,null,'株式会社アフロ',null,null,'伊庭',null,null);

SELECT * FROM T_Employee;