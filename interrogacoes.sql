DELIMITER $$
CREATE PROCEDURE totalPeso ()
BEGIN
	SELECT SUM(peso) AS total
		FROM Uva;
END $$

DROP PROCEDURE totalPeso;
CALL totalPeso();


delimiter $$
CREATE PROCEDURE totalQuantidade2022 ()
BEGIN
	SELECT SUM(quantidade) AS totalQuantidade
		FROM Vinho
    WHERE AnoProducao = 2010;    
END
$$

delimiter $$
CREATE PROCEDURE todosResponsaveis ()
BEGIN
	SELECT nome AS todosResponsaveis
		FROM Responsavel;
END
$$