*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${URL}                http://www.amazon.com.br
${Menu_livros}        //a[@href='/Livros/b/?ie=UTF8&node=6740748011&ref_=nav_cs_books'][contains(.,'Livros')]


*** Keywords ***
Abrir o navegador
    Open Browser    browser= chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser 

Acessar a home page pelo site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible     locator=//a[contains(.,'Livros')]
Entrar no menu "Livros"
    Click Link    xpath=${Menu_livros}

Verificar se aparece a frase "${Frase}"
    Wait Until Page Contains    text=${Frase}

Verificar se o titulo da pagina fica "${Titulo}"
    Title Should Be    title=${Titulo}

Verificar se aparece a categoria "Mais vendidos"
    Element Should Be Visible    locator=//img[contains(@alt,'Mais vendidos')]

Digitar o nome do produto "${Livro}" na aba de pesquisas
    Click Button    xpath=//input[contains(@type,'text')]
    Input Text    locator=//input[contains(@type,'text')]    text=${Livro}

Clicar no botão de Pesquisa
    Click Button    locator=//input[contains(@type,'submit')]

Verificar o resultado da pesquisa se esta listando o produto "É Assim que Acaba: 1"
     Wait Until Element Is Visible    locator=//span[@class='a-size-base-plus a-color-base a-text-normal'][contains(.,'É Assim que Acaba: 1')]
