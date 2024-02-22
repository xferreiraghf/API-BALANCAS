Dim fso, Fileout
Set fso = CreateObject("Scripting.FileSystemObject")
If Not fso.FileExists("retorno.txt") Then
    Set Fileout = fso.CreateTextFile("retorno.txt", True, True)
    Fileout.Write "Funcionando 100%"
    Fileout.Close
End If