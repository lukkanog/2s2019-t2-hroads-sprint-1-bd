USE SENAI_HROADS_MANHA;

/* 06 */
SELECT * FROM Personagens;

/* 07 */
SELECT * FROM Classes;

/* 08 */
SELECT Nome FROM Classes;

/* 09 */
SELECT * FROM Habilidades;

/* 10 */
SELECT COUNT(*) FROM Habilidades;

/* 11 */
SELECT IdHabilidade FROM Habilidades
	ORDER BY IdHabilidade ASC;

/* 12 */
SELECT * FROM TiposHabilidades;

/* 13 */
SELECT H.*,TH.*
	FROM Habilidades H
	INNER JOIN TiposHabilidades TH
	ON H.IdHabilidade = TH.IdTipoHabilidade;

/* 14 */
SELECT P.*,C.*
	FROM Personagens P
	INNER JOIN Classes C
	ON P.IdClasse = C.IdClasse;


/* 15 */
SELECT P.*,C.*
	FROM Personagens P
	FULL JOIN Classes C
	ON P.IdClasse = C.IdClasse;

/* 16 */
SELECT	C.*,H.*
	FROM Classes C
	LEFT JOIN HabilidadesClasses HC
	ON HC.IdClasse = C.IdClasse
	LEFT JOIN Habilidades H
	ON HC.IdHabilidade = H.IdHabilidade

/* 17 */
SELECT H.*,C.*
	FROM Habilidades H
	INNER JOIN HabilidadesClasses HC
	ON HC.IdHabilidade = H.IdHabilidade
	INNER JOIN Classes C
	ON HC.IdClasse = C.IdClasse;

/* 18 */
SELECT H.*,C.*
	FROM Habilidades H
	FULL JOIN HabilidadesClasses HC
	ON HC.IdHabilidade = H.IdHabilidade
	FULL JOIN Classes C
	ON HC.IdClasse = C.IdClasse;
