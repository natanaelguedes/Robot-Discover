*** Settings ***
Library  ScreenCapLibrary 
Library  OperatingSystem
Library  Screenshot
Library    Browser



*** Keywords ***
ScreenshotLogin 
      Screenshot.Take Screenshot        ${EXECDIR}/logs/cap                        

inicia
     New Browser                                    browser=chromium        headless=False
     New Page                                       https://walkdog.vercel.app/signup
     Wait For Elements State                        form h1       visible          600
Dados
     ${name}               Set Variable             Natanael
     ${email}              Set Variable             ngsneto@gmail.com
     ${cpf}                Set Variable             0726547474
     ${cep}                Set Variable             58070400
     ${numero}             Set Variable             120  
     ${complemento}        Set Variable             Apto105
     ${addressStreet}      Set Variable             Rua Elias Cavalcanti de Albuquerque
     ${addressNumber}      Set Variable             120
     ${addressDetails}     Set Variable             105
     ${addressDistrict}    Set Variable             Cristo Redentor
     ${addressCityUf}      Set Variable             João Pessoa/PB
 