CREATE DATABASE nba;
USE nba;

CREATE TABLE cadastro(
idCadastro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(45),
fkTime INT, FOREIGN KEY (fkTime) REFERENCES times(idTimes)
);

CREATE TABLE times(
idTimes INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
qtdTitulos INT(45)
);

CREATE TABLE rankPessoal(
idRank INT AUTO_INCREMENT,
fkCadastro INT, foreign key(fkCadastro) references cadastro(idCadastro),
fkCampeaoNba int, foreign key(fkCampeaoNba) references times(idTimes),
fkCampeaoOeste int, foreign key(fkCampeaoOeste) references times(idTimes),
fkCampeaoLeste int, foreign key(fkCampeaoLeste) references times(idTimes),
PRIMARY KEY(idRank, fkCadastro)
);

INSERT INTO TIMES VALUES
(null, "Atlanta Hawks", 1),
(null, "Boston Celtics", 17),
(null, "Brooklyn Netss", 0),
(null, "Charlotte Hornets", 0),
(null, "Chicago Bulls", 6),
(null, "Cleveland Cavaliers", 1),
(null, "Dallas Mavericks", 1),
(null, "Denver Nuggets", 0),
(null, "Detroit Pistons", 3),
(null, "Golden State Warriors", 7),
(null, "Houston Rockets", 2),
(null, "Indiana Pacers", 0),
(null, "LA Clippers", 0),
(null, "Los Angeles Lakers", 17),
(null, "Memphis Grizzlies", 0),
(null, "Miami Heat", 3),
(null, "Milwaukee Bucks", 2),
(null, "Minnesota Timberwolves", 0),
(null, "New Orleans Pelicans", 0),
(null, "New York Knicks", 2),
(null, "Oklahoma City Thunder", 1),
(null, "Orlando Magic", 0),
(null, "Philadelphia 76ers", 3),
(null, "Phoenix Suns", 0),
(null, "Portland Trail Blazers", 1),
(null, "Sacramento Kings", 1),
(null, "San Antonio Spurs", 5),
(null, "Toronto Raptors", 1),
(null, "Utah Jazz", 0),
(null, "Washington Wizards", 1);

select * from times order by qtdTitulos;











