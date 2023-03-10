#include 'protheus.ch'
#include 'parmtype.ch'

User Function CUSTOMERVENDOR()
    local aParam   := PARAMIXB
    local lRet     := .t.
    local oObj     := nil 
    local cIdPonto := ''
    local cIdModel := ''

    if aParam <> NIL
        oObj     := aParam[1]
        cIdPonto := aParam[2]
        cIdModel := aParam[3]
        
        if cIdPonto == 'MODELPOS'
            if empty(M->A2_PAIS)
                lRet := .f.
                Help("",1,"Aten��o!",,"� necess�rio informar o pa�s para concluir esse processo",1)
            elseif M->A2_PAIS == "105" .and. empty(M->A2_CGC)
                lRet := .f.
                Help("",1,"Aten��o!",,"Como o pa�s � o Brasil, o CNPJ � obrigat�rio",1)
            endif  
        endif
    endif

Return lRet
