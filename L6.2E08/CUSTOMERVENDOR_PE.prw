#include 'protheus.ch'

User Function CUSTOMERVENDOR()
    local aParam   := PARAMIXB
    local lRet     := .t.
    local oObj     := nil 
    local cIdPonto := ''
    local cIdModel := ''
    local nOper  

    if aParam <> NIL
        oObj     := aParam[1]
        cIdPonto := aParam[2]
        cIdModel := aParam[3]
                       
        if cIdPonto == 'MODELVLDACTIVE'
            nOper := oObj:nOperation //* Armazena algumas operações.
            if INCLUI
                fwAlertInfo("Seja bem vendo(a) ao cadastro de fornecedores!")
            elseif ALTERA
                fwAlertInfo("Você está prestes a alterar o cadastro do Fornecedor " + allTrim(SA2->A2_NOME))
            elseif nOper == 5 
                fwAlertInfo("Cuidado, você está prestes a excluir o cadastro do Fornecedor " + allTrim(SA2->A2_NOME))  
            endif
        endif
    endif

Return lRet
