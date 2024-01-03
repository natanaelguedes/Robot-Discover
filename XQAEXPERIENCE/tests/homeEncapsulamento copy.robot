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

  
     Browser.Get Text                               form h1    equal         Faça seu cadastro    5000

     fillform     ${name}    ${email}    ${cpf}    ${cep}    ${numero}    ${complemento}   ${addressStreet}     ${addressDistrict}     ${addressCityUf}             ${addressNumber}    ${addressDetails}   ${url}         


*** Keywords ***
 fillform 
     [Arguments]  ${name}    ${email}    ${cpf}    ${cep}    ${numero}    ${complemento}  ${addressStreet}   ${addressDistrict}    ${addressCityUf}              ${addressNumber}    ${addressDetails}   ${url}                  
     Fill Text                                      css=input[name=name]                             ${name}
     Fill Text                                      css=input[name=email]                            ${email}
     Fill Text                                      css=input[name=cpf]                              ${cpf}
     Fill Text                                      css=input[name=cep]                              ${cep}
     Click                                          css=input[type=button][value$=CEP]    
#     #validando os campos       
     ${addressStreet}     Get Text                  css=input[name=addressStreet]     value  equal       Rua Elias Cavalcanti de Albuquerque  
     ${addressDistrict}   Get Text                  css=input[name=addressDistrict]   value  equal       Cristo Redentor       
     ${addressCityUf}     Get Text                  css=input[name=addressCityUf]     value  equal     João Pessoa/PB       

     Fill Text                                      css=input[name=addressNumber]                    ${numero}
     Fill Text                                      css=input[name=addressDetails]                   ${complemento}    
# #vai em inspecionar elemento e clica em Style e em elements styles,  
# # #desabilita o checkbox elements.styles com o nome display: none;
# #EXECDIR identifica qualquer arquivo que esteja na raiz do projeto que nesse caso a raiz é XQAEXPERIENCE 
     Upload File By Selector                        css=input[type=file]                             ${url}                        

     
  
     Click                                          css=.button-register   # Input Text  
     
     Sleep                                          900
     #Capture Page Screenshot                        ${EXECDIR}/image  


