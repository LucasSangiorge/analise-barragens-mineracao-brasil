import pandas as pd
import mysql.connector

# conexão
conexao = mysql.connector.connect(
    host="localhost",
    user="root",
    password="901012",
    database="agencia_nacional_mineracao"
)

cursor = conexao.cursor()

# carregar CSV
df = pd.read_csv(
    r"C:\Users\lucas\OneDrive\analise-barragens-mineracao-brasil\dados_brutos\Barragens_tratado.csv",
    encoding="latin1",
    sep=";"
)

print(df.head())