DELIMITER $$
CREATE PROCEDURE totalPeso ()
BEGIN
	SELECT SUM(peso) AS total
		FROM Uva;
END 
$$

DROP PROCEDURE totalPeso;
CALL totalPeso();


delimiter $$
CREATE PROCEDURE totalQuantidadeAno (Ano INT)
BEGIN
	SELECT SUM(quantidade) AS totalQuantidade
		FROM Vinho
    WHERE AnoProducao = Ano;    
END
$$

DROP PROCEDURE totalQuantidadeAno;
CALL totalQuantidadeAno (2021);

DELIMITER $$
CREATE PROCEDURE totalQuantidade ()
BEGIN
	SELECT SUM(quantidade) AS total
		FROM Vinho;
END $$

DELIMITER $$
CREATE PROCEDURE melhorQuinta ()
BEGIN
	SELECT id AS total
		FROM Quinta
        JOIN Vinho ON Vinho.id = Quinta.Vinho_id
        GROUP BY id
        ORDER BY SUM(Vinho.quantidade) DESC
        LIMIT 1;
END 
$$

DELIMITER $$
CREATE PROCEDURE vinhoMaisProduzido ()
BEGIN
	SELECT Vinho.nome
		FROM Vinho
        GROUP BY Vinho.nome
        ORDER BY sum(Vinho.quantidade) DESC
        LIMIT 1;
END 
$$

DELIMITER $$
CREATE PROCEDURE zonaMaisProducao ()
BEGIN
	SELECT Zona.codigoGeo
		FROM Zona
        JOIN Quinta ON Quinta.Zona_codigoGeo = Zona.codigoGeo
        JOIN Uva ON Quinta.Uva_id = Uva.id 
        GROUP BY Zona.nome
        ORDER BY sum(Uva.quantidade) DESC
        LIMIT 1;
END 
$$

DELIMITER $$
CREATE PROCEDURE ResponsavelMaiorQuinta ()
BEGIN
	SELECT Responsavel.nome
		FROM Responsavel
        JOIN Quinta ON Quinta.Responsavel_nome = Responsavel.nome
        GROUP BY Responsavel.nome
        ORDER BY sum(Quinta.dimensao) DESC
        LIMIT 1;
END 
$$