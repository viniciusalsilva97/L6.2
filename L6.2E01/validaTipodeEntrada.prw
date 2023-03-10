#INCLUDE 'totvs.ch'

User Function validaTipodeEntrada()
    local lRet := .t.
    local nCon := 0

    for nCon := 1 to len(aCols)
        if empty(aCols[nCon][33])
            //* nCon � onde fica o nosso mouse. O 33 est� referenciando o campo 'tipo de entrada'
            lRet := .f.
            fwAlertError("S� � permitido incluir um novo PC se o tipo de entrada estiver preenchido", "Aten��o") 
        endif  
    next   

Return lRet
