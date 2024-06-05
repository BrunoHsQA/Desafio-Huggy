*** Settings ***
Library          SeleniumLibrary
Resource         ./huggy.resource
Test Setup       Abrir Navegador
Test Teardown    Close Browser

*** Test Case ***
Teste huggy
    Teste de chat Online
    