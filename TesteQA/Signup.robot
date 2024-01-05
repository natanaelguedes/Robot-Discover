*** Settings ***
Documentation        Suite de testes do home page 
Library    Browser
Library  ScreenCapLibrary 
Library  OperatingSystem
Library  Screenshot
 
*** Test Cases ***
Deve cadastrar um novo dog walker
   

     New Browser                                    browser=chromium        headless=False
     New Page                                       https://walkdog.vercel.app/signup
     Wait For Elements State                        form h1       visible          5000
     Get Text                               form h1    equal         Faça seu cadastro
     Fill Text                                      css=input[name=name]                             Natanael
     Fill Text                                      css=input[name=email]                            ngsneto@gmail.com
     Fill Text                                      css=input[name=cpf]                              07966287470
     Fill Text                                      css=input[name=cep]                              58070400
     Click                                          css=input[type=button][value$=CEP]    
    #validando os campos       
    #$ Get Property                                   css=input[name=addressStreet]     value  equal   ${addressStreet}   
     #E
     # Get Property                                   css=input[name=addressDistrict]   value  equal   ${addressDistrict}       
     #Get Property                                   css=input[name=addressCityUf]     value  equal   ${addressCityUf}       

     Fill Text                                      css=input[name=addressNumber]                    241
     Fill Text                                      css=input[name=addressDetails]                   apto105    
#vai em inspecionar elemento e clica em Style e em elements styles,  
# #desabilita o checkbox elements.styles com o nome display: none;
#EXECDIR identifica qualquer arquivo que esteja na raiz do projeto que nesse caso a raiz é XQAEXPERIENCE 

    Upload File By Selector                        css=input[type=file]                             ${EXECDIR}/i.jpg                        

  
    Click                                          css=.button-register   # Input Text  
    # # submit form                                   xpath=//*[@id="page-walker"]/form/button         Cadastrar     
    Get Text                                       css=.swal2-html-container        equal       Recebemos o seu cadastro e em breve retornaremos o contato.

    Screenshot.Take Screenshot        ${EXECDIR}/logs                        

    Sleep                                          60
    #  #Capture Page Screenshot                        ${EXECDIR}/image  


#C:\Users\saonneto\UdemyAppiumAndRobotFramework-main\UdemyAppiumAndRobotFramework-main\XQAEXPERIENCE> 
# para roda basta digitar o comando 