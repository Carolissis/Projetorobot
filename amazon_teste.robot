*** Settings *** 
Documentation    Essa suite testa o site da amazon.com.busca_produtos
Resource         amazon_resources.robot
Test Setup       Abrir o navegador 
Test Teardown    Fechar o navegador 

*** Test Cases ***
Caso de teste número 01- Acesso ao menu "Livros"
    [Documentation]    Esse teste verifica o menu de livros do site amazom.com.br 
    ...                e verifica a categoria 'Mais vendidos'
    [Tags]             Menu categoria
   
    Acessar a home page pelo site Amazon.com.br
    Entrar no menu "Livros"
    Verificar se aparece a frase "Loja de Livros"
    Verificar se o titulo da pagina fica "Livros | Amazon.com.br"
    Verificar se aparece a categoria "Mais vendidos"


Caso de teste número 02- Pesquisa de um produto
    [Documentation]    Esse teste verificar a busca de um produto 
    [Tags]             Lista_produtos 

    Acessar a home page pelo site Amazon.com.br
    Digitar o nome do produto "É assim que acaba" na aba de pesquisas 
    Clicar no botão de Pesquisa
    Verificar o resultado da pesquisa se esta listando o produto "É Assim que Acaba: 1"

