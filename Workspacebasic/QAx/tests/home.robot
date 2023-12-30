*** Settings ***
Documentation        Suites de testes

Library      Browser


*** Test Cases ***
O site deve está online
    New Browser     browser=chromium      headless=false
    New Page     https://walkdog.vercel.app/signup

    Sleep  2  
    Take Screenshot          