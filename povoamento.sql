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

USE Vinha ;

--
-- Permissão para fazer operações de remoção de dados.
SET SQL_SAFE_UPDATES = 0;

INSERT INTO Uva
	(id, cor, sabor, existeGrainha, acucar, acidez, peso)
	VALUES 
		(1, 'rosada', 'doce', 's', 0.8, 'pouco ácido', 237464.13),
        (2, 'branco', 'cítrico', 's', '0.9', 'moderado', 23827)
	;

DELETE FROM Uva
	WHERE id = 1 AND id = 2 AND id = 3;
-- SELECT * FROM Uva;

INSERT INTO Vinho
    (id, acidez, pH, grau, aroma, sabor, recomendacoes, anoProducao, nome, teorAlcoolico, quantidade, preco, Uva_id)
    VALUES
        (1, 'Pouco ácido', 3.5, 10.1, 'frutado', 'frutado', 'Bom acompanhado com um cozido à Portuguesa', 2010, 'Coração da minha Terra', 12.2, 273845.6, 12.38, 1),
        (2, 'Moderado', 3.4, 13, 'perfumado', 'cítrico', 'Boa combinação com uma tábua de queijos', 2021, 'Bacalhoa Chardonnay', 13.5, 745893, 37.34, 2)
    ;
    
-- DELETE FROM Vinho;
-- SELECT * FROM Vinho;

INSERT INTO Zona
    (codigoGeo, nome)
    VALUES
        (1234567, 'Douro'),
        (3248967, 'Alentejo'),
        (8973462, 'Minho'), 
        (3984438, 'Douro'),
        (2746822, 'Algarve'),
        (1289238),
        (5834792),
        (6239294),
        (9182382),
        (4234567)
    ;
    
-- DELETE FROM Zona;
-- SELECT * FROM Zona;

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

-- DELETE FROM Responsavel;
-- SELECT * FROM Responsavel;

INSERT INTO Quinta
    (id, dimensao, Zona_codigoGeo, Vinho_id, Responsavel_nome, Uva_id)
    VALUES
        (1, 234562.34, 1234567, 1, 'Duarte Maria Lima Fino', 1)
    ;

-- DELETE FROM Quinta;
-- SELECT * FROM Quinta;

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

-- DELETE FROM Telemovel;
-- SELECT * FROM Telemovel;

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
    
-- DELETE FROM eMail;
-- SELECT * FROM eMail;