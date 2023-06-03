delimiter $$
CREATE PROCEDURE totalPeso1 ()
BEGIN
	SELECT SUM(peso) AS totalpeso 
		FROM Uva;
END
$$


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