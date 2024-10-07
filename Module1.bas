Attribute VB_Name = "Module1"
Private Declare Function GetPrivateProfileString Lib "kernel32" _
    Alias "GetPrivateProfileStringA" (ByVal lpAppName As String, _
    ByVal lpKeyName As String, ByVal lpDefault As String, _
    ByVal lpReturnedString As String, ByVal nSize As Long, _
    ByVal lpFileName As String) As Long
    Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
    
    
    Function GetINISetting(AppName As String, KeyName As String, Filename As String) As String
    Dim strBuffer As String
    Dim lngRet As Long
    
    strBuffer = Space(255)
    lngRet = GetPrivateProfileString(AppName, KeyName, "", strBuffer, Len(strBuffer), Filename)
    GetINISetting = Left(strBuffer, lngRet)
End Function
    
Public Function INI_Write(Filename As String, Key_Value As String, Key_Name As String, value As String) As Long
    'On Error GoTo ErrOut
    Dim Size As Integer


    'Escribimos el valor de la clave en el INI
    Size = WritePrivateProfileString(Key_Value, Key_Name, value, Filename)
    INI_Write = 1
Exit Function
ErrOut:
    INI_Write = 0
End Function


