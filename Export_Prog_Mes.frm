VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Export_Prog_Mes 
   Caption         =   "Export_Prog_Mes"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3840
      Top             =   840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "..."
      Height          =   255
      Left            =   3360
      TabIndex        =   6
      Top             =   960
      Width           =   375
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   1680
      TabIndex        =   5
      Text            =   "Seleccione"
      Top             =   960
      Width           =   1575
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "SALIR"
      Height          =   375
      Left            =   2640
      TabIndex        =   4
      Top             =   2280
      Width           =   1215
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "EXPORTAR"
      Height          =   375
      Left            =   600
      TabIndex        =   3
      Top             =   2280
      Width           =   1215
   End
   Begin VB.ComboBox cbo1 
      Height          =   315
      Left            =   1200
      TabIndex        =   2
      Text            =   "Seleccion"
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Carpeta Destino"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label 
      Caption         =   "Mes"
      Height          =   255
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   375
   End
End
Attribute VB_Name = "Export_Prog_Mes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub cmd2_Click()
End
End Sub
    
Private Sub cmd3_Click()
    Dim folderPath As String
    Dim ShellObj As Object
 
    Set ShellObj = CreateObject("Shell.Application")
    
    With ShellObj.BrowseForFolder(0, "Seleccione la Carpeta Destino", 0, "C:\")
        If Not .IsNothing Then
           
            folderPath = .Self.Path
            txt1.Text = folderPath
        Else
        
            MsgBox "Selección cancelada", vbInformation
        End If
    End With
    
    Set ShellObj = Nothing
End Sub

