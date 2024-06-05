*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Site}                     https://www.huggy.chat/9a710192-8df6-490f-aba1-16986342aa4b
${Browser}                  Chrome
${frame}                    xpath = /html/body/div/div/div/div[2]/div[2]/div[1]/iframe
${Input_Nome}               xpath = /html/body/div/div[2]/div/div[2]/form/div[1]/input
${Nome}                     Carlos Alberto
${Input_Telefone}           xpath = /html/body/div/div[2]/div/div[2]/form/div[2]/div/div[1]/input          
${Telefone}                 19981345678
${Input_Email}              xpath = /html/body/div/div[2]/div/div[2]/form/div[3]/input
${Email}                    kodopot948@hutov.com
${Input_chat}               xpath = /html//div/div[3]/div[4]/div[3]/div
${Iniciar}                  xpath = /html/body/div/div[2]/div/div[2]/form/div[4]/input
${Mensagem}                 Oi
${Msg}                      Teste Huggy
${Botao}                    xpath = /html/body/div/div[3]/div[4]/div[5]
${upload}                   xpath = /html/body/div/div[3]/div[4]/div[1]/div[4]
${Finalizar}                xpath = /html/body/div/div[3]/div[4]/div[1]/div[1]
${Reabrir}                  xpath = /html/body/div/div[3]/div[5]/button[2]



*** Keywords *** 
Abrir Navegador
  Open Browser   ${SITE}   ${Browser}
  Maximize Browser Window



Teste de chat Online

   Wait Until Element is Visible     ${frame}   15  
   Select Frame                      ${frame} 
    Input Text                       ${Input_Nome}    ${Nome}
    Input Text                       ${Input_Telefone}   ${Telefone}
    Input Text                       ${Input_Email}    ${Email} 
    Click Button                     ${Iniciar}
    Input Text                       ${Input_chat}    ${Mensagem} 
    Click Element                    ${Botao}
    Sleep                            3
    Input Text                       ${Input_chat}     ${Msg} 
    Click Element                    ${Botao}
    Sleep                            5
    Page Should Contain              Teste passou
    Sleep                            2
    Select Frame                    xpath = /html/body/div/div/div/div[2]/div[2]/div[1]/iframe
    Page Should Contain Element     xpath = /html/body/div/div[3]/div[4]/div[2]/i
    Click Element                   xpath = /html/body/div/div[3]/div[4]/div[2]  
    Page Should Contain              Enviar arquivo    
   Wait Until Element Is Visible    xpath = /html/body/div/div[3]/div[4]/div[1] 
    Choose File                      ${upload}    ./Assassin.jpg 
    Click Element                    ${Finalizar}  
    Click Button                     ${Reabrir}
    Input Text                       ${Input_chat}       Boa tarde:slight_smile:
    Click Button                     xpath = /html/body/div/div[3]/div[4]/div[2]
    Click Element                    xpath = /html/body/div/div[3]/div[5]/div/div[1]/div/div[2]
    Input Text                       xpath = /html/body/div/div[11]/div/div[2]/form/div[1]/input    devbrunohs@gmail.com