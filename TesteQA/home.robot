*** Settings ***
Documentation            Suites de testes da Home Page Dog Walker

Library    Browser

*** Test Cases ***

home page deve estar online
    New Browser       browser=chromium    headless=False
    New Page     https://walkdog.vercel.app/
    Get Text     h1     equal    Cuidado e diversão em cada passo
    Sleep    2
    Take Screenshot