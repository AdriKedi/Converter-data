import re

# Função para converter data no formato YYYY-MM-DD para DD/MM/YYYY
def converter_data(data):
    # Expressão regular para encontrar o padrão de data no formato norte-americano
    padrao = r'(\d{4})-(\d{2})-(\d{2})'
    
    # Utilizando a função sub() para substituir o padrão encontrado pelo formato brasileiro
    data_brasileira = re.sub(padrao, r'\3/\2/\1', data)
    
    return data_brasileira

# Exemplo de uso da função
data_norte_americana = "2022-11-30"
data_brasileira = converter_data(data_norte_americana)
print(data_brasileira)  # Saída: 30/11/2022
