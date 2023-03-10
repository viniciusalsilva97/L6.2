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
                       
        if cIdPonto == 'MODELPOS'
            nOper := oObj:nOperation //* Armazena algumas operações.
            if  nOper == 5
                lRet := msgYesNo("Você confirma a exclusão?") 
            endif
        endif
    endif
Return lRet
