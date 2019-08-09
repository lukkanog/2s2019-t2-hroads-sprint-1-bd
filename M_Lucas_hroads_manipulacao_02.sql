USE SENAI_HROADS_MANHA;

/* 03 */
INSERT INTO Classes (Nome)
	VALUES ('Barbaro'),('Cruzado'),('CacadoraDeDemonios'),('Monge'),('Necromante'),('Feiticeiro'),('Arcanista');

INSERT INTO TiposHabilidades (Nome)
	VALUES ('Ataque'),('Defesa'),('Cura');

INSERT INTO Habilidades (IdTipoHabilidade,Nome)
	VALUES (1,'LancaMortal'),(2,'EscudoSupremo	'),(3,'RecuperarVida');

INSERT INTO HabilidadesClasses (IdClasse,IdHabilidade)
	VALUES (6,1),(6,2),(7,2),(8,1),(9,2),(9,3),(11,3);

INSERT INTO Personagens (IdClasse,Nome,MaxVida,MaxMana,DataAtualizacao,DataCriacao)
	VALUES	(6,'DeuBug',100,80,GETDATE(),'2019-01-18T10:30:00')
			,(9,'BitBug',70,100,GETDATE(),'2016-03-17T10:30:00')
			,(12,'Fer8',75,60,GETDATE(),'2018-03-18T10:30:00')


/* 04 */
UPDATE Personagens
	SET Nome = 'Fer7'
	WHERE IdPersonagem = 3;

/* 05 */
UPDATE Classes
	SET Nome = 'Necromancer'
	WHERE IdClasse = 10;


