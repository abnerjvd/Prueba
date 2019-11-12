/**
 * Author:  Mauricio Zamora Hernández
 * Created: 17 sep. 2019
 */

/*
alter table persona disable keys;
insert into persona 
 (persona_id,numero_identificacion,nombre,primer_apellido,segundo_apellido,activo)
values
*/

alter table usuario disable keys;
insert into usuario
   (usuario_id,nombre_usuario,activo,persona_id)
 values
   (1,'Sistema',true,null);
alter table usuario enable keys;
alter table usuario auto_increment = 100;

alter table pais disable keys;
insert into pais (pais_id, codigo, nombre) values (4,'AFG','Afganistán');
insert into pais (pais_id, codigo, nombre) values (8,'ALB','Albania');
insert into pais (pais_id, codigo, nombre) values (12,'DZA','Argelia');
insert into pais (pais_id, codigo, nombre) values (20,'AND','Andorra');
insert into pais (pais_id, codigo, nombre) values (24,'AGO','Angola');
insert into pais (pais_id, codigo, nombre) values (28,'ATG','Antigua y Barbuda');
insert into pais (pais_id, codigo, nombre) values (31,'AZE','Azerbaiyán');
insert into pais (pais_id, codigo, nombre) values (32,'ARG','Argentina');
insert into pais (pais_id, codigo, nombre) values (36,'AUS','Australia');
insert into pais (pais_id, codigo, nombre) values (40,'AUT','Austria');
insert into pais (pais_id, codigo, nombre) values (44,'BHS','Bahamas');
insert into pais (pais_id, codigo, nombre) values (48,'BHR','Bahrein');
insert into pais (pais_id, codigo, nombre) values (50,'BGD','Bangladesh');
insert into pais (pais_id, codigo, nombre) values (51,'ARM','Armenia');
insert into pais (pais_id, codigo, nombre) values (52,'BRB','Barbados');
insert into pais (pais_id, codigo, nombre) values (56,'BEL','Bélgica');
insert into pais (pais_id, codigo, nombre) values (64,'BTN','Bhután');
insert into pais (pais_id, codigo, nombre) values (68,'BOL','Bolivia (Estado Plurinacional de)');
insert into pais (pais_id, codigo, nombre) values (70,'BIH','Bosnia y Herzegovina');
insert into pais (pais_id, codigo, nombre) values (72,'BWA','Botswana');
insert into pais (pais_id, codigo, nombre) values (76,'BRA','Brasil');
insert into pais (pais_id, codigo, nombre) values (84,'BLZ','Belice');
insert into pais (pais_id, codigo, nombre) values (90,'SLB','Islas Salomón');
insert into pais (pais_id, codigo, nombre) values (96,'BRN','Brunei Darussalam');
insert into pais (pais_id, codigo, nombre) values (100,'BGR','Bulgaria');
insert into pais (pais_id, codigo, nombre) values (104,'MMR','Myanmar');
insert into pais (pais_id, codigo, nombre) values (108,'BDI','Burundi');
insert into pais (pais_id, codigo, nombre) values (112,'BLR','Belarús');
insert into pais (pais_id, codigo, nombre) values (116,'KHM','Camboya');
insert into pais (pais_id, codigo, nombre) values (120,'CMR','Camerún');
insert into pais (pais_id, codigo, nombre) values (124,'CAN','Canadá');
insert into pais (pais_id, codigo, nombre) values (132,'CPV','Cabo Verde');
insert into pais (pais_id, codigo, nombre) values (140,'CAF','República Centroafricana');
insert into pais (pais_id, codigo, nombre) values (144,'LKA','Sri Lanka');
insert into pais (pais_id, codigo, nombre) values (148,'TCD','Chad');
insert into pais (pais_id, codigo, nombre) values (152,'CHL','Chile');
insert into pais (pais_id, codigo, nombre) values (156,'CHN','China');
insert into pais (pais_id, codigo, nombre) values (170,'COL','Colombia');
insert into pais (pais_id, codigo, nombre) values (174,'COM','Comoras');
insert into pais (pais_id, codigo, nombre) values (178,'COG','Congo');
insert into pais (pais_id, codigo, nombre) values (180,'COD','República Democrática del Congo');
insert into pais (pais_id, codigo, nombre) values (184,'COK','Islas Cook');
insert into pais (pais_id, codigo, nombre) values (188,'CRI','Costa Rica');
insert into pais (pais_id, codigo, nombre) values (191,'HRV','Croacia');
insert into pais (pais_id, codigo, nombre) values (192,'CUB','Cuba');
insert into pais (pais_id, codigo, nombre) values (196,'CYP','Chipre');
insert into pais (pais_id, codigo, nombre) values (203,'CZE','Chequia');
insert into pais (pais_id, codigo, nombre) values (204,'BEN','Benin');
insert into pais (pais_id, codigo, nombre) values (208,'DNK','Dinamarca');
insert into pais (pais_id, codigo, nombre) values (212,'DMA','Dominica');
insert into pais (pais_id, codigo, nombre) values (214,'DOM','República Dominicana');
insert into pais (pais_id, codigo, nombre) values (218,'ECU','Ecuador');
insert into pais (pais_id, codigo, nombre) values (222,'SLV','El Salvador');
insert into pais (pais_id, codigo, nombre) values (226,'GNQ','Guinea Ecuatorial');
insert into pais (pais_id, codigo, nombre) values (231,'ETH','Etiopía');
insert into pais (pais_id, codigo, nombre) values (232,'ERI','Eritrea');
insert into pais (pais_id, codigo, nombre) values (233,'EST','Estonia');
insert into pais (pais_id, codigo, nombre) values (234,'FRO','Islas Feroe');
insert into pais (pais_id, codigo, nombre) values (242,'FJI','Fiji');
insert into pais (pais_id, codigo, nombre) values (246,'FIN','Finlandia');
insert into pais (pais_id, codigo, nombre) values (250,'FRA','Francia');
insert into pais (pais_id, codigo, nombre) values (262,'DJI','Djibouti');
insert into pais (pais_id, codigo, nombre) values (266,'GAB','Gabón');
insert into pais (pais_id, codigo, nombre) values (268,'GEO','Georgia');
insert into pais (pais_id, codigo, nombre) values (270,'GMB','Gambia');
insert into pais (pais_id, codigo, nombre) values (276,'DEU','Alemania');
insert into pais (pais_id, codigo, nombre) values (288,'GHA','Ghana');
insert into pais (pais_id, codigo, nombre) values (296,'KIR','Kiribati');
insert into pais (pais_id, codigo, nombre) values (300,'GRC','Grecia');
insert into pais (pais_id, codigo, nombre) values (308,'GRD','Granada');
insert into pais (pais_id, codigo, nombre) values (320,'GTM','Guatemala');
insert into pais (pais_id, codigo, nombre) values (324,'GIN','Guinea');
insert into pais (pais_id, codigo, nombre) values (328,'GUY','Guyana');
insert into pais (pais_id, codigo, nombre) values (332,'HTI','Haití');
insert into pais (pais_id, codigo, nombre) values (340,'HND','Honduras');
insert into pais (pais_id, codigo, nombre) values (348,'HUN','Hungría');
insert into pais (pais_id, codigo, nombre) values (352,'ISL','Islandia');
insert into pais (pais_id, codigo, nombre) values (356,'IND','India');
insert into pais (pais_id, codigo, nombre) values (360,'IDN','Indonesia');
insert into pais (pais_id, codigo, nombre) values (364,'IRN','Irán (República Islámica del)');
insert into pais (pais_id, codigo, nombre) values (368,'IRQ','Iraq');
insert into pais (pais_id, codigo, nombre) values (372,'IRL','Irlanda');
insert into pais (pais_id, codigo, nombre) values (376,'ISR','Israel');
insert into pais (pais_id, codigo, nombre) values (380,'ITA','Italia');
insert into pais (pais_id, codigo, nombre) values (384,'CIV','Côte dIvoire');
insert into pais (pais_id, codigo, nombre) values (388,'JAM','Jamaica');
insert into pais (pais_id, codigo, nombre) values (392,'JPN','Japón');
insert into pais (pais_id, codigo, nombre) values (398,'KAZ','Kazajstán');
insert into pais (pais_id, codigo, nombre) values (400,'JOR','Jordania');
insert into pais (pais_id, codigo, nombre) values (404,'KEN','Kenya');
insert into pais (pais_id, codigo, nombre) values (408,'PRK','República Popular Democrática de Corea');
insert into pais (pais_id, codigo, nombre) values (410,'KOR','República de Corea');
insert into pais (pais_id, codigo, nombre) values (414,'KWT','Kuwait');
insert into pais (pais_id, codigo, nombre) values (417,'KGZ','Kirguistán');
insert into pais (pais_id, codigo, nombre) values (418,'LAO','República Democrática Popular Lao');
insert into pais (pais_id, codigo, nombre) values (422,'LBN','Líbano');
insert into pais (pais_id, codigo, nombre) values (426,'LSO','Lesotho');
insert into pais (pais_id, codigo, nombre) values (428,'LVA','Letonia');
insert into pais (pais_id, codigo, nombre) values (430,'LBR','Liberia');
insert into pais (pais_id, codigo, nombre) values (434,'LBY','Libia');
insert into pais (pais_id, codigo, nombre) values (440,'LTU','Lituania');
insert into pais (pais_id, codigo, nombre) values (442,'LUX','Luxemburgo');
insert into pais (pais_id, codigo, nombre) values (450,'MDG','Madagascar');
insert into pais (pais_id, codigo, nombre) values (454,'MWI','Malawi');
insert into pais (pais_id, codigo, nombre) values (458,'MYS','Malasia');
insert into pais (pais_id, codigo, nombre) values (462,'MDV','Maldivas');
insert into pais (pais_id, codigo, nombre) values (466,'MLI','Malí');
insert into pais (pais_id, codigo, nombre) values (470,'MLT','Malta');
insert into pais (pais_id, codigo, nombre) values (478,'MRT','Mauritania');
insert into pais (pais_id, codigo, nombre) values (480,'MUS','Mauricio');
insert into pais (pais_id, codigo, nombre) values (484,'MEX','México');
insert into pais (pais_id, codigo, nombre) values (492,'MCO','Mónaco');
insert into pais (pais_id, codigo, nombre) values (496,'MNG','Mongolia');
insert into pais (pais_id, codigo, nombre) values (498,'MDA','República de Moldova');
insert into pais (pais_id, codigo, nombre) values (499,'MNE','Montenegro');
insert into pais (pais_id, codigo, nombre) values (504,'MAR','Marruecos');
insert into pais (pais_id, codigo, nombre) values (508,'MOZ','Mozambique');
insert into pais (pais_id, codigo, nombre) values (512,'OMN','Omán');
insert into pais (pais_id, codigo, nombre) values (516,'NAM','Namibia');
insert into pais (pais_id, codigo, nombre) values (520,'NRU','Nauru');
insert into pais (pais_id, codigo, nombre) values (524,'NPL','Nepal');
insert into pais (pais_id, codigo, nombre) values (528,'NLD','Países Bajos');
insert into pais (pais_id, codigo, nombre) values (548,'VUT','Vanuatu');
insert into pais (pais_id, codigo, nombre) values (554,'NZL','Nueva Zelandia');
insert into pais (pais_id, codigo, nombre) values (558,'NIC','Nicaragua');
insert into pais (pais_id, codigo, nombre) values (562,'NER','Níger');
insert into pais (pais_id, codigo, nombre) values (566,'NGA','Nigeria');
insert into pais (pais_id, codigo, nombre) values (570,'NIU','Niue');
insert into pais (pais_id, codigo, nombre) values (578,'NOR','Noruega');
insert into pais (pais_id, codigo, nombre) values (583,'FSM','Micronesia (Estados Federados de)');
insert into pais (pais_id, codigo, nombre) values (584,'MHL','Islas Marshall');
insert into pais (pais_id, codigo, nombre) values (585,'PLW','Palau');
insert into pais (pais_id, codigo, nombre) values (586,'PAK','Pakistán');
insert into pais (pais_id, codigo, nombre) values (591,'PAN','Panamá');
insert into pais (pais_id, codigo, nombre) values (598,'PNG','Papua Nueva Guinea');
insert into pais (pais_id, codigo, nombre) values (600,'PRY','Paraguay');
insert into pais (pais_id, codigo, nombre) values (604,'PER','Perú');
insert into pais (pais_id, codigo, nombre) values (608,'PHL','Filipinas');
insert into pais (pais_id, codigo, nombre) values (616,'POL','Polonia');
insert into pais (pais_id, codigo, nombre) values (620,'PRT','Portugal');
insert into pais (pais_id, codigo, nombre) values (624,'GNB','Guinea-Bissau');
insert into pais (pais_id, codigo, nombre) values (626,'TLS','Timor-Leste');
insert into pais (pais_id, codigo, nombre) values (634,'QAT','Qatar');
insert into pais (pais_id, codigo, nombre) values (642,'ROU','Rumania');
insert into pais (pais_id, codigo, nombre) values (643,'RUS','Federación de Rusia');
insert into pais (pais_id, codigo, nombre) values (646,'RWA','Rwanda');
insert into pais (pais_id, codigo, nombre) values (659,'KNA','Saint Kitts y Nevis');
insert into pais (pais_id, codigo, nombre) values (662,'LCA','Santa Lucía');
insert into pais (pais_id, codigo, nombre) values (670,'VCT','San Vicente y las Granadinas');
insert into pais (pais_id, codigo, nombre) values (674,'SMR','San Marino');
insert into pais (pais_id, codigo, nombre) values (678,'STP','Santo Tomé y Príncipe');
insert into pais (pais_id, codigo, nombre) values (682,'SAU','Arabia Saudita');
insert into pais (pais_id, codigo, nombre) values (686,'SEN','Senegal');
insert into pais (pais_id, codigo, nombre) values (688,'SRB','Serbia');
insert into pais (pais_id, codigo, nombre) values (690,'SYC','Seychelles');
insert into pais (pais_id, codigo, nombre) values (694,'SLE','Sierra Leona');
insert into pais (pais_id, codigo, nombre) values (702,'SGP','Singapur');
insert into pais (pais_id, codigo, nombre) values (703,'SVK','Eslovaquia');
insert into pais (pais_id, codigo, nombre) values (704,'VNM','Viet Nam');
insert into pais (pais_id, codigo, nombre) values (705,'SVN','Eslovenia');
insert into pais (pais_id, codigo, nombre) values (706,'SOM','Somalia');
insert into pais (pais_id, codigo, nombre) values (710,'ZAF','Sudáfrica');
insert into pais (pais_id, codigo, nombre) values (716,'ZWE','Zimbabwe');
insert into pais (pais_id, codigo, nombre) values (724,'ESP','España');
insert into pais (pais_id, codigo, nombre) values (728,'SSD','Sudán del Sur');
insert into pais (pais_id, codigo, nombre) values (736,'SDN','Sudán');
insert into pais (pais_id, codigo, nombre) values (740,'SUR','Suriname');
insert into pais (pais_id, codigo, nombre) values (748,'SWZ','Eswatini');
insert into pais (pais_id, codigo, nombre) values (752,'SWE','Suecia');
insert into pais (pais_id, codigo, nombre) values (756,'CHE','Suiza');
insert into pais (pais_id, codigo, nombre) values (760,'SYR','República Árabe Siria');
insert into pais (pais_id, codigo, nombre) values (762,'TJK','Tayikistán');
insert into pais (pais_id, codigo, nombre) values (764,'THA','Tailandia');
insert into pais (pais_id, codigo, nombre) values (768,'TGO','Togo');
insert into pais (pais_id, codigo, nombre) values (772,'TKL','Tokelau');
insert into pais (pais_id, codigo, nombre) values (776,'TON','Tonga');
insert into pais (pais_id, codigo, nombre) values (780,'TTO','Trinidad y Tabago');
insert into pais (pais_id, codigo, nombre) values (784,'ARE','Emiratos Árabes Unidos');
insert into pais (pais_id, codigo, nombre) values (788,'TUN','Túnez');
insert into pais (pais_id, codigo, nombre) values (792,'TUR','Turquía');
insert into pais (pais_id, codigo, nombre) values (795,'TKM','Turkmenistán');
insert into pais (pais_id, codigo, nombre) values (798,'TUV','Tuvalu');
insert into pais (pais_id, codigo, nombre) values (800,'UGA','Uganda');
insert into pais (pais_id, codigo, nombre) values (804,'UKR','Ucrania');
insert into pais (pais_id, codigo, nombre) values (807,'MKD','Macedonia del Norte');
insert into pais (pais_id, codigo, nombre) values (818,'EGY','Egipto');
insert into pais (pais_id, codigo, nombre) values (826,'GBR','Reino Unido de Gran Bretaña e Irlanda del Norte');
insert into pais (pais_id, codigo, nombre) values (834,'TZA','República Unida de Tanzanía');
insert into pais (pais_id, codigo, nombre) values (840,'USA','Estados Unidos de América');
insert into pais (pais_id, codigo, nombre) values (854,'BFA','Burkina Faso');
insert into pais (pais_id, codigo, nombre) values (858,'URY','Uruguay');
insert into pais (pais_id, codigo, nombre) values (860,'UZB','Uzbekistán');
insert into pais (pais_id, codigo, nombre) values (862,'VEN','Venezuela (República Bolivariana de)');
insert into pais (pais_id, codigo, nombre) values (882,'WSM','Samoa');
insert into pais (pais_id, codigo, nombre) values (887,'YEM','Yemen');
insert into pais (pais_id, codigo, nombre) values (894,'ZMB','Zambia');
alter table pais enable keys;
alter table pais auto_increment = 1001;

alter table provincia disable keys;
insert into provincia (provincia_id,nombre) values (1, 'San José');
insert into provincia (provincia_id,nombre) values (2, 'Alajuela');
insert into provincia (provincia_id,nombre) values (3, 'Cartago');
insert into provincia (provincia_id,nombre) values (4, 'Heredia');
insert into provincia (provincia_id,nombre) values (5, 'Guanacaste');
insert into provincia (provincia_id,nombre) values (6, 'Limón');
insert into provincia (provincia_id,nombre) values (7, 'Puntarenas');
alter table provincia enable keys;
alter table provincia auto_increment = 8;

alter table canton disable keys;
insert into canton (canton_id,nombre,provincia_id) values (101,'San José',1);
insert into canton (canton_id,nombre,provincia_id) values (102,'Escazú',1);
insert into canton (canton_id,nombre,provincia_id) values (103,'Desamparados',1);
insert into canton (canton_id,nombre,provincia_id) values (104,'Puriscal',1);
insert into canton (canton_id,nombre,provincia_id) values (105,'Tarrazú',1);
insert into canton (canton_id,nombre,provincia_id) values (106,'Aserrí',1);
insert into canton (canton_id,nombre,provincia_id) values (107,'Mora',1);
insert into canton (canton_id,nombre,provincia_id) values (108,'Goicoechea',1);
insert into canton (canton_id,nombre,provincia_id) values (109,'Santa Ana',1);
insert into canton (canton_id,nombre,provincia_id) values (110,'Alajuelita',1);
insert into canton (canton_id,nombre,provincia_id) values (111,'Vázquez de Coronado',1);
insert into canton (canton_id,nombre,provincia_id) values (112,'Acosta',1);
insert into canton (canton_id,nombre,provincia_id) values (113,'Tibás',1);
insert into canton (canton_id,nombre,provincia_id) values (114,'Moravia',1);
insert into canton (canton_id,nombre,provincia_id) values (115,'Montes de Oca',1);
insert into canton (canton_id,nombre,provincia_id) values (116,'Turrubares',1);
insert into canton (canton_id,nombre,provincia_id) values (117,'Dota',1);
insert into canton (canton_id,nombre,provincia_id) values (118,'Curridabat',1);
insert into canton (canton_id,nombre,provincia_id) values (119,'Pérez Zeledón',1);
insert into canton (canton_id,nombre,provincia_id) values (120,'León Cortés Castro',1);
insert into canton (canton_id,nombre,provincia_id) values (201,'Alajuela',2);
insert into canton (canton_id,nombre,provincia_id) values (202,'San Ramón',2);
insert into canton (canton_id,nombre,provincia_id) values (203,'Grecia',2);
insert into canton (canton_id,nombre,provincia_id) values (204,'San Mateo',2);
insert into canton (canton_id,nombre,provincia_id) values (205,'Atenas',2);
insert into canton (canton_id,nombre,provincia_id) values (206,'Naranjo',2);
insert into canton (canton_id,nombre,provincia_id) values (207,'Palmares',2);
insert into canton (canton_id,nombre,provincia_id) values (208,'Poás',2);
insert into canton (canton_id,nombre,provincia_id) values (209,'Orotina',2);
insert into canton (canton_id,nombre,provincia_id) values (210,'San Carlos',2);
insert into canton (canton_id,nombre,provincia_id) values (211,'Zarcero',2);
insert into canton (canton_id,nombre,provincia_id) values (212,'Sarchí',2);
insert into canton (canton_id,nombre,provincia_id) values (213,'Upala',2);
insert into canton (canton_id,nombre,provincia_id) values (214,'Los Chiles',2);
insert into canton (canton_id,nombre,provincia_id) values (215,'Guatuso',2);
insert into canton (canton_id,nombre,provincia_id) values (216,'Grecia Río Cuarto',2);
insert into canton (canton_id,nombre,provincia_id) values (301,'Cartago',3);
insert into canton (canton_id,nombre,provincia_id) values (302,'Paraíso',3);
insert into canton (canton_id,nombre,provincia_id) values (303,'La Unión',3);
insert into canton (canton_id,nombre,provincia_id) values (304,'Jiménez',3);
insert into canton (canton_id,nombre,provincia_id) values (305,'Turrialba',3);
insert into canton (canton_id,nombre,provincia_id) values (306,'Alvarado',3);
insert into canton (canton_id,nombre,provincia_id) values (307,'Oreamuno',3);
insert into canton (canton_id,nombre,provincia_id) values (308,'El Guarco',3);
insert into canton (canton_id,nombre,provincia_id) values (401,'Heredia',4);
insert into canton (canton_id,nombre,provincia_id) values (402,'Barva',4);
insert into canton (canton_id,nombre,provincia_id) values (403,'Santo Domingo',4);
insert into canton (canton_id,nombre,provincia_id) values (404,'Santa Bárbara',4);
insert into canton (canton_id,nombre,provincia_id) values (405,'San Rafael',4);
insert into canton (canton_id,nombre,provincia_id) values (406,'San Isidro',4);
insert into canton (canton_id,nombre,provincia_id) values (407,'Belén',4);
insert into canton (canton_id,nombre,provincia_id) values (408,'Flores',4);
insert into canton (canton_id,nombre,provincia_id) values (409,'San Pablo',4);
insert into canton (canton_id,nombre,provincia_id) values (410,'Sarapiquí',4);
insert into canton (canton_id,nombre,provincia_id) values (501,'Liberia',5);
insert into canton (canton_id,nombre,provincia_id) values (502,'Nicoya',5);
insert into canton (canton_id,nombre,provincia_id) values (503,'Santa Cruz',5);
insert into canton (canton_id,nombre,provincia_id) values (504,'Bagaces',5);
insert into canton (canton_id,nombre,provincia_id) values (505,'Carrillo',5);
insert into canton (canton_id,nombre,provincia_id) values (506,'Cañas',5);
insert into canton (canton_id,nombre,provincia_id) values (507,'Abangares',5);
insert into canton (canton_id,nombre,provincia_id) values (508,'Tilarán',5);
insert into canton (canton_id,nombre,provincia_id) values (509,'Nandayure',5);
insert into canton (canton_id,nombre,provincia_id) values (510,'La Cruz',5);
insert into canton (canton_id,nombre,provincia_id) values (511,'Hojancha',5);
insert into canton (canton_id,nombre,provincia_id) values (601,'Limón',6);
insert into canton (canton_id,nombre,provincia_id) values (602,'Pococí',6);
insert into canton (canton_id,nombre,provincia_id) values (603,'Siquirres',6);
insert into canton (canton_id,nombre,provincia_id) values (604,'Talamanca',6);
insert into canton (canton_id,nombre,provincia_id) values (605,'Matina',6);
insert into canton (canton_id,nombre,provincia_id) values (606,'Guácimo',6);
insert into canton (canton_id,nombre,provincia_id) values (701,'Puntarenas',7);
insert into canton (canton_id,nombre,provincia_id) values (702,'Esparza',7);
insert into canton (canton_id,nombre,provincia_id) values (703,'Buenos Aires',7);
insert into canton (canton_id,nombre,provincia_id) values (704,'Montes de Oro',7);
insert into canton (canton_id,nombre,provincia_id) values (705,'Osa',7);
insert into canton (canton_id,nombre,provincia_id) values (706,'Quepos',7);
insert into canton (canton_id,nombre,provincia_id) values (707,'Golfito',7);
insert into canton (canton_id,nombre,provincia_id) values (708,'Coto Brus',7);
insert into canton (canton_id,nombre,provincia_id) values (709,'Parrita',7);
insert into canton (canton_id,nombre,provincia_id) values (710,'Corredores',7);
insert into canton (canton_id,nombre,provincia_id) values (711,'Garabito',7);
alter table canton enable keys;
alter table canton auto_increment = 800;

alter table distrito disable keys;
insert into distrito (distrito_id,nombre,canton_id) values (101001,'Carmen',101);
insert into distrito (distrito_id,nombre,canton_id) values (101002,'Merced',101);
insert into distrito (distrito_id,nombre,canton_id) values (101003,'Hospital',101);
insert into distrito (distrito_id,nombre,canton_id) values (101004,'Catedral',101);
insert into distrito (distrito_id,nombre,canton_id) values (101005,'Zapote',101);
insert into distrito (distrito_id,nombre,canton_id) values (101006,'San Francisco de Dos Ríos',101);
insert into distrito (distrito_id,nombre,canton_id) values (101007,'La Uruca',101);
insert into distrito (distrito_id,nombre,canton_id) values (101008,'Mata Redonda',101);
insert into distrito (distrito_id,nombre,canton_id) values (101009,'Pavas',101);
insert into distrito (distrito_id,nombre,canton_id) values (101010,'Hatillo',101);
insert into distrito (distrito_id,nombre,canton_id) values (101011,'San Sebastián',101);
insert into distrito (distrito_id,nombre,canton_id) values (102012,'San Miguel',102);
insert into distrito (distrito_id,nombre,canton_id) values (102013,'San Antonio',102);
insert into distrito (distrito_id,nombre,canton_id) values (102014,'San Rafael',102);
insert into distrito (distrito_id,nombre,canton_id) values (103015,'Desamparados',103);
insert into distrito (distrito_id,nombre,canton_id) values (103016,'San Miguel',103);
insert into distrito (distrito_id,nombre,canton_id) values (103017,'San Juan de Dios',103);
insert into distrito (distrito_id,nombre,canton_id) values (103018,'San Rafael Arriba',103);
insert into distrito (distrito_id,nombre,canton_id) values (103019,'San Antonio',103);
insert into distrito (distrito_id,nombre,canton_id) values (103020,'Frailes',103);
insert into distrito (distrito_id,nombre,canton_id) values (103021,'Patarrá',103);
insert into distrito (distrito_id,nombre,canton_id) values (103022,'San Cristóbal',103);
insert into distrito (distrito_id,nombre,canton_id) values (103023,'Rosario',103);
insert into distrito (distrito_id,nombre,canton_id) values (103024,'Damas',103);
insert into distrito (distrito_id,nombre,canton_id) values (103025,'San Rafael Abajo',103);
insert into distrito (distrito_id,nombre,canton_id) values (103026,'Gravilias',103);
insert into distrito (distrito_id,nombre,canton_id) values (103027,'Los Guido',103);
insert into distrito (distrito_id,nombre,canton_id) values (104028,'Santiago',104);
insert into distrito (distrito_id,nombre,canton_id) values (104029,'Mercedes Sur',104);
insert into distrito (distrito_id,nombre,canton_id) values (104030,'Barbacoas',104);
insert into distrito (distrito_id,nombre,canton_id) values (104031,'Grifo Alto',104);
insert into distrito (distrito_id,nombre,canton_id) values (104032,'San Rafael',104);
insert into distrito (distrito_id,nombre,canton_id) values (104033,'Candelarita',104);
insert into distrito (distrito_id,nombre,canton_id) values (104034,'Desamparaditos',104);
insert into distrito (distrito_id,nombre,canton_id) values (104035,'San Antonio',104);
insert into distrito (distrito_id,nombre,canton_id) values (104036,'Chires',104);
insert into distrito (distrito_id,nombre,canton_id) values (104037,'La Cangreja',104);
insert into distrito (distrito_id,nombre,canton_id) values (105038,'San Marcos',105);
insert into distrito (distrito_id,nombre,canton_id) values (105039,'San Lorenzo',105);
insert into distrito (distrito_id,nombre,canton_id) values (105040,'San Carlos',105);
insert into distrito (distrito_id,nombre,canton_id) values (106041,'Aserrí',106);
insert into distrito (distrito_id,nombre,canton_id) values (106042,'Tarbaca',106);
insert into distrito (distrito_id,nombre,canton_id) values (106043,'Vuelta de Jorco',106);
insert into distrito (distrito_id,nombre,canton_id) values (106044,'San Gabriel',106);
insert into distrito (distrito_id,nombre,canton_id) values (106045,'Legua',106);
insert into distrito (distrito_id,nombre,canton_id) values (106046,'Monterrey',106);
insert into distrito (distrito_id,nombre,canton_id) values (106047,'Salitrillos',106);
insert into distrito (distrito_id,nombre,canton_id) values (107048,'Ciudad Colón',107);
insert into distrito (distrito_id,nombre,canton_id) values (107049,'Guayabo',107);
insert into distrito (distrito_id,nombre,canton_id) values (107050,'Tabarcia',107);
insert into distrito (distrito_id,nombre,canton_id) values (107051,'Piedras Negras',107);
insert into distrito (distrito_id,nombre,canton_id) values (107052,'Picagres',107);
insert into distrito (distrito_id,nombre,canton_id) values (107053,'Jaris',107);
insert into distrito (distrito_id,nombre,canton_id) values (107054,'Quitirrisí',107);
insert into distrito (distrito_id,nombre,canton_id) values (108055,'Guadalupe',108);
insert into distrito (distrito_id,nombre,canton_id) values (108056,'San Francisco',108);
insert into distrito (distrito_id,nombre,canton_id) values (108057,'Calle Blancos',108);
insert into distrito (distrito_id,nombre,canton_id) values (108058,'Mata de Plátano',108);
insert into distrito (distrito_id,nombre,canton_id) values (108059,'Ipís',108);
insert into distrito (distrito_id,nombre,canton_id) values (108060,'Rancho Redondo',108);
insert into distrito (distrito_id,nombre,canton_id) values (108061,'Purral',108);
insert into distrito (distrito_id,nombre,canton_id) values (109062,'Santa Ana',109);
insert into distrito (distrito_id,nombre,canton_id) values (109063,'Salitral',109);
insert into distrito (distrito_id,nombre,canton_id) values (109064,'Pozos',109);
insert into distrito (distrito_id,nombre,canton_id) values (109065,'Uruca',109);
insert into distrito (distrito_id,nombre,canton_id) values (109066,'Piedades',109);
insert into distrito (distrito_id,nombre,canton_id) values (109067,'Brasil',109);
insert into distrito (distrito_id,nombre,canton_id) values (110068,'Alajuelita',110);
insert into distrito (distrito_id,nombre,canton_id) values (110069,'San Josecito',110);
insert into distrito (distrito_id,nombre,canton_id) values (110070,'San Antonio',110);
insert into distrito (distrito_id,nombre,canton_id) values (110071,'Concepción',110);
insert into distrito (distrito_id,nombre,canton_id) values (110072,'San Felipe',110);
insert into distrito (distrito_id,nombre,canton_id) values (111073,'San Isidro',111);
insert into distrito (distrito_id,nombre,canton_id) values (111074,'San Rafael',111);
insert into distrito (distrito_id,nombre,canton_id) values (111075,'Dulce Nombre de Jesús',111);
insert into distrito (distrito_id,nombre,canton_id) values (111076,'Patalillo',111);
insert into distrito (distrito_id,nombre,canton_id) values (111077,'Cascajal',111);
insert into distrito (distrito_id,nombre,canton_id) values (112078,'San Ignacio',112);
insert into distrito (distrito_id,nombre,canton_id) values (112079,'Guaitil',112);
insert into distrito (distrito_id,nombre,canton_id) values (112080,'Palmichal',112);
insert into distrito (distrito_id,nombre,canton_id) values (112081,'Cangrejal',112);
insert into distrito (distrito_id,nombre,canton_id) values (112082,'Sabanillas',112);
insert into distrito (distrito_id,nombre,canton_id) values (113083,'San Juan',113);
insert into distrito (distrito_id,nombre,canton_id) values (113084,'Cinco Esquinas',113);
insert into distrito (distrito_id,nombre,canton_id) values (113085,'Anselmo llorente',113);
insert into distrito (distrito_id,nombre,canton_id) values (113086,'León XIII',113);
insert into distrito (distrito_id,nombre,canton_id) values (113087,'Colima',113);
insert into distrito (distrito_id,nombre,canton_id) values (114088,'San Vicente',114);
insert into distrito (distrito_id,nombre,canton_id) values (114089,'San Jerónimo',114);
insert into distrito (distrito_id,nombre,canton_id) values (114090,'La Trinidad',114);
insert into distrito (distrito_id,nombre,canton_id) values (115091,'San Pedro',115);
insert into distrito (distrito_id,nombre,canton_id) values (115092,'Sabanilla',115);
insert into distrito (distrito_id,nombre,canton_id) values (115093,'Mercedes',115);
insert into distrito (distrito_id,nombre,canton_id) values (115094,'San Rafael',115);
insert into distrito (distrito_id,nombre,canton_id) values (116095,'San Pablo',116);
insert into distrito (distrito_id,nombre,canton_id) values (116096,'San Pedro',116);
insert into distrito (distrito_id,nombre,canton_id) values (116097,'San Juan de Mata',116);
insert into distrito (distrito_id,nombre,canton_id) values (116098,'San Luis',116);
insert into distrito (distrito_id,nombre,canton_id) values (116099,'Carara',116);
insert into distrito (distrito_id,nombre,canton_id) values (117100,'Santa María',117);
insert into distrito (distrito_id,nombre,canton_id) values (117101,'Jardín',117);
insert into distrito (distrito_id,nombre,canton_id) values (117102,'Copey',117);
insert into distrito (distrito_id,nombre,canton_id) values (118103,'Curridabat',118);
insert into distrito (distrito_id,nombre,canton_id) values (118104,'Granadilla',118);
insert into distrito (distrito_id,nombre,canton_id) values (118105,'Sánchez',118);
insert into distrito (distrito_id,nombre,canton_id) values (118106,'Tirrases',118);
insert into distrito (distrito_id,nombre,canton_id) values (119107,'San Isidro de El General',119);
insert into distrito (distrito_id,nombre,canton_id) values (119108,'El General',119);
insert into distrito (distrito_id,nombre,canton_id) values (119109,'Daniel Flores',119);
insert into distrito (distrito_id,nombre,canton_id) values (119110,'Rivas',119);
insert into distrito (distrito_id,nombre,canton_id) values (119111,'San Pedro',119);
insert into distrito (distrito_id,nombre,canton_id) values (119112,'Platanares',119);
insert into distrito (distrito_id,nombre,canton_id) values (119113,'Pejibaye',119);
insert into distrito (distrito_id,nombre,canton_id) values (119114,'Cajón',119);
insert into distrito (distrito_id,nombre,canton_id) values (119115,'Barú',119);
insert into distrito (distrito_id,nombre,canton_id) values (119116,'Río Nuevo',119);
insert into distrito (distrito_id,nombre,canton_id) values (119117,'Páramo',119);
insert into distrito (distrito_id,nombre,canton_id) values (119118,'La Amistad',119);
insert into distrito (distrito_id,nombre,canton_id) values (120119,'San Pablo',120);
insert into distrito (distrito_id,nombre,canton_id) values (120120,'San Andrés',120);
insert into distrito (distrito_id,nombre,canton_id) values (120121,'Llano Bonito',120);
insert into distrito (distrito_id,nombre,canton_id) values (120122,'San Isidro',120);
insert into distrito (distrito_id,nombre,canton_id) values (120123,'Santa Cruz',120);
insert into distrito (distrito_id,nombre,canton_id) values (120124,'San Antonio',120);
insert into distrito (distrito_id,nombre,canton_id) values (201001,'Alajuela',201);
insert into distrito (distrito_id,nombre,canton_id) values (201002,'San José',201);
insert into distrito (distrito_id,nombre,canton_id) values (201003,'Carrizal',201);
insert into distrito (distrito_id,nombre,canton_id) values (201004,'San Antonio',201);
insert into distrito (distrito_id,nombre,canton_id) values (201005,'Guácima',201);
insert into distrito (distrito_id,nombre,canton_id) values (201006,'San Isidro',201);
insert into distrito (distrito_id,nombre,canton_id) values (201007,'Sabanilla',201);
insert into distrito (distrito_id,nombre,canton_id) values (201008,'San Rafael',201);
insert into distrito (distrito_id,nombre,canton_id) values (201009,'Río Segundo',201);
insert into distrito (distrito_id,nombre,canton_id) values (201010,'Desamparados',201);
insert into distrito (distrito_id,nombre,canton_id) values (201011,'Turrúcares',201);
insert into distrito (distrito_id,nombre,canton_id) values (201012,'Tambor',201);
insert into distrito (distrito_id,nombre,canton_id) values (201013,'La Garita',201);
insert into distrito (distrito_id,nombre,canton_id) values (201014,'Sarapiquí',201);
insert into distrito (distrito_id,nombre,canton_id) values (202015,'San Ramón',202);
insert into distrito (distrito_id,nombre,canton_id) values (202016,'Santiago',202);
insert into distrito (distrito_id,nombre,canton_id) values (202017,'San Juan',202);
insert into distrito (distrito_id,nombre,canton_id) values (202018,'Piedades Norte',202);
insert into distrito (distrito_id,nombre,canton_id) values (202019,'Piedades Sur',202);
insert into distrito (distrito_id,nombre,canton_id) values (202020,'San Rafael',202);
insert into distrito (distrito_id,nombre,canton_id) values (202021,'San Isidro',202);
insert into distrito (distrito_id,nombre,canton_id) values (202022,'Ángeles',202);
insert into distrito (distrito_id,nombre,canton_id) values (202023,'Alfaro',202);
insert into distrito (distrito_id,nombre,canton_id) values (202024,'Volio',202);
insert into distrito (distrito_id,nombre,canton_id) values (202025,'Concepción',202);
insert into distrito (distrito_id,nombre,canton_id) values (202026,'Zapotal',202);
insert into distrito (distrito_id,nombre,canton_id) values (202027,'Peñas Blancas',202);
insert into distrito (distrito_id,nombre,canton_id) values (202028,'San Lorenzo',202);
insert into distrito (distrito_id,nombre,canton_id) values (203029,'Grecia',203);
insert into distrito (distrito_id,nombre,canton_id) values (203030,'San Isidro',203);
insert into distrito (distrito_id,nombre,canton_id) values (203031,'San José',203);
insert into distrito (distrito_id,nombre,canton_id) values (203032,'San Roque',203);
insert into distrito (distrito_id,nombre,canton_id) values (203033,'Tacares',203);
insert into distrito (distrito_id,nombre,canton_id) values (203034,'Puente de Piedra',203);
insert into distrito (distrito_id,nombre,canton_id) values (203035,'Bolívar',203);
insert into distrito (distrito_id,nombre,canton_id) values (204036,'San Mateo',204);
insert into distrito (distrito_id,nombre,canton_id) values (204037,'Desmonte',204);
insert into distrito (distrito_id,nombre,canton_id) values (204038,'Jesús María',204);
insert into distrito (distrito_id,nombre,canton_id) values (204039,'Labrador',204);
insert into distrito (distrito_id,nombre,canton_id) values (205040,'Atenas',205);
insert into distrito (distrito_id,nombre,canton_id) values (205041,'Jesús',205);
insert into distrito (distrito_id,nombre,canton_id) values (205042,'Mercedes',205);
insert into distrito (distrito_id,nombre,canton_id) values (205043,'San Isidro',205);
insert into distrito (distrito_id,nombre,canton_id) values (205044,'Concepción',205);
insert into distrito (distrito_id,nombre,canton_id) values (205045,'San José',205);
insert into distrito (distrito_id,nombre,canton_id) values (205046,'Santa Eulalia',205);
insert into distrito (distrito_id,nombre,canton_id) values (205047,'Escobal',205);
insert into distrito (distrito_id,nombre,canton_id) values (206048,'Naranjo',206);
insert into distrito (distrito_id,nombre,canton_id) values (206049,'San Miguel',206);
insert into distrito (distrito_id,nombre,canton_id) values (206050,'San José',206);
insert into distrito (distrito_id,nombre,canton_id) values (206051,'Cirrí',206);
insert into distrito (distrito_id,nombre,canton_id) values (206052,'San Jerónimo',206);
insert into distrito (distrito_id,nombre,canton_id) values (206053,'San Juan',206);
insert into distrito (distrito_id,nombre,canton_id) values (206054,'El Rosario',206);
insert into distrito (distrito_id,nombre,canton_id) values (206055,'Palmitos',206);
insert into distrito (distrito_id,nombre,canton_id) values (207056,'Palmares',207);
insert into distrito (distrito_id,nombre,canton_id) values (207057,'Zaragoza',207);
insert into distrito (distrito_id,nombre,canton_id) values (207058,'Buenos Aires',207);
insert into distrito (distrito_id,nombre,canton_id) values (207059,'Santiago',207);
insert into distrito (distrito_id,nombre,canton_id) values (207060,'Candelaria',207);
insert into distrito (distrito_id,nombre,canton_id) values (207061,'Esquipulas',207);
insert into distrito (distrito_id,nombre,canton_id) values (207062,'La Granja',207);
insert into distrito (distrito_id,nombre,canton_id) values (208063,'San Pedro',208);
insert into distrito (distrito_id,nombre,canton_id) values (208064,'San Juan',208);
insert into distrito (distrito_id,nombre,canton_id) values (208065,'San Rafael',208);
insert into distrito (distrito_id,nombre,canton_id) values (208066,'Carrillos',208);
insert into distrito (distrito_id,nombre,canton_id) values (208067,'Sabana Redonda',208);
insert into distrito (distrito_id,nombre,canton_id) values (209068,'Orotina',209);
insert into distrito (distrito_id,nombre,canton_id) values (209069,'Mastate',209);
insert into distrito (distrito_id,nombre,canton_id) values (209070,'Hacienda Vieja',209);
insert into distrito (distrito_id,nombre,canton_id) values (209071,'Coyolar',209);
insert into distrito (distrito_id,nombre,canton_id) values (209072,'La Ceiba',209);
insert into distrito (distrito_id,nombre,canton_id) values (210073,'Quesada',210);
insert into distrito (distrito_id,nombre,canton_id) values (210074,'Florencia',210);
insert into distrito (distrito_id,nombre,canton_id) values (210075,'Buenavista',210);
insert into distrito (distrito_id,nombre,canton_id) values (210076,'Aguas Zarcas',210);
insert into distrito (distrito_id,nombre,canton_id) values (210077,'Venecia',210);
insert into distrito (distrito_id,nombre,canton_id) values (210078,'Pital',210);
insert into distrito (distrito_id,nombre,canton_id) values (210079,'La Fortuna',210);
insert into distrito (distrito_id,nombre,canton_id) values (210080,'La Tigra',210);
insert into distrito (distrito_id,nombre,canton_id) values (210081,'La Palmera',210);
insert into distrito (distrito_id,nombre,canton_id) values (210082,'Venado',210);
insert into distrito (distrito_id,nombre,canton_id) values (210083,'Cutris',210);
insert into distrito (distrito_id,nombre,canton_id) values (210084,'Monterrey',210);
insert into distrito (distrito_id,nombre,canton_id) values (210085,'Pocosol',210);
insert into distrito (distrito_id,nombre,canton_id) values (211086,'Zarcero',211);
insert into distrito (distrito_id,nombre,canton_id) values (211087,'Laguna',211);
insert into distrito (distrito_id,nombre,canton_id) values (211088,'Tapezco',211);
insert into distrito (distrito_id,nombre,canton_id) values (211089,'Guadalupe',211);
insert into distrito (distrito_id,nombre,canton_id) values (211090,'Palmira',211);
insert into distrito (distrito_id,nombre,canton_id) values (211091,'Zapote',211);
insert into distrito (distrito_id,nombre,canton_id) values (211092,'Brisas',211);
insert into distrito (distrito_id,nombre,canton_id) values (212093,'Sarchí Norte',212);
insert into distrito (distrito_id,nombre,canton_id) values (212094,'Sarchí Sur',212);
insert into distrito (distrito_id,nombre,canton_id) values (212095,'Toro Amarillo',212);
insert into distrito (distrito_id,nombre,canton_id) values (212096,'San Pedro',212);
insert into distrito (distrito_id,nombre,canton_id) values (212097,'Rodríguez',212);
insert into distrito (distrito_id,nombre,canton_id) values (213098,'Upala',213);
insert into distrito (distrito_id,nombre,canton_id) values (213099,'Aguas Claras',213);
insert into distrito (distrito_id,nombre,canton_id) values (213100,'San José (Pizote)',213);
insert into distrito (distrito_id,nombre,canton_id) values (213101,'Bijagua',213);
insert into distrito (distrito_id,nombre,canton_id) values (213102,'Delicias',213);
insert into distrito (distrito_id,nombre,canton_id) values (213103,'Dos Ríos',213);
insert into distrito (distrito_id,nombre,canton_id) values (213104,'Yolillal',213);
insert into distrito (distrito_id,nombre,canton_id) values (213105,'Canalete',213);
insert into distrito (distrito_id,nombre,canton_id) values (214106,'Los Chiles',214);
insert into distrito (distrito_id,nombre,canton_id) values (214107,'Caño Negro',214);
insert into distrito (distrito_id,nombre,canton_id) values (214108,'El Amparo',214);
insert into distrito (distrito_id,nombre,canton_id) values (214109,'San Jorge',214);
insert into distrito (distrito_id,nombre,canton_id) values (215110,'San Rafael',215);
insert into distrito (distrito_id,nombre,canton_id) values (215111,'Buenavista',215);
insert into distrito (distrito_id,nombre,canton_id) values (215112,'Cote',215);
insert into distrito (distrito_id,nombre,canton_id) values (215113,'Katira',215);
insert into distrito (distrito_id,nombre,canton_id) values (216114,'Río Cuarto',216);
insert into distrito (distrito_id,nombre,canton_id) values (216115,'Santa Isabel',216);
insert into distrito (distrito_id,nombre,canton_id) values (216116,'Santa Rita',216);
insert into distrito (distrito_id,nombre,canton_id) values (301001,'Oriental',301);
insert into distrito (distrito_id,nombre,canton_id) values (301002,'Occidental',301);
insert into distrito (distrito_id,nombre,canton_id) values (301003,'Carmen',301);
insert into distrito (distrito_id,nombre,canton_id) values (301004,'San Nicolás',301);
insert into distrito (distrito_id,nombre,canton_id) values (301005,'Agua Caliente',301);
insert into distrito (distrito_id,nombre,canton_id) values (301006,'Guadalupe',301);
insert into distrito (distrito_id,nombre,canton_id) values (301007,'Corralillo',301);
insert into distrito (distrito_id,nombre,canton_id) values (301008,'Tierra Blanca',301);
insert into distrito (distrito_id,nombre,canton_id) values (301009,'Dulce Nombre',301);
insert into distrito (distrito_id,nombre,canton_id) values (301010,'Llano Grande',301);
insert into distrito (distrito_id,nombre,canton_id) values (301011,'Quebradilla',301);
insert into distrito (distrito_id,nombre,canton_id) values (302012,'Paraíso',302);
insert into distrito (distrito_id,nombre,canton_id) values (302013,'Santiago',302);
insert into distrito (distrito_id,nombre,canton_id) values (302014,'Orosi',302);
insert into distrito (distrito_id,nombre,canton_id) values (302015,'Cachí',302);
insert into distrito (distrito_id,nombre,canton_id) values (302016,'Llanos de Santa Lucía',302);
insert into distrito (distrito_id,nombre,canton_id) values (303017,'Tres Ríos',303);
insert into distrito (distrito_id,nombre,canton_id) values (303018,'San Diego',303);
insert into distrito (distrito_id,nombre,canton_id) values (303019,'San Juan',303);
insert into distrito (distrito_id,nombre,canton_id) values (303020,'San Rafael',303);
insert into distrito (distrito_id,nombre,canton_id) values (303021,'Concepción',303);
insert into distrito (distrito_id,nombre,canton_id) values (303022,'Dulce Nombre',303);
insert into distrito (distrito_id,nombre,canton_id) values (303023,'San Ramón',303);
insert into distrito (distrito_id,nombre,canton_id) values (303024,'Río Azul',303);
insert into distrito (distrito_id,nombre,canton_id) values (304025,'Juan Viñas',304);
insert into distrito (distrito_id,nombre,canton_id) values (304026,'Tucurrique',304);
insert into distrito (distrito_id,nombre,canton_id) values (304027,'Pejibaye',304);
insert into distrito (distrito_id,nombre,canton_id) values (305028,'Turrialba',305);
insert into distrito (distrito_id,nombre,canton_id) values (305029,'La Suiza',305);
insert into distrito (distrito_id,nombre,canton_id) values (305030,'Peralta',305);
insert into distrito (distrito_id,nombre,canton_id) values (305031,'Santa Cruz',305);
insert into distrito (distrito_id,nombre,canton_id) values (305032,'Santa Teresita',305);
insert into distrito (distrito_id,nombre,canton_id) values (305033,'Pavones',305);
insert into distrito (distrito_id,nombre,canton_id) values (305034,'Tuis',305);
insert into distrito (distrito_id,nombre,canton_id) values (305035,'Tayutic',305);
insert into distrito (distrito_id,nombre,canton_id) values (305036,'Santa Rosa',305);
insert into distrito (distrito_id,nombre,canton_id) values (305037,'Tres Equis',305);
insert into distrito (distrito_id,nombre,canton_id) values (305038,'La Isabel',305);
insert into distrito (distrito_id,nombre,canton_id) values (305039,'Chirripó',305);
insert into distrito (distrito_id,nombre,canton_id) values (306040,'Pacayas',306);
insert into distrito (distrito_id,nombre,canton_id) values (306041,'Cervantes',306);
insert into distrito (distrito_id,nombre,canton_id) values (306042,'Capellades',306);
insert into distrito (distrito_id,nombre,canton_id) values (307043,'San Rafael',307);
insert into distrito (distrito_id,nombre,canton_id) values (307044,'Cot',307);
insert into distrito (distrito_id,nombre,canton_id) values (307045,'Potrero Cerrado',307);
insert into distrito (distrito_id,nombre,canton_id) values (307046,'Cipreses',307);
insert into distrito (distrito_id,nombre,canton_id) values (307047,'Santa Rosa',307);
insert into distrito (distrito_id,nombre,canton_id) values (308048,'El Tejar',308);
insert into distrito (distrito_id,nombre,canton_id) values (308049,'San Isidro',308);
insert into distrito (distrito_id,nombre,canton_id) values (308050,'Tobosi',308);
insert into distrito (distrito_id,nombre,canton_id) values (308051,'Patio de Agua',308);
insert into distrito (distrito_id,nombre,canton_id) values (401001,'Heredia',401);
insert into distrito (distrito_id,nombre,canton_id) values (401002,'Mercedes',401);
insert into distrito (distrito_id,nombre,canton_id) values (401003,'San Francisco',401);
insert into distrito (distrito_id,nombre,canton_id) values (401004,'Ulloa',401);
insert into distrito (distrito_id,nombre,canton_id) values (401005,'Vara Blanca',401);
insert into distrito (distrito_id,nombre,canton_id) values (402006,'Barva',402);
insert into distrito (distrito_id,nombre,canton_id) values (402007,'San Pedro',402);
insert into distrito (distrito_id,nombre,canton_id) values (402008,'San Pablo',402);
insert into distrito (distrito_id,nombre,canton_id) values (402009,'San Roque',402);
insert into distrito (distrito_id,nombre,canton_id) values (402010,'Santa Lucía',402);
insert into distrito (distrito_id,nombre,canton_id) values (402011,'San José de la Montaña',402);
insert into distrito (distrito_id,nombre,canton_id) values (403012,'Santo Domingo',403);
insert into distrito (distrito_id,nombre,canton_id) values (403013,'San Vicente',403);
insert into distrito (distrito_id,nombre,canton_id) values (403014,'San Miguel',403);
insert into distrito (distrito_id,nombre,canton_id) values (403015,'Paracito',403);
insert into distrito (distrito_id,nombre,canton_id) values (403016,'Santo Tomás',403);
insert into distrito (distrito_id,nombre,canton_id) values (403017,'Santa Rosa',403);
insert into distrito (distrito_id,nombre,canton_id) values (403018,'Tures',403);
insert into distrito (distrito_id,nombre,canton_id) values (403019,'Pará',403);
insert into distrito (distrito_id,nombre,canton_id) values (404020,'Santa Bárbara',404);
insert into distrito (distrito_id,nombre,canton_id) values (404021,'San Pedro',404);
insert into distrito (distrito_id,nombre,canton_id) values (404022,'San Juan',404);
insert into distrito (distrito_id,nombre,canton_id) values (404023,'Jesús',404);
insert into distrito (distrito_id,nombre,canton_id) values (404024,'Santo Domingo',404);
insert into distrito (distrito_id,nombre,canton_id) values (404025,'Purabá',404);
insert into distrito (distrito_id,nombre,canton_id) values (405026,'San Rafael',405);
insert into distrito (distrito_id,nombre,canton_id) values (405027,'San Josecito',405);
insert into distrito (distrito_id,nombre,canton_id) values (405028,'Santiago',405);
insert into distrito (distrito_id,nombre,canton_id) values (405029,'Ángeles',405);
insert into distrito (distrito_id,nombre,canton_id) values (405030,'Concepción',405);
insert into distrito (distrito_id,nombre,canton_id) values (406031,'San Isidro',406);
insert into distrito (distrito_id,nombre,canton_id) values (406032,'San José',406);
insert into distrito (distrito_id,nombre,canton_id) values (406033,'Concepción',406);
insert into distrito (distrito_id,nombre,canton_id) values (406034,'San Francisco',406);
insert into distrito (distrito_id,nombre,canton_id) values (407035,'San Antonio',407);
insert into distrito (distrito_id,nombre,canton_id) values (407036,'La Ribera',407);
insert into distrito (distrito_id,nombre,canton_id) values (407037,'La Asunción',407);
insert into distrito (distrito_id,nombre,canton_id) values (408038,'San Joaquín',408);
insert into distrito (distrito_id,nombre,canton_id) values (408039,'Barrantes',408);
insert into distrito (distrito_id,nombre,canton_id) values (408040,'Llorente',408);
insert into distrito (distrito_id,nombre,canton_id) values (409041,'San Pablo',409);
insert into distrito (distrito_id,nombre,canton_id) values (409042,'Rincón de Sabanilla',409);
insert into distrito (distrito_id,nombre,canton_id) values (410043,'Puerto Viejo',410);
insert into distrito (distrito_id,nombre,canton_id) values (410044,'La Virgen',410);
insert into distrito (distrito_id,nombre,canton_id) values (410045,'Horquetas',410);
insert into distrito (distrito_id,nombre,canton_id) values (410046,'Llanuras del Gaspar',410);
insert into distrito (distrito_id,nombre,canton_id) values (410047,'Cureña',410);
insert into distrito (distrito_id,nombre,canton_id) values (501001,'Liberia',501);
insert into distrito (distrito_id,nombre,canton_id) values (501002,'Cañas Dulces',501);
insert into distrito (distrito_id,nombre,canton_id) values (501003,'Mayorga',501);
insert into distrito (distrito_id,nombre,canton_id) values (501004,'Nacascolo',501);
insert into distrito (distrito_id,nombre,canton_id) values (501005,'Curubandé',501);
insert into distrito (distrito_id,nombre,canton_id) values (502006,'Nicoya',502);
insert into distrito (distrito_id,nombre,canton_id) values (502007,'Mansión',502);
insert into distrito (distrito_id,nombre,canton_id) values (502008,'San Antonio',502);
insert into distrito (distrito_id,nombre,canton_id) values (502009,'Quebrada Honda',502);
insert into distrito (distrito_id,nombre,canton_id) values (502010,'Sámara',502);
insert into distrito (distrito_id,nombre,canton_id) values (502011,'Nosara',502);
insert into distrito (distrito_id,nombre,canton_id) values (502012,'Belén de Nosarita',502);
insert into distrito (distrito_id,nombre,canton_id) values (503013,'Santa Cruz',503);
insert into distrito (distrito_id,nombre,canton_id) values (503014,'Bolsón',503);
insert into distrito (distrito_id,nombre,canton_id) values (503015,'Veintisiete de Abril',503);
insert into distrito (distrito_id,nombre,canton_id) values (503016,'Tempate',503);
insert into distrito (distrito_id,nombre,canton_id) values (503017,'Cartagena',503);
insert into distrito (distrito_id,nombre,canton_id) values (503018,'Cuajiniquil',503);
insert into distrito (distrito_id,nombre,canton_id) values (503019,'Diriá',503);
insert into distrito (distrito_id,nombre,canton_id) values (503020,'Cabo Velas',503);
insert into distrito (distrito_id,nombre,canton_id) values (503021,'Tamarindo',503);
insert into distrito (distrito_id,nombre,canton_id) values (504022,'Bagaces',504);
insert into distrito (distrito_id,nombre,canton_id) values (504023,'La Fortuna',504);
insert into distrito (distrito_id,nombre,canton_id) values (504024,'Mogote',504);
insert into distrito (distrito_id,nombre,canton_id) values (504025,'Río Naranjo',504);
insert into distrito (distrito_id,nombre,canton_id) values (505026,'Filadelfia',505);
insert into distrito (distrito_id,nombre,canton_id) values (505027,'Palmira',505);
insert into distrito (distrito_id,nombre,canton_id) values (505028,'Sardinal',505);
insert into distrito (distrito_id,nombre,canton_id) values (505029,'Belén',505);
insert into distrito (distrito_id,nombre,canton_id) values (506030,'Cañas',506);
insert into distrito (distrito_id,nombre,canton_id) values (506031,'Palmira',506);
insert into distrito (distrito_id,nombre,canton_id) values (506032,'San Miguel',506);
insert into distrito (distrito_id,nombre,canton_id) values (506033,'Bebedero',506);
insert into distrito (distrito_id,nombre,canton_id) values (506034,'Porozal',506);
insert into distrito (distrito_id,nombre,canton_id) values (507035,'Las Juntas',507);
insert into distrito (distrito_id,nombre,canton_id) values (507036,'Sierra',507);
insert into distrito (distrito_id,nombre,canton_id) values (507037,'San Juan',507);
insert into distrito (distrito_id,nombre,canton_id) values (507038,'Colorado',507);
insert into distrito (distrito_id,nombre,canton_id) values (508039,'Tilarán',508);
insert into distrito (distrito_id,nombre,canton_id) values (508040,'Quebrada Grande',508);
insert into distrito (distrito_id,nombre,canton_id) values (508041,'Tronadora',508);
insert into distrito (distrito_id,nombre,canton_id) values (508042,'Santa Rosa',508);
insert into distrito (distrito_id,nombre,canton_id) values (508043,'Líbano',508);
insert into distrito (distrito_id,nombre,canton_id) values (508044,'Tierras Morenas',508);
insert into distrito (distrito_id,nombre,canton_id) values (508045,'Arenal',508);
insert into distrito (distrito_id,nombre,canton_id) values (509046,'Carmona',509);
insert into distrito (distrito_id,nombre,canton_id) values (509047,'Santa Rita',509);
insert into distrito (distrito_id,nombre,canton_id) values (509048,'Zapotal',509);
insert into distrito (distrito_id,nombre,canton_id) values (509049,'San Pablo',509);
insert into distrito (distrito_id,nombre,canton_id) values (509050,'Porvenir',509);
insert into distrito (distrito_id,nombre,canton_id) values (509051,'Bejuco',509);
insert into distrito (distrito_id,nombre,canton_id) values (510052,'La Cruz',510);
insert into distrito (distrito_id,nombre,canton_id) values (510053,'Santa Cecilia',510);
insert into distrito (distrito_id,nombre,canton_id) values (510054,'La Garita',510);
insert into distrito (distrito_id,nombre,canton_id) values (510055,'Santa Elena',510);
insert into distrito (distrito_id,nombre,canton_id) values (511056,'Hojancha',511);
insert into distrito (distrito_id,nombre,canton_id) values (511057,'Monte Romo',511);
insert into distrito (distrito_id,nombre,canton_id) values (511058,'Puerto Carrillo',511);
insert into distrito (distrito_id,nombre,canton_id) values (511059,'Huacas',511);
insert into distrito (distrito_id,nombre,canton_id) values (511060,'Matambú',511);
insert into distrito (distrito_id,nombre,canton_id) values (601001,'Limón',601);
insert into distrito (distrito_id,nombre,canton_id) values (601002,'Valle La Estrella',601);
insert into distrito (distrito_id,nombre,canton_id) values (601003,'Río Blanco',601);
insert into distrito (distrito_id,nombre,canton_id) values (601004,'Matama',601);
insert into distrito (distrito_id,nombre,canton_id) values (602005,'Guápiles',602);
insert into distrito (distrito_id,nombre,canton_id) values (602006,'Jiménez',602);
insert into distrito (distrito_id,nombre,canton_id) values (602007,'La Rita',602);
insert into distrito (distrito_id,nombre,canton_id) values (602008,'Roxana',602);
insert into distrito (distrito_id,nombre,canton_id) values (602009,'Cariari',602);
insert into distrito (distrito_id,nombre,canton_id) values (602010,'Colorado',602);
insert into distrito (distrito_id,nombre,canton_id) values (602011,'La Colonia',602);
insert into distrito (distrito_id,nombre,canton_id) values (603012,'Siquirres',603);
insert into distrito (distrito_id,nombre,canton_id) values (603013,'Pacuarito',603);
insert into distrito (distrito_id,nombre,canton_id) values (603014,'Florida',603);
insert into distrito (distrito_id,nombre,canton_id) values (603015,'Germania',603);
insert into distrito (distrito_id,nombre,canton_id) values (603016,'Cairo',603);
insert into distrito (distrito_id,nombre,canton_id) values (603017,'Alegría',603);
insert into distrito (distrito_id,nombre,canton_id) values (604018,'Bratsi',604);
insert into distrito (distrito_id,nombre,canton_id) values (604019,'Sixaola',604);
insert into distrito (distrito_id,nombre,canton_id) values (604020,'Cahuita',604);
insert into distrito (distrito_id,nombre,canton_id) values (604021,'Telire',604);
insert into distrito (distrito_id,nombre,canton_id) values (605022,'Matina',605);
insert into distrito (distrito_id,nombre,canton_id) values (605023,'Batán',605);
insert into distrito (distrito_id,nombre,canton_id) values (605024,'Carrandi',605);
insert into distrito (distrito_id,nombre,canton_id) values (606025,'Guácimo',606);
insert into distrito (distrito_id,nombre,canton_id) values (606026,'Mercedes',606);
insert into distrito (distrito_id,nombre,canton_id) values (606027,'Pocora',606);
insert into distrito (distrito_id,nombre,canton_id) values (606028,'Río Jiménez',606);
insert into distrito (distrito_id,nombre,canton_id) values (606029,'Duacarí',606);
insert into distrito (distrito_id,nombre,canton_id) values (701001,'Puntarenas',701);
insert into distrito (distrito_id,nombre,canton_id) values (701002,'Pitahaya',701);
insert into distrito (distrito_id,nombre,canton_id) values (701003,'Chomes',701);
insert into distrito (distrito_id,nombre,canton_id) values (701004,'Lepanto',701);
insert into distrito (distrito_id,nombre,canton_id) values (701005,'Paquera',701);
insert into distrito (distrito_id,nombre,canton_id) values (701006,'Manzanillo',701);
insert into distrito (distrito_id,nombre,canton_id) values (701007,'Guacimal',701);
insert into distrito (distrito_id,nombre,canton_id) values (701008,'Barranca',701);
insert into distrito (distrito_id,nombre,canton_id) values (701009,'Monteverde',701);
insert into distrito (distrito_id,nombre,canton_id) values (701010,'Isla del Coco',701);
insert into distrito (distrito_id,nombre,canton_id) values (701011,'Cóbano',701);
insert into distrito (distrito_id,nombre,canton_id) values (701012,'Chacarita',701);
insert into distrito (distrito_id,nombre,canton_id) values (701013,'Chira',701);
insert into distrito (distrito_id,nombre,canton_id) values (701014,'Acapulco',701);
insert into distrito (distrito_id,nombre,canton_id) values (701015,'El Roble',701);
insert into distrito (distrito_id,nombre,canton_id) values (701016,'Arancibia',701);
insert into distrito (distrito_id,nombre,canton_id) values (702017,'Espíritu Santo',702);
insert into distrito (distrito_id,nombre,canton_id) values (702018,'San Juan Grande',702);
insert into distrito (distrito_id,nombre,canton_id) values (702019,'Macacona',702);
insert into distrito (distrito_id,nombre,canton_id) values (702020,'San Rafael',702);
insert into distrito (distrito_id,nombre,canton_id) values (702021,'San Jerónimo',702);
insert into distrito (distrito_id,nombre,canton_id) values (702022,'Caldera',702);
insert into distrito (distrito_id,nombre,canton_id) values (703023,'Buenos Aires',703);
insert into distrito (distrito_id,nombre,canton_id) values (703024,'Volcán',703);
insert into distrito (distrito_id,nombre,canton_id) values (703025,'Potrero Grande',703);
insert into distrito (distrito_id,nombre,canton_id) values (703026,'Boruca',703);
insert into distrito (distrito_id,nombre,canton_id) values (703027,'Pilas',703);
insert into distrito (distrito_id,nombre,canton_id) values (703028,'Colinas',703);
insert into distrito (distrito_id,nombre,canton_id) values (703029,'Chánguena',703);
insert into distrito (distrito_id,nombre,canton_id) values (703030,'Biolley',703);
insert into distrito (distrito_id,nombre,canton_id) values (703031,'Brunka',703);
insert into distrito (distrito_id,nombre,canton_id) values (704032,'Miramar',704);
insert into distrito (distrito_id,nombre,canton_id) values (704033,'La Unión',704);
insert into distrito (distrito_id,nombre,canton_id) values (704034,'San Isidro',704);
insert into distrito (distrito_id,nombre,canton_id) values (705035,'Ciudad Cortés',705);
insert into distrito (distrito_id,nombre,canton_id) values (705036,'Palmar',705);
insert into distrito (distrito_id,nombre,canton_id) values (705037,'Sierpe',705);
insert into distrito (distrito_id,nombre,canton_id) values (705038,'Bahía Ballena',705);
insert into distrito (distrito_id,nombre,canton_id) values (705039,'Piedras Blancas',705);
insert into distrito (distrito_id,nombre,canton_id) values (705040,'Bahía Drake',705);
insert into distrito (distrito_id,nombre,canton_id) values (706041,'Quepos',706);
insert into distrito (distrito_id,nombre,canton_id) values (706042,'Savegre',706);
insert into distrito (distrito_id,nombre,canton_id) values (706043,'Naranjito',706);
insert into distrito (distrito_id,nombre,canton_id) values (707044,'Golfito',707);
insert into distrito (distrito_id,nombre,canton_id) values (707045,'Puerto Jiménez',707);
insert into distrito (distrito_id,nombre,canton_id) values (707046,'Guaycará',707);
insert into distrito (distrito_id,nombre,canton_id) values (707047,'Pavón',707);
insert into distrito (distrito_id,nombre,canton_id) values (708048,'San Vito',708);
insert into distrito (distrito_id,nombre,canton_id) values (708049,'Sabalito',708);
insert into distrito (distrito_id,nombre,canton_id) values (708050,'Aguabuena',708);
insert into distrito (distrito_id,nombre,canton_id) values (708051,'Limoncito',708);
insert into distrito (distrito_id,nombre,canton_id) values (708052,'Pittier',708);
insert into distrito (distrito_id,nombre,canton_id) values (708053,'Gutiérrez Brown',708);
insert into distrito (distrito_id,nombre,canton_id) values (709054,'Parrita',709);
insert into distrito (distrito_id,nombre,canton_id) values (710055,'Corredor',710);
insert into distrito (distrito_id,nombre,canton_id) values (710056,'La Cuesta',710);
insert into distrito (distrito_id,nombre,canton_id) values (710057,'Paso Canoas',710);
insert into distrito (distrito_id,nombre,canton_id) values (710058,'Laurel',710);
insert into distrito (distrito_id,nombre,canton_id) values (711059,'Jacó',711);
insert into distrito (distrito_id,nombre,canton_id) values (711060,'Tárcoles',711);
alter table distrito enable keys;
alter table distrito auto_increment = 800000;

alter table periodo disable keys;
insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (1, '2015-1', 1, 2015,STR_TO_DATE('01/01/2015', '%d/%m/%Y'),STR_TO_DATE('30/06/2015', '%d/%m/%Y'),STR_TO_DATE('30/06/2015', '%d/%m/%Y'));
insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (2, '2015-2', 2, 2015,STR_TO_DATE('01/07/2015', '%d/%m/%Y'),STR_TO_DATE('30/12/2015', '%d/%m/%Y'),STR_TO_DATE('30/12/2015', '%d/%m/%Y'));

insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (3, '2016-1', 1, 2016,STR_TO_DATE('01/01/2016', '%d/%m/%Y'),STR_TO_DATE('30/06/2016', '%d/%m/%Y'),STR_TO_DATE('30/06/2016', '%d/%m/%Y'));
insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (4, '2016-2', 2, 2016,STR_TO_DATE('01/07/2016', '%d/%m/%Y'),STR_TO_DATE('30/12/2016', '%d/%m/%Y'),STR_TO_DATE('30/12/2016', '%d/%m/%Y'));

insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (5, '2017-1', 1, 2017,STR_TO_DATE('01/01/2017', '%d/%m/%Y'),STR_TO_DATE('30/06/2017', '%d/%m/%Y'),STR_TO_DATE('30/06/2017', '%d/%m/%Y'));
insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (6, '2017-2', 2, 2017,STR_TO_DATE('01/07/2017', '%d/%m/%Y'),STR_TO_DATE('30/12/2017', '%d/%m/%Y'),STR_TO_DATE('30/12/2017', '%d/%m/%Y'));

insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (7, '2018-1', 1, 2018,STR_TO_DATE('01/01/2018', '%d/%m/%Y'),STR_TO_DATE('30/06/2018', '%d/%m/%Y'),STR_TO_DATE('30/06/2018', '%d/%m/%Y'));
insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (8, '2018-2', 2, 2018,STR_TO_DATE('01/07/2018', '%d/%m/%Y'),STR_TO_DATE('30/12/2018', '%d/%m/%Y'),STR_TO_DATE('30/12/2018', '%d/%m/%Y'));

insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (9, '2019-1', 1, 2019,STR_TO_DATE('01/01/2019', '%d/%m/%Y'),STR_TO_DATE('30/06/2019', '%d/%m/%Y'),STR_TO_DATE('30/06/2019', '%d/%m/%Y'));
insert into periodo 
  (periodo_id, nombre, semestre, anno, fecha_inicio, fecha_final, fecha_recepcion_docs)
 values
  (10, '2019-2', 2, 2019,STR_TO_DATE('01/07/2019', '%d/%m/%Y'),STR_TO_DATE('30/12/2019', '%d/%m/%Y'),STR_TO_DATE('30/12/2019', '%d/%m/%Y'));
alter table periodo enable keys;
alter table periodo auto_increment = 11;

alter table proyecto_estado disable keys;
insert into proyecto_estado (proyecto_estado_id,nombre) values (100,'Inicio');
insert into proyecto_estado (proyecto_estado_id,nombre) values (200,'En proceso');
insert into proyecto_estado (proyecto_estado_id,nombre) values (300,'Finalizado');
alter table proyecto_estado enable keys;
alter table proyecto_estado auto_increment = 400;

alter table sede disable keys;
insert into sede 
  (sede_id,   nombre,   abreviatura)
values
  (100,   'Sede San Pedro',   'SP');
insert into sede 
  (sede_id,   nombre,   abreviatura)
values
  (200,   'Sede de Occidente',   'SO');
insert into sede 
  (sede_id,   nombre,   abreviatura)
values
  (300,   'Sede Interuniversitaria de Alajuela',   'SIA');
alter table sede enable keys;
alter table sede auto_increment = 400;

alter table grado_academico disable keys;
insert into grado_academico 
(grado_academico_id, nombre, escala, abreviatura_femenina, abreviatura_masculino)
value
(100, 'Bachillerato Universitario', 0, 'Bach.', 'Bach.');
insert into grado_academico 
(grado_academico_id, nombre, escala, abreviatura_femenina, abreviatura_masculino)
value
(200, 'Licenciatura Universitaria', 10, 'Licda.', 'Lic.');
insert into grado_academico 
(grado_academico_id, nombre, escala, abreviatura_femenina, abreviatura_masculino)
value
(201, 'Ingeniero', 11, 'Inga.', 'Ing.');
insert into grado_academico 
(grado_academico_id, nombre, escala, abreviatura_femenina, abreviatura_masculino)
value
(300, 'Magister', 20, 'Mag.', 'Mag.');
insert into grado_academico 
(grado_academico_id, nombre, escala, abreviatura_femenina, abreviatura_masculino)
value
(400, 'Doctorado', 30, 'Dra.', 'Dr.');
alter table grado_academico enable keys;
alter table grado_academico auto_increment = 800;

alter table area_tematica disable keys;
insert into area_tematica (area_tematica_id, nombre) value (0, 'No determinado');
alter table area_tematica enable keys;
alter table area_tematica auto_increment = 100;

alter table institucion_academica disable keys;
insert into institucion_academica
 (institucion_academica_id,nombre,pais_id) 
values
 (100,'Universidad de Costa Rica',188);
insert into institucion_academica
 (institucion_academica_id,nombre,pais_id) 
values
 (101,'Universidad Nacional',188);
insert into institucion_academica
 (institucion_academica_id,nombre,pais_id) 
values
 (102,'Instituto Tecnológico de Costa Rica',188);
alter table institucion_academica enable keys;
alter table institucion_academica auto_increment = 1000;


alter table role_proyecto disable keys;
insert into role_proyecto (role_proyecto_id, nombre) values (100, 'Director de proyecto');
alter table role_proyecto enable keys;
alter table role_proyecto auto_increment = 1000;
