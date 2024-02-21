# Documentação do Aplicativo Flask com Execução de Script VBS

# Visão Geral
Este aplicativo Flask é projetado para executar um script VBS quando uma solicitação é feita para a rota raiz ("/") e, em seguida, retorna o conteúdo de um arquivo de saída gerado pelo script VBS em formato JSON. Se o arquivo de saída não for encontrado, ele retorna uma mensagem de erro.

# Requisitos
Python 3.x instalado
Biblioteca Flask instalada (**pip install Flask**)

# Estrutura do Projeto
* **api.py**: O arquivo principal do aplicativo Flask.
* **script.vbs**: O script VBS que será executado para gerar o arquivo de saída.
* **retorno.txt**: O arquivo de saída que conterá o resultado da execução do script VBS.

# Como Executar
Certifique-se de ter todos os requisitos listados acima instalados.
Execute o arquivo **api.py**.
O servidor Flask será iniciado e estará ouvindo em http://localhost:5000/ por padrão.

# Roteamento de URL
* **GET '/'**: Esta rota é usada para acionar a execução do script VBS. Quando acessada, o script VBS é executado, e o conteúdo do arquivo de saída é retornado em formato JSON.

# Funcionamento
* Quando a rota raiz é acessada (/), o Flask executa o script VBS usando o **subprocess.run()**.
* O script VBS gera um arquivo de saída chamado **retorno.txt** com o conteúdo "Funcionando 100%".
* O Flask então lê o conteúdo desse arquivo e o retorna como uma resposta JSON quando a rota é acessada.
* Se o arquivo de saída não for encontrado, uma mensagem de erro é retornada em vez do conteúdo.


Esta documentação fornece uma visão geral do aplicativo Flask e do script VBS associado, explicando como configurar, executar e entender seu funcionamento.
