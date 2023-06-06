CREATE VIEW viewQuinta AS
SELECT id, dimensao, Zona_codigoGEO, Vinho_id, Responsavel_nome, Uva_id
FROM Quinta;

SELECT * FROM viewQuinta;

CREATE VIEW viewResponsaveis AS
 SELECT Responsavel.nome, Quinta.id
 FROM Responsavel
 JOIN Quinta ON Responsavel.nome = Quinta.Responsavel_nome
 ORDER BY Quinta.id;
 
 SELECT * FROM viewResponsaveis;
