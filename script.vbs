Dim fso, Fileout
Set fso = CreateObject("Scripting.FileSystemObject")
Set Fileout = fso.CreateTextFile("output.txt", True, True)
Fileout.Write "Funcionando 100%"
Fileout.Close
