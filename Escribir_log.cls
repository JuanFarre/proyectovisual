VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "Escribir_log"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Sub EscribirLog(mensaje As String)
    Dim archivo As String
    archivo = "C:\Users\joelo\OneDrive\Escritorio\Escritorio\POC Visual Basic\proyectovisual\log.txt" ' Asegúrate de que la ruta y el archivo sean correctos
    Dim fso As Object
    Set fso = CreateObject("Scripting.FileSystemObject")
    Dim ts As Object
    Set ts = fso.OpenTextFile(archivo, 8, True)
    ts.WriteLine Now & ": " & mensaje
    ts.Close
    Set ts = Nothing
    Set fso = Nothing
End Sub
