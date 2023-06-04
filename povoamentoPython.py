#!/usr/bin/python3

import mysql.connector

try:
    connection = mysql.connector.connect(host='127.0.0.1',
                                         database='Vinha',
                                         user='root',
                                         password='Passe1234.')


    sql= """INSERT INTO Uva
	(id, cor, sabor, existeGrainha, acucar, acidez, peso)
	VALUES 
		(5, 'Rosé',  'Levemente Ácido', 's', 1.1, 'Leve', 24101),
        (7, 'Tinta', 'Adocicado'      , 's', 1.0, 'Moderada', 19817) """
    
    cursor = connection.cursor()
    result = cursor.execute(sql)
    connection.commit()
    print("Dados inseridos com sucesso!")


except mysql.connector.Error as error:
    print("Failed to insert into table in MySQL: {}".format(error))
finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")