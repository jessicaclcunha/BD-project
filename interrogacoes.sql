-- Peso total de uvas no sistema
	SELECT SUM(peso) AS total
		FROM Uva;


-- Quantidade total de vinho no sistema
	SELECT SUM(quantidade) AS totalQuantidade
		FROM Vinho; 



-- Identificador da quinta com mais vinho, em quantidade, hL
	SELECT Quinta.id AS total
		FROM Quinta
        JOIN Vinho ON Vinho.id = Quinta.Vinho_id
        GROUP BY Quinta.id
        ORDER BY SUM(Vinho.quantidade) DESC
        LIMIT 1;

-- Seleciona o vinho com maior quantidade em hL
	SELECT Vinho.nome
		FROM Vinho
        GROUP BY Vinho.nome
        ORDER BY sum(Vinho.quantidade) DESC
        LIMIT 1;



-- Zona com mais uvas, em peso
	SELECT Zona.*
		FROM Zona
        JOIN Quinta ON Quinta.Zona_codigoGeo = Zona.codigoGeo
        JOIN Uva ON Quinta.Uva_id = Uva.id 
        GROUP BY Zona.codigoGeo
        ORDER BY sum(Uva.peso) DESC
        LIMIT 1;


-- Retorna o responsavel da quinta de maior dimensao
	SELECT Responsavel.nome
		FROM Responsavel
        JOIN Quinta ON Quinta.Responsavel_nome = Responsavel.nome
        GROUP BY Responsavel.nome
        ORDER BY sum(Quinta.dimensao) DESC
        LIMIT 1;
