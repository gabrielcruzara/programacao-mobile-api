CREATE TABLE `info_tela` (
`id` INT(11) NOT NULL AUTO_INCREMENT,
`nome_tela` VARCHAR(30),
`criador` VARCHAR(100),
`data` DATETIME(3),
PRIMARY KEY (`id`)
);

CREATE TABLE `tela` (
`id` INT(11) NOT NULL AUTO_INCREMENT,
`rpm` INT(100),
`velocidade` INT(100),
`pre_oleo` DOUBLE(15,2),
`temp` INT(15),
`imagem` VARCHAR(400),
`id_tela` INT(15),
PRIMARY KEY (`id`),
  CONSTRAINT `FK_info_tela_tela`
  FOREIGN KEY (`id_tela`) REFERENCES `info_tela` (`id`) 
);

INSERT INTO meuqueridobanco1.info_tela
(nome_tela, criador, `data`)
VALUES('tela 1', 'GPDash', '2021-05-12');

INSERT INTO meuqueridobanco1.info_tela
(nome_tela, criador, `data`)
VALUES('tela 2', 'GPDash', '2020-02-24');

INSERT INTO meuqueridobanco1.info_tela
(nome_tela, criador, `data`)
VALUES('tela 3', 'GPDash', '2021-10-16');

SELECT * FROM info_tela 

INSERT INTO meuqueridobanco1.tela
(rpm, velocidade, pre_oleo, temp, imagem, id_tela)
VALUES(800, 0, 10.2, 45,'\imagens\TELA1RPM.jpg', 1)

INSERT INTO meuqueridobanco1.tela
(rpm, velocidade, pre_oleo, temp, imagem, id_tela)
VALUES(900, 10, 16.3, 50, '\imagens\TELA1RPM.jpg',  2);

INSERT INTO meuqueridobanco1.tela
(rpm, velocidade, pre_oleo, temp, imagem, id_tela)
VALUES(750, 5, 12.4, 60,'\imagens\TELA1RPM.jpg',  3);

