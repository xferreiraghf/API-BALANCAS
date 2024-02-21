Dim fso, Fileout
Set fso = CreateObject("Scripting.FileSystemObject")
Set Fileout = fso.CreateTextFile("retorno.txt", True, True)
Fileout.Write "Funcionando 100%"
Fileout.Close
