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

Private cn As ADODB.Connection
Public pNumError As Long
Public pDesError As String
Public pCanReg As Long

Public Sub Conectar()
On Error GoTo ErrorHandler
    Set cn = New ADODB.Connection
    
    cn.ConnectionString = "Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=empresaV1;Data Source=I2T-FFORMIGO"
    cn.Open
    Exit Sub
    
ErrorHandler:
    pNumError = Err.Number
    pDesError = Err.Description
    MsgBox "ERROR: " & pNumError & " " & pDesError, vbCritical, "Hello World"
End Sub

Public Sub Desconectar()
    If Not cn Is Nothing Then
        If cn.State = adStateOpen Then cn.Close
        Set cn = Nothing
    End If
End Sub

Public Function TraerRecordset(vSQL As String, Optional CommandType As CommandTypeEnum = adCmdText) As ADODB.Recordset
On Error GoTo ErrorHandler

    Dim rs As New ADODB.Recordset

    rs.Open vSQL, cn, adOpenStatic, adLockOptimistic, CommandType
    pCanReg = rs.RecordCount
    Set TraerRecordset = rs
    
    Exit Function
ErrorHandler:
    pNumError = Err.Number
    pDesError = Err.Description
    Set TraerRecordset = Nothing
    MsgBox "ERROR: " & pNumError & " " & pDesError, vbCritical, "Hello World"
End Function

