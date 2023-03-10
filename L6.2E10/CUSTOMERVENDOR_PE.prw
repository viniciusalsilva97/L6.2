#include 'protheus.ch'

User Function CUSTOMERVENDOR()
    local aParam   := PARAMIXB
    local oObj     := nil 
    local cIdPonto := ''
    local cIdModel := ''
    local xBtn 
    local cAlias      := 'SB1'
    local cTitulo := 'Cad. Produtos'

    DbSelectArea(cAlias)
    DbSetOrder(1)

    xBtn := .t.

    if aParam <> NIL
        oObj     := aParam[1]
        cIdPonto := aParam[2]
        cIdModel := aParam[3]
                       
        if cIdPonto == 'BUTTONBAR'
            xBtn := {}
            aAdd(xBtn, {'Cadastro de Produtos', '', {||axCadastro(cAlias, cTitulo, '.T.', '.T.')}, 'Cadastro de Produtos'})
        endif
    endif

    DbCloseArea()
Return xBtn 
