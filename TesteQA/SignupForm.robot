*** Settings ***
Documentation        Suite de testes do home page 
Library    Browser
Library  ScreenCapLibrary 
Library  OperatingSystem
Library  Screenshot




*** Test Cases ***
Deve cadastrar um novo dog walker
   
    ${name}             Set Variable                        Natanael
    ${email}            Set Variable                        ngsneto@gmail.com
    ${cpf}              Set Variable                        07687465470
    ${cep}              Set Variable                        58070400
    ${adressNumber}     Set Variable                        120
    ${addressDetails}   Set Variable                        apto105
    ${addressStreet}    Set Variable                        Rua Elias Cavalcanti de Albuquerque
    ${addressDistrict}  Set Variable                        Cristo Redentor               
    ${addressCityUf}    Set Variable                        João Pessoa/PB


     New Browser                                    browser=chromium        headless=False
     New Page                                       https://walkdog.vercel.app/signup
     Wait For Elements State                        form h1       visible          5000
     
     Get Text                               form h1    equal         Faça seu cadastro
  
     Fill Text                                      css=input[name=name]                             ${name}
     Fill Text                                      css=input[name=email]                            ${email}
     Fill Text                                      css=input[name=cpf]                              ${cpf}
     Fill Text                                      css=input[name=cep]                              ${cep}
     Click                                          css=input[type=button][value$=CEP]    
    #validando os campos       
    Get Property                                   css=input[name=addressStreet]     value  equal   ${addressStreet}   
    Get Property                                   css=input[name=addressDistrict]   value  equal   ${addressDistrict}       
    Get Property                                   css=input[name=addressCityUf]     value  equal   ${addressCityUf}       

     Fill Text                                      css=input[name=addressNumber]                    ${adressNumber}
     Fill Text                                      css=input[name=addressDetails]                   ${addressDetails}    
#vai em inspecionar elemento e clica em Style e em elements styles,  
# #desabilita o checkbox elements.styles com o nome display: none;
#EXECDIR identifica qualquer arquivo que esteja na raiz do projeto que nesse caso a raiz é XQAEXPERIENCE 

    Upload File By Selector                        css=input[type=file]                             ${EXECDIR}/i.jpg                        

  
    Click                                          css=.button-register   # Input Text  
    # # submit form                                   xpath=//*[@id="page-walker"]/form/button         Cadastrar     
    Get Text                                       css=.swal2-html-container        equal       Recebemos o seu cadastro e em breve retornaremos o contato.

    Screenshot.Take Screenshot        ${EXECDIR}/logs                        

    Sleep                                          60    #10
    #  #Capture Page Screenshot                        ${EXECDIR}/image  


#C:\Users\saonneto\UdemyAppiumAndRobotFramework-main\UdemyAppiumAndRobotFramework-main\XQAEXPERIENCE> 
# para roda basta digitar o comando 