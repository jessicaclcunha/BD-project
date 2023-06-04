import csv
import mysql.connector

# Função para inserir os valores na tabela
def insert_into_table(cursor, table_name, values):
    columns = {
        'Uva': ['id', 'cor', 'sabor', 'existeGrainha', 'acucar', 'acidez', 'peso'],
        'Vinho': ['id' ,'acidez', 'pH', 'grau', 'aroma', 'sabor', 'recomendacoes', 'anoProducao', 'nome', 'teorAlcoolico', 'quantidade', 'preco', 'uva_id'],
        'Quinta': ['id', 'dimensao', 'Zona_codigoGeo', 'Vinho_id', 'Responsavel_nome', 'Uva_id'],
        'Zona': ['codigoGeo', 'nome'],
        'Responsavel': ['nome'],
        'Telemovel': ['telemovel', 'responsavel'],
        'eMail': ['eMail', 'responsavel']
    }

    placeholders = ', '.join(['%s'] * len(columns[table_name]))
    query = f"INSERT INTO {table_name} ({', '.join(columns[table_name])}) VALUES ({placeholders})"
    cursor.execute(query, values[:len(columns[table_name])])

# Função para processar o arquivo CSV
def process_csv_file(cursor, csv_file):
    with open(csv_file, 'r', encoding='utf-8-sig') as file:  # Adicionado o parâmetro encoding='utf-8-sig'
        reader = csv.reader(file, delimiter=';')
        for row in reader:
            table_name, *values = row
            insert_into_table(cursor, table_name, values)

# Estabelecer a conexão com o banco de dados
try:
    connection = mysql.connector.connect(
        host='127.0.0.1',
        database='Vinha',
        user='root',
        password='Passe1234.'
    )

    cursor = connection.cursor()

    # Especificar o caminho para o arquivo CSV
    csv_file = 'ficheiroCSV.csv'

    # Processar o arquivo CSV
    process_csv_file(cursor, csv_file)

    # Confirmar as alterações no banco de dados
    connection.commit()
    print("Dados inseridos com sucesso!")

except mysql.connector.Error as error:
    print("Failed to insert data into table in MySQL:", error)

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed")
