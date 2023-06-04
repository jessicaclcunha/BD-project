
	SELECT SUM(peso) AS total
		FROM Uva;


	SELECT SUM(quantidade) AS totalQuantidade
		FROM Vinho; 




	SELECT Quinta.id AS total
		FROM Quinta
        JOIN Vinho ON Vinho.id = Quinta.Vinho_id
        GROUP BY Quinta.id
        ORDER BY SUM(Vinho.quantidade) DESC
        LIMIT 1;


	SELECT Vinho.nome
		FROM Vinho
        GROUP BY Vinho.nome
        ORDER BY sum(Vinho.quantidade) DESC
        LIMIT 1;


	SELECT Zona.*
		FROM Zona
        JOIN Quinta ON Quinta.Zona_codigoGeo = Zona.codigoGeo
        JOIN Uva ON Quinta.Uva_id = Uva.id 
        GROUP BY Zona.codigoGeo
        ORDER BY sum(Uva.peso) DESC
        LIMIT 1;


	SELECT Responsavel.nome
		FROM Responsavel
        JOIN Quinta ON Quinta.Responsavel_nome = Responsavel.nome
        GROUP BY Responsavel.nome
        ORDER BY sum(Quinta.dimensao) DESC
        LIMIT 1;