#INCLUDE 'totvs.ch'

User Function MTA410I()
  local lRet     := .t.
  local cMemoriaDesc := "Inc. PE - " 
  
  if subStr(SC6->C6_DESCRI, 1, 10) <> cMemoriaDesc  
    cMemoriaDesc += SC6->C6_DESCRI
    SC6->C6_DESCRI := cMemoriaDesc 
  endif
  
Return lRet  
