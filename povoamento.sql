-- ------------------------------------------------------
-- ------------------------------------------------------
-- Universidade do Minho
-- Lincenciatura em Engenharia Informática
-- Unidade Curricular de Bases de Dados
-- 
-- Vinha do Ti João
-- Povoamento
-- maio 2023
-- ------------------------------------------------------
-- ------------------------------------------------------
DELETE FROM Quinta;
DELETE FROM Vinho;
DELETE FROM Uva;
DELETE FROM Zona;
DELETE FROM Telemovel;
DELETE FROM eMail;	
DELETE FROM Quinta;
DELETE FROM Responsavel;

USE Vinha ;

-- Permissão para fazer operações de remoção de dados.
SET SQL_SAFE_UPDATES = 0;

INSERT INTO Uva
	(id, cor, sabor, existeGrainha, acucar, acidez, peso)
	VALUES 
		(1, 'rosada', 'doce', 's', 0.8, 'pouco ácido', 237464.13),
        (2, 'branco', 'cítrico', 's', 0.9, 'moderado', 23827.67),
        (3, 'tintas', 'doce', 's', 2.5, 'nada ácido', 13272.23),
        (4, 'tintas', 'doce', 's', 2.5, 'nada ácido', 1212.96),
        (5, 'laranja', 'frutado', 'n', 1.3, 'moderado', 23745.58),
        (6, 'rosada', 'doce', 's', 0.9, 'pouco ácido', 242824.34),
        (7, 'branco', 'fruta madura', 'n', 1.5, 'moderado',9844.12),
        (8, 'laranja', 'frutado', 'n', 1.3, 'moderado', 23428.56),
        (9, 'tintas', 'doce', 's', 2.8, 'nada ácido', 27483.12),
        (10, 'branco', 'fruta madura', 'n', 1.1, 'moderado',63892.32)
	;

DELETE FROM Uva;
SELECT * FROM Uva;

INSERT INTO Vinho
    (id, acidez, pH, grau, aroma, sabor, recomendacoes, anoProducao, nome, teorAlcoolico, quantidade, preco, Uva_id)
    VALUES
        (1, 'pouco ácido', 3.5, 10.1, 'frutado', 'frutado', 'Bom acompanhado com um cozido à Portuguesa', 2010, 'Coração da minha Terra', 12.2, 273845.6, 12.38, 1),
        (2, 'moderado', 3.4, 13, 'perfumado', 'cítrico', 'Boa combinação com uma tábua de queijos', 2021, 'Bacalhoa Chardonnay', 13.5, 745893, 37.34, 2),
        (3, 'moderado', 3.3, 12.5, 'frutado', 'fruta madura', 'Excelente servido com arroz de sarrabulho', 2010, 'Ponte de Lima', 11, 123423, 4.49, 10),
        (4, 'moderado', 3.2, 12.8, 'frutado', 'fruta madura', 'Excelente servido com arroz de sarrabulho', 2019, 'Ponte de Lima', 11.1, 348742, 3.99, 7),
        (5, 'nada acido', 3.2, 12.3, 'doce', 'doce', 'Melhor quando servido com entradas', 2020, 'Palato do Côa Rosé', 12.5, 3232, 2.75, 6),
		(6, 'nada acido', 3.7, 12.2, 'doce', 'doce', 'Melhor quando servido com entradas', 2020, 'Mateus', 12.4, 121723, 4.55, 3),
        (7, 'pouco acido', 3.1, 12.8, 'floral', 'doce', 'Ótima combinação com picanha', 2018, 'Carruades Lafite Rothschild Pauillac', 12.5, 348742, 594, 4),
        (8, 'pouco acido', 3.6, 12.8, 'vegetal', 'doce', 'Ótima combinação com picanha', 2019, 'Carruades Lafite Rothschild Pauillac', 12.5, 348742, 594, 5)
   ;
    
DELETE FROM Vinho;
SELECT * FROM Vinho;

INSERT INTO Zona
    (codigoGeo, nome)
    VALUES
        (1234567, 'Douro'),
        (3248967, 'Alentejo'),
        (8973462, 'Minho'), 
        (3984438, 'Douro'),
        (2746822, 'Algarve'),
        (1289238, 'Minho'),
        (5834792, 'Terras da Beira'),
        (6239294, 'Tejo'),
        (9182382, 'Minho'),
        (4234567, 'Minho')
    ;
    
DELETE FROM Zona;
SELECT * FROM Zona;

INSERT INTO Responsavel
    (nome)
    VALUES
        ('João Manuel da Costa Gonçalves'),
        ('Joana Patrícia Sousa Araújo'),
        ('Ana Patrícia Pereira'),
        ('Margarida Lopes de Sousa'),
        ('Mário de Araújo da Silva'),
        ('Duarte Maria Lima Fino'),
        ('António Rodrigues Mendes'),
        ('Ricardo Faria Lima'),
        ('Agostinho Ferreira da Cunha'),
        ('Vítor Araújo Pereira')
    ;

DELETE FROM Responsavel;
SELECT * FROM Responsavel;

INSERT INTO Quinta
    (id, dimensao, Zona_codigoGeo, Vinho_id, Responsavel_nome, Uva_id)
    VALUES
        (1, 234562.34, 1234567, 1, 'Duarte Maria Lima Fino', 1),
        (2, 2424, 1234567, 2, 'Duarte Maria Lima Fino', 2),
        (3, 137273.56, 9182382, 3, 'Vítor Araújo Pereira',10),
        (4, 27367.84, 4234567, 3,'Agostinho Ferreira da Cunha' , 10),
        (5, 99723.74, 5834792, 8, 'Ricardo Faria Lima' ,5),
        (6, 74853.89, 1289238, 4, 'Joana Patrícia Sousa Araújo', 7), 
        (7, 82674, 3984438, 4, 'Joana Patrícia Sousa Araújo', 7),
        (8, 38473.14, 6239294, 6, 'Margarida Lopes de Sousa', 3),
        (9, 82739.1, 6239294, 7, 'António Rodrigues Mendes' ,4),
        (10, 8347.2, 2746822, 8, 'Margarida Lopes de Sousa' ,5)
    ;

DELETE FROM Quinta;
SELECT * FROM Quinta;

INSERT INTO Telemovel
    (telemovel, responsavel)
    VALUES
        ('912547829', 'João Manuel da Costa Gonçalves'),
        ('934290164', 'Joana Patrícia Sousa Araújo'),
        ('936282647', 'Ana Patrícia Pereira'),
        ('912645273', 'Margarida Lopes de Sousa'),
        ('923658365', 'Mário de Araújo da Silva'),
        ('924627183', 'Duarte Maria Lima Fino'),
        ('938163819','António Rodrigues Mendes'),
        ('912746820', 'Ricardo Faria Lima'),
        ('964892852', 'Agostinho Ferreira da Cunha'),
        ('962919293', 'Vítor Araújo Pereira')
    ;

DELETE FROM Telemovel;
SELECT * FROM Telemovel;

INSERT INTO eMail
    (eMail, responsavel)
    VALUES
        ('jmcg@gmail.com', 'João Manuel da Costa Gonçalves'),
        ('jpsa@gmail.com', 'Joana Patrícia Sousa Araújo'),
        ('app@gmail.com', 'Ana Patrícia Pereira'),
        ('mls@gmail.com', 'Margarida Lopes de Sousa'),
        ('mas@gmail.com', 'Mário de Araújo da Silva'),
        ('dmlf@gmail.com', 'Duarte Maria Lima Fino'),
        ('arm@gmail.com', 'António Rodrigues Mendes'),
        ('rfl@gmail.com', 'Ricardo Faria Lima'),
        ('afc@gmail.com', 'Agostinho Ferreira da Cunha'),
        ('vap@gmail.com', 'Vítor Araújo Pereira')
    ;
    
DELETE FROM eMail;
SELECT * FROM eMail;
