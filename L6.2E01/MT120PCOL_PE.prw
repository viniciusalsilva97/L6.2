#INCLUDE 'totvs.ch'

User Function MT120PCOL()
    local lRet := .t.
    local nOper := PARAMIXB[1]
     
    If nOper == 1 .and. (INCLUI .or. ALTERA)
        if existBlock('validaTipodeEntrada')
            lRet := execBlock('validaTipodeEntrada', .f., .f.,)
        endif
    EndIf
    
Return lRet 
