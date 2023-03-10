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
                       
        if cIdPonto == 'BUTTONBAR' .and. INCLUI
            oObj:GetModel("SA2MASTER"):LoadValue("A2_LOJA", "0" + cValToChar(Randomize(1,9)))

            oView := FwViewActive()
            oView:Refresh() 
        endif
    endif

Return lRet
