VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsConexion"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private cn As ADODB.connection
Public pNumError As Long
Public pDesError As String
Public pCanReg As Long
Public pUltIdenOtor As Long

Public Sub Conectar()
    On Error GoTo ErrorHandler
    
    ' Verificar si la conexión ya existe
    If cn Is Nothing Then
        Set cn = New ADODB.connection
    End If
    
    ' Si la conexión está cerrada, abrirla
    If cn.State = adStateClosed Then
        cn.connectionString = "Provider=SQLOLEDB.1; Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=loteriaVB;Data Source=DESKTOP-UK99V41"
        cn.Open
        MsgBox "Conexión exitosa", vbInformation, "Éxito"
    End If
    
    Exit Sub
    
ErrorHandler:
    pNumError = Err.Number
    pDesError = Err.Description
    MsgBox "Error: " & pNumError & " " & pDesError, vbCritical, "Error de conexión"
End Sub

Public Sub Desconectar()
    If Not cn Is Nothing Then
        If cn.State = adStateOpen Then
            cn.Close
        End If
        Set cn = Nothing
    End If
End Sub

Public Function TraerRecordset(vSQL As String, Optional CommandType As CommandTypeEnum = adCmdText) As ADODB.Recordset
    On Error GoTo ErrorHandler
    
    ' Verificar que la conexión esté abierta antes de ejecutar la consulta
    If cn Is Nothing Or cn.State = adStateClosed Then
        MsgBox "La conexión está cerrada. Abriendo conexión...", vbExclamation, "Conexión cerrada"
        Conectar ' Intentar conectar si está cerrada
    End If
    
    Dim rs As New ADODB.Recordset
    rs.Open vSQL, cn, adOpenStatic, adLockOptimistic, CommandType
    pCanReg = rs.RecordCount
    
    ' Devolver el recordset
    Set TraerRecordset = rs
    Exit Function

ErrorHandler:
    pNumError = Err.Number
    pDesError = Err.Description
    MsgBox "Error: " & pNumError & " " & pDesError, vbCritical, "Error al traer datos"
End Function

' Limpieza y cierre de recordsets para evitar fugas de memoria
Public Sub CerrarRecordset(rs As ADODB.Recordset)
    If Not rs Is Nothing Then
        If rs.State = adStateOpen Then
            rs.Close
        End If
        Set rs = Nothing
    End If
End Sub

