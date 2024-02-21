# Documentação do Aplicativo Flask com Execução de Script VBS

# Visão Geral
Este aplicativo Flask é projetado para executar um script VBS (Visual Basic Script) quando uma solicitação é feita para a rota raiz ("/") e, em seguida, retorna o conteúdo de um arquivo de saída gerado pelo script VBS em formato JSON. Se o arquivo de saída não for encontrado, ele retorna uma mensagem de erro.

# Requisitos
Python 3.x instalado
Biblioteca Flask instalada (**pip install Flask**)

# Estrutura do Projeto
* **app.py**: O arquivo principal do aplicativo Flask.
* **script.vbs**: O script VBS que será executado para gerar o arquivo de saída.
* **output.txt**: O arquivo de saída que conterá o resultado da execução do script VBS.

# Como Executar
Certifique-se de ter todos os requisitos listados acima instalados.
Execute o arquivo **app.py**.
O servidor Flask será iniciado e estará ouvindo em http://localhost:5000/ por padrão.

# Roteamento de URL
* **GET '/'**: Esta rota é usada para acionar a execução do script VBS. Quando acessada, o script VBS é executado, e o conteúdo do arquivo de saída é retornado em formato JSON.
