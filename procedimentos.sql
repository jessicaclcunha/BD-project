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

delimiter $$
CREATE PROCEDURE totalPesoUvasAno (Ano INT)
BEGIN
	SELECT SUM(Uva.peso) AS total
		FROM Quinta
        JOIN Uva ON Uva.id = Quinta.Uva_id
        JOIN Vinho ON Quinta.Vinho_id
		WHERE Vinho.anoProducao = Ano
        GROUP BY Uva.id
        ORDER BY SUM(Uva.peso) DESC
        LIMIT 1;
END
$$

DROP PROCEDURE totalPesoUvasAno;
CALL totalPesoUvasAno(2021);

delimiter $$
CREATE PROCEDURE obterVinhosPorRegiao (Regiao INT UNSIGNED)
BEGIN
	SELECT Vinho.*
		FROM Quinta
        JOIN Zona ON Zona.codigoGeo = Quinta.Zona_codigoGeo
        JOIN Vinho On Quinta.Vinho_id = Vinho.id
        WHERE Zona.codigoGeo = Regiao;
END
$$

DROP PROCEDURE obterVinhosPorRegiao;
CALL obterVinhosPorRegiao(1234567);

delimiter $$
CREATE PROCEDURE ZonasComMaisQuintas()
BEGIN
    SELECT Zona.*, TabelaContagem.ContagemQuintas AS NumeroQuintas
    FROM Zona
    JOIN (
        SELECT Quinta.Zona_codigoGeo, COUNT(Quinta.id) AS ContagemQuintas
        FROM Quinta
        GROUP BY Quinta.Zona_codigoGeo
        HAVING COUNT(Quinta.id) = (
            SELECT MAX(ContagemQuintas)
            FROM (
                SELECT COUNT(Quinta.id) AS ContagemQuintas
                FROM Quinta
                GROUP BY Quinta.Zona_codigoGeo
            ) AS TabelaContagem
        )
    ) AS TabelaContagem ON TabelaContagem.Zona_codigoGeo = Zona.codigoGeo
    LIMIT 3;
END
$$


DROP PROCEDURE ZonasComMaisQuintas;
CALL ZonasComMaisQuintas ();
