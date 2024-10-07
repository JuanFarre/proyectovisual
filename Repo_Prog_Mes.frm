VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Repo_Prog_Mes 
   Caption         =   "Repo_Prog_Mes"
   ClientHeight    =   2940
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   7200
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   2940
   ScaleWidth      =   7200
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   1215
      Left            =   480
      TabIndex        =   3
      Top             =   720
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   2143
      _Version        =   393216
      Cols            =   6
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "Salir"
      Height          =   495
      Left            =   2760
      TabIndex        =   2
      Top             =   2280
      Width           =   1455
   End
   Begin VB.ComboBox cbo1 
      Height          =   315
      Left            =   3120
      TabIndex        =   1
      Text            =   "Seleccion"
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Mes 
      Caption         =   "Mes: "
      Height          =   255
      Left            =   2520
      TabIndex        =   0
      Top             =   120
      Width           =   495
   End
End
Attribute VB_Name = "Repo_Prog_Mes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmd1_Click()
End

End Sub

