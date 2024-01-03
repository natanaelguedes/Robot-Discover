*** Settings ***
Documentation        Suite de testes do home page 
Library    Browser
Resource   ../Resources/Cap.robot 
*** Test Cases ***
Deve cadastrar um novo dog walker
   
#dados para rodar essa aplicação
    ${name}               Set Variable             Natanael
    ${email}              Set Variable             ngsneto@gmail.com
    ${cpf}                Set Variable             07265474741
    ${cep}                Set Variable             58070400
    ${numero}             Set Variable             120  
    ${complemento}        Set Variable             Apto105
    ${addressStreet}      Set Variable             Rua Elias Cavalcanti de Albuquerque
    ${addressNumber}      Set Variable             120
    ${addressDetails}     Set Variable             105
    ${addressDistrict}    Set Variable             Cristo Redentor
    ${addressCityUf}      Set Variable             João Pessoa/PB
    ${url}                Set Variable             i.jpg   

    inicia
             # New Browser                                    browser=chromium        headless=False
     # New Page                                       https://walkdog.vercel.app/signup
     # Wait For Elements State                        form h1       visible          5000
    #criação de super variaveis
    ${dog_walker}   Create Dictionary 
    ...    name=Natanael
    ...    email=ngsneto@gmail.com 
    ...    cpf=07265474741
    ...    cep=58070400
    ...    numero=120
    ...    complemento=Apto105
    ...    addressStreet=Rua Elias Cavalcanti de Albuquerque      
    ...    addressNumber=120
    ...    addressDetails=105
    ...    addressDistrict=Cristo Redentor
    ...    addressCityUf=João Pessoa/PB
    ...    url=i.jpg 
       
     Browser.Get Text                               form h1    equal         Faça seu cadastro    5000
    # ${msg}     Get Text    Recebemos seu cadastro e em breve retornaremos o contato.
   #  fillform     ${dog_walker}          


*** Keywords ***
 fillform 
     [Arguments]  ${dog_walker} 
     Fill Text                                      css=input[name=name]                             ${dog_walker}[name]
     Fill Text                                      css=input[name=email]                            ${dog_walker}[email]
     Fill Text                                      css=input[name=cpf]                              ${dog_walker}[cpf]
     Fill Text                                      css=input[name=cep]                              ${dog_walker}[cep]
     Click                                          css=input[type=button][value$=CEP]    
#     #validando os campos       
     ${dog_walker}[addressStreet]     Get Text                  css=input[name=addressStreet]     value  equal       Rua Elias Cavalcanti de Albuquerque  
     ${dog_walker}[addressDistrict]   Get Text                  css=input[name=addressDistrict]   value  equal       Cristo Redentor       
     ${dog_walker}[addressCityUf]     Get Text                  css=input[name=addressCityUf]     value  equal     João Pessoa/PB       
     Fill Text                                      css=input[name=addressNumber]                         ${dog_walker}[numero]
     Fill Text                                      css=input[name=addressDetails]                        ${dog_walker}[complemento]    
# #vai em inspecionar elemento e clica em Style e em elements styles,  
# # #desabilita o checkbox elements.styles com o nome display: none;
# #EXECDIR identifica qualquer arquivo que esteja na raiz do projeto que nesse caso a raiz é XQAEXPERIENCE 
     Upload File By Selector                        css=input[type=file]                                  ${dog_walker}[url]                        

     
  
     Click                                          css=.button-register   # Input Text  
     
    Sleep                                          900
     #Capture Page Screenshot                        ${EXECDIR}/image  


