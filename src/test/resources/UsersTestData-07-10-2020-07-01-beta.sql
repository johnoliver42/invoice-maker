-- Generation time: Wed, 07 Oct 2020 07:01:04 +0000
-- Host: mysql.hostinger.ro
-- DB name: u574849695_24
/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `street2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `postalCode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `businessName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Users` VALUES ('1','Wilfredo','King','ayden.block@example.net','89514 Agnes Dale','Apt. 023','South Candaceport','Massachusetts','ljej','Jenkins-Kuvalis'),
('2','Jayme','Gorczany','hudson.janice@example.com','32825 Simonis Lakes','Apt. 505','West Rigobertomouth','Pennsylvania','dkgs','Senger-Leuschke'),
('3','Florine','Wintheiser','clark50@example.com','2955 Wolff Rue','Suite 635','Port Orion','Hawaii','bcbd','Green Group'),
('4','May','Nikolaus','jones.june@example.net','6057 Arvid Corners Apt. 922','Suite 798','East Stonestad','Nebraska','plvj','D\'Amore-Mitchell'),
('5','Scotty','Koepp','wayne29@example.com','984 Wisozk Stravenue Suite 675','Apt. 544','Erdmanland','Kansas','jxuj','Weissnat Group'),
('6','Victoria','Powlowski','ppowlowski@example.org','932 Doyle Landing Apt. 350','Suite 943','Brekkeville','Oregon','qrlc','Fritsch-Prohaska'),
('7','Jay','Wolf','zabernathy@example.org','22311 Altenwerth Fields Apt. 637','Apt. 514','North Luellaview','Indiana','pieb','Bosco, Emard and Ruecker'),
('8','Mary','O\'Kon','ctoy@example.com','2708 Braun Street','Apt. 853','Wademouth','NorthCarolina','lsxc','Ondricka Ltd'),
('9','Ila','Sawayn','audrey30@example.net','10095 Triston Plains','Apt. 770','Lake Brookefort','Louisiana','nyke','Crist-Metz'),
('10','Wilma','Yost','morris.gerhold@example.com','5922 Wunsch Stream','Apt. 952','Prosaccobury','Virginia','zrqj','Marquardt LLC'),
('11','Samson','Rogahn','hilda68@example.org','5941 Sanford Inlet','Apt. 103','Olafstad','Kentucky','isfj','Ferry, Hansen and Grady'),
('12','Noemi','Murazik','wiza.lorena@example.net','101 Maye Mall','Apt. 170','East Carolinashire','Virginia','wmul','Dickinson-Oberbrunner'),
('13','Megane','O\'Kon','stark.piper@example.com','742 Rebeca Plain','Apt. 340','New Dewayne','Massachusetts','epig','Herzog, Lebsack and Corkery'),
('14','Deshaun','Olson','icartwright@example.com','8185 Murphy Fall','Suite 345','East Jadeshire','Texas','ykcc','Schmitt, Bergnaum and Lakin'),
('15','Abbie','Ruecker','camille90@example.net','742 Grimes Squares Suite 469','Suite 865','Kreigerberg','NewYork','vcxx','Champlin-Waelchi'),
('16','Merritt','DuBuque','rebecca.walker@example.org','1757 Jazmyn Summit Apt. 494','Suite 922','Halieberg','Tennessee','ajnr','Ortiz, Nolan and Windler'),
('17','Milford','Price','bdicki@example.com','145 Feeney Key','Suite 321','Schulistshire','Wisconsin','lvvi','Kemmer LLC'),
('18','Korbin','Monahan','modesto.bogisich@example.net','9070 Rogers Lodge Suite 262','Apt. 850','Harrisbury','Maryland','flfk','Friesen PLC'),
('19','Hardy','Gutkowski','jermaine.hintz@example.org','14483 Orn Falls','Apt. 212','Quinnview','Mississippi','ppwb','Hintz PLC'),
('20','Rosalee','Rogahn','white.zoey@example.org','8931 Kling Pass Suite 761','Suite 930','North Rodolfo','SouthDakota','abgq','King and Sons'),
('21','Lea','Wilkinson','kgoodwin@example.org','315 Delores Fall','Apt. 835','Augustinestad','SouthCarolina','ddix','Rempel, Wunsch and Luettgen'),
('22','Bernie','Langworth','maurice.robel@example.com','511 Crona Dale Suite 713','Apt. 444','D\'angelofurt','Washington','lrtv','Jacobi, Conn and Ruecker'),
('23','Westley','Harris','kylee.braun@example.com','590 Fernando Walks','Apt. 413','Runolfssonland','Idaho','rbms','Gaylord, Cartwright and Langosh'),
('24','Lilyan','Hammes','cleo32@example.com','2927 Catalina Junction','Suite 123','Lake Makenziechester','Mississippi','ioyo','Buckridge Group'),
('25','Hyman','Dooley','clementine.wintheiser@example.org','43848 Millie Pass','Apt. 247','West Wiltonview','California','wfwm','Collier, Schuster and Osinski'),
('26','Nicolette','Sawayn','talia86@example.org','473 Powlowski Forges Apt. 149','Suite 335','Rueckertown','NewMexico','svtv','McLaughlin-Buckridge'),
('27','Eldred','Zulauf','corkery.marian@example.com','91229 Brenden Station','Apt. 479','Melissafurt','Delaware','qkfy','Moen and Sons'),
('28','Tina','Cummerata','elroy22@example.com','48736 Kari Drive','Suite 019','Littelburgh','Kentucky','wope','Schmitt, Koss and Ernser'),
('29','Eve','Kuphal','herta.schoen@example.net','3886 Wilford Island','Apt. 171','Howellchester','RhodeIsland','kdyr','Bosco-Hagenes'),
('30','Deion','Kuvalis','dare.quinten@example.org','4341 Douglas View Apt. 001','Apt. 960','North Carolyne','Alaska','helc','Franecki Ltd'),
('31','Lauriane','Medhurst','tbogisich@example.com','5428 Zoe Court Apt. 013','Suite 272','Wisokyview','Massachusetts','lhxi','Schaefer, Hickle and Reynolds'),
('32','Finn','Jast','gillian.rath@example.com','7817 Lela Turnpike','Suite 069','Lake Bridieshire','Ohio','zpkq','Littel, Hettinger and Schiller'),
('33','Megane','Rau','verdie.dach@example.org','131 Leta Camp Suite 366','Apt. 134','Peggiechester','Florida','dshf','Veum-Schulist'),
('34','Ryleigh','Stanton','koelpin.jaycee@example.org','766 Adriel Keys','Apt. 109','West Wendell','Tennessee','cxuf','Romaguera-Torp'),
('35','Coleman','Erdman','yasmin.jakubowski@example.net','5537 Terrance Walks Apt. 597','Apt. 905','Lolitatown','Wisconsin','iajl','Kunde LLC'),
('36','Jocelyn','Wolf','dariana60@example.org','37974 Augustine Mill Suite 058','Suite 750','South Geovanni','Maryland','rppb','Yundt, Gleason and Okuneva'),
('37','Kacey','O\'Conner','wiley86@example.org','29802 Eveline Rapid','Suite 029','Doraside','Tennessee','fdep','Durgan-Reichert'),
('38','Mireya','Labadie','hilpert.jevon@example.net','91548 Ritchie Skyway Apt. 884','Suite 948','New Rosinafurt','NewYork','uyul','Skiles-Konopelski'),
('39','Demetrius','Denesik','braxton25@example.org','0240 Durgan Ranch Apt. 610','Suite 585','Lorainehaven','Georgia','lyyp','Ryan, Hegmann and Sawayn'),
('40','Hilda','Koelpin','dframi@example.net','59331 Fadel Glen Suite 043','Suite 591','Lake Coryville','Hawaii','xyad','Dickinson and Sons'),
('41','Lucy','Ward','arielle.towne@example.com','53274 Kenneth Path','Suite 206','Port Malachiview','Virginia','leel','Cummerata-Lakin'),
('42','Abby','Raynor','aboyer@example.org','058 Cummerata Garden','Apt. 457','Kassandrachester','Wisconsin','yapj','Parisian-Sawayn'),
('43','Maxime','Grimes','ross74@example.net','381 Lueilwitz Groves Apt. 176','Suite 646','New Haliefurt','Massachusetts','mcbn','Padberg, Stroman and McCullough'),
('44','Augusta','Cummings','aschuppe@example.net','6079 Brayan Way','Apt. 692','Lake Lillianaburgh','Minnesota','shjo','Heller Ltd'),
('45','Aileen','Pacocha','alexandrine25@example.net','599 Claud Forks','Apt. 811','South Cathrynfort','Indiana','mqgo','Kub, Bogan and Prohaska'),
('46','Claire','Runolfsdottir','elliot71@example.net','56442 Brad Fords Apt. 535','Suite 306','East Jillianfurt','Maryland','ctho','Kassulke-Beahan'),
('47','Michael','Simonis','ffriesen@example.org','2865 Schamberger Passage','Apt. 218','Hartmannberg','California','lyny','Luettgen-Tillman'),
('48','Priscilla','Hoeger','margarita.hahn@example.org','609 Kaia Views Suite 899','Apt. 682','South Amirland','Kentucky','cnvp','Olson, Buckridge and Padberg'),
('49','Misael','Larkin','arjun.collins@example.net','91434 Mosciski Mountains','Suite 940','Port Archibaldton','SouthDakota','kveq','Huel-Sporer'),
('50','Marisa','Purdy','jed.hamill@example.org','7053 Bechtelar Road Suite 882','Apt. 719','Port Astrid','Illinois','koyc','Dach PLC'),
('51','Ahmed','Casper','leo.streich@example.org','04544 Durward Corners','Suite 962','Devinberg','Iowa','xuxb','Keebler Inc'),
('52','Cicero','Thiel','joelle.towne@example.com','569 Bogan Roads Suite 190','Apt. 723','East Jerrellton','Alabama','vzhp','Hansen and Sons'),
('53','Nyah','Greenholt','ethan.schumm@example.org','911 Annabel Club Suite 345','Suite 970','Ullrichville','Mississippi','tbdy','Lakin-Rippin'),
('54','Kira','Wiza','cary.russel@example.org','593 Stehr Corner','Suite 038','North Alvena','NewYork','nwvf','Zieme-Marvin'),
('55','Brett','Krajcik','collins.jasen@example.com','06134 Reichert Crest','Apt. 421','Ignaciochester','Delaware','dumy','Johnston, Schmitt and Quigley'),
('56','Wilfred','Schuster','remington85@example.com','4356 Petra Greens Apt. 153','Suite 532','Brandoberg','Oklahoma','ehsv','Mante and Sons'),
('57','Jessika','Kunze','rkoelpin@example.net','0458 Powlowski Mission','Apt. 448','Davisfort','Mississippi','hjem','Rolfson, Mraz and Swaniawski'),
('58','Mose','Rath','devin.rempel@example.org','5894 Anibal Crest Suite 176','Suite 218','Daynefort','Wisconsin','lyvg','Von-Hauck'),
('59','Jalon','Schaefer','jaiden85@example.com','97379 Strosin Row','Suite 032','East Frances','RhodeIsland','vziz','Hoppe Ltd'),
('60','Stephanie','McKenzie','ibarton@example.org','703 Dock Inlet','Apt. 041','Lake Martinafort','Ohio','zrgw','Grant-Rippin'),
('61','Deshaun','Jacobi','zkertzmann@example.org','452 Spinka Flats Suite 137','Suite 233','East Carleehaven','Delaware','ulxo','Ward, Stroman and Bernier'),
('62','Vern','Senger','rice.beatrice@example.net','16688 Reinger Bridge Suite 400','Suite 119','North Justinetown','Alabama','aezk','Muller-Quigley'),
('63','Werner','Klein','walker.mercedes@example.com','849 Ritchie Brooks Suite 494','Apt. 598','Williamsonborough','NorthDakota','fxee','Rippin-Bednar'),
('64','Murl','Trantow','amira57@example.com','52268 Schmitt Road Apt. 961','Apt. 606','West Morrisville','Illinois','uwrh','Rowe, Kuhn and Berge'),
('65','Maximo','Hartmann','schinner.lilyan@example.com','23099 Oberbrunner Lodge','Apt. 925','West Urbanton','Minnesota','zlce','Rowe, Carroll and Berge'),
('66','Isac','McGlynn','ismael.olson@example.org','18400 Naomi Locks Suite 811','Apt. 279','Rippinfurt','Colorado','txmn','Batz, Von and Schinner'),
('67','Shanny','Schimmel','zglover@example.net','48777 Sawayn Mountain Suite 313','Apt. 823','South Johan','Kansas','yhgv','Paucek-Gleichner'),
('68','Arvilla','Kulas','dickinson.cedrick@example.org','9611 Borer Flat','Suite 336','North Jackeline','Arkansas','wurd','Gleichner, Hammes and Lemke'),
('69','Amy','Emmerich','kemmer.nedra@example.net','7937 Brakus Summit','Suite 599','Lake Catherine','NewMexico','hzyn','Gleason Inc'),
('70','Caleigh','Stark','kailyn09@example.net','709 Bogan Tunnel Suite 321','Apt. 673','North Joel','Oregon','eynj','Aufderhar-Batz'),
('71','Amparo','Crooks','kraig24@example.org','2863 Lehner Vista Suite 431','Suite 709','Stephaniatown','NorthDakota','brzo','Weimann LLC'),
('72','German','Leuschke','stacy.parisian@example.com','2495 Feest Court','Apt. 548','Keanuborough','Louisiana','onfp','Morissette, Lubowitz and Kiehn'),
('73','Christa','Kautzer','reichert.brittany@example.net','05034 Greyson Tunnel Apt. 368','Apt. 250','Ubaldotown','Montana','ullj','Nitzsche-Batz'),
('74','Mitchell','O\'Connell','bstoltenberg@example.net','335 Hills Greens Apt. 224','Suite 688','Gulgowskifurt','Illinois','wfqm','Gusikowski, Adams and Stehr'),
('75','Hilton','Renner','iwintheiser@example.org','145 Berry Way','Apt. 093','Lake Kavon','Iowa','fzya','Weber, Kiehn and Weber'),
('76','Elna','Dicki','lindgren.chandler@example.org','688 Ramon Streets','Suite 916','Neomamouth','Louisiana','jxvf','Lynch Inc'),
('77','Christopher','Block','katelin.schoen@example.org','47093 Quitzon Rue Suite 615','Suite 916','Lake Emoryberg','Maine','kkmc','Kirlin and Sons'),
('78','Elmore','Blick','amir.pfeffer@example.com','823 Wyman Glen Apt. 684','Apt. 192','Lake Ameliefort','Massachusetts','mjwm','Windler PLC'),
('79','Beth','Fahey','jermey.kunde@example.net','840 Cristopher Circles','Suite 627','New Esperanzaville','Mississippi','rgci','Daugherty, Kilback and Bogan'),
('80','Herminia','Pagac','abernhard@example.net','1333 Jerde Common','Suite 836','Flatleyberg','Illinois','jhoi','O\'Keefe Ltd'),
('81','Sierra','Weissnat','rschmeler@example.net','48022 Botsford Views','Suite 154','New Brice','Kansas','njuy','Konopelski, Ziemann and Macejkovic'),
('82','Imogene','Schiller','junius33@example.net','402 Delbert Tunnel','Apt. 377','Zoemouth','Wisconsin','gpui','Harvey Ltd'),
('83','Webster','Walsh','albina78@example.com','89084 Graciela Pines Suite 217','Apt. 886','Kutchside','Iowa','rzks','Hilll, Mann and Hills'),
('84','Wallace','Smitham','esteban68@example.org','70534 Glover Landing','Suite 808','Lake Taureanport','Virginia','udic','McClure PLC'),
('85','Jamaal','O\'Conner','mante.rebecca@example.com','4356 Florence Street','Apt. 442','West Ardenshire','NewHampshire','xgyl','Macejkovic and Sons'),
('86','Darryl','Wilkinson','kking@example.com','066 Ullrich Pass','Suite 233','South Margarita','Montana','txae','Kassulke, Kunde and Powlowski'),
('87','Litzy','Botsford','keira72@example.com','629 Brakus Tunnel','Suite 608','Alenabury','Maryland','plvn','Langosh-Stanton'),
('88','Alivia','Homenick','lester.grant@example.com','46841 Royal Knoll Apt. 853','Apt. 988','West Bridgette','Wisconsin','wpuh','Mann, Huels and Haley'),
('89','Diana','Cremin','moises.stamm@example.com','23296 Kaylin Locks Suite 928','Suite 916','Labadiechester','Florida','mkki','Stokes-Flatley'),
('90','Kathleen','Quitzon','ikuvalis@example.net','2927 Stacy Ferry','Apt. 004','Omariport','SouthDakota','isuj','Stracke, Shields and Goodwin'),
('91','Marshall','Wintheiser','zboyer@example.net','69500 Rice Freeway','Apt. 182','Creminborough','Connecticut','vmur','Lindgren PLC'),
('92','Lessie','Durgan','ruthie.auer@example.org','9778 Sipes Rest Apt. 729','Apt. 791','Cristchester','Oregon','hgnn','Schumm, Crona and Fadel'),
('93','Stephan','Jacobson','qmccullough@example.com','4948 Keaton Lakes Apt. 539','Apt. 734','West Eloiseberg','SouthDakota','vjai','Renner and Sons'),
('94','Alfreda','Schumm','ocrist@example.org','03210 Roberta Flats Apt. 560','Suite 353','Loriland','Arizona','bage','Miller-Prosacco'),
('95','Ellen','Zieme','taurean25@example.org','071 Hosea Stream Suite 488','Suite 934','North Hyman','Colorado','rgpw','Mitchell, Bechtelar and Daugherty'),
('96','Maryam','Zboncak','presley36@example.org','612 Kamren Isle Suite 084','Apt. 583','Lake Gunnarberg','Arkansas','eulg','Tromp-Gottlieb'),
('97','Oda','Crona','ebert.tierra@example.com','568 Juliet Ports','Suite 604','Kassulkeville','NorthDakota','migx','McGlynn, Breitenberg and Koepp'),
('98','Destini','Schinner','josianne.will@example.org','87311 Volkman Mountains','Suite 562','Hellerbury','Ohio','mvge','Smith, McGlynn and Quigley'),
('99','Shaylee','Bahringer','msimonis@example.org','501 Shea River','Suite 694','South Elliechester','Florida','xlpg','Brekke, Brown and Hegmann'),
('100','Rylee','Prosacco','kuphal.elmo@example.org','9064 Feest Neck Suite 736','Apt. 493','North Allene','Virginia','rvaq','Mraz Group'); 




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

