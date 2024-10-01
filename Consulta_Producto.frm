VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Consulta_Producto 
   Caption         =   "Producto"
   ClientHeight    =   4815
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8160
   LinkTopic       =   "Form1"
   ScaleHeight     =   4815
   ScaleWidth      =   8160
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmd4 
      Caption         =   "SALIR"
      Height          =   615
      Index           =   1
      Left            =   4200
      TabIndex        =   12
      Top             =   4080
      Width           =   1335
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "NUEVO"
      Height          =   495
      Index           =   1
      Left            =   1440
      TabIndex        =   11
      Top             =   4080
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   1095
      Left            =   600
      TabIndex        =   10
      Top             =   2400
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   1931
      _Version        =   393216
      Rows            =   3
      Cols            =   7
   End
   Begin VB.ComboBox cbo3 
      Height          =   315
      Left            =   5520
      TabIndex        =   9
      Text            =   "Selecc"
      Top             =   1200
      Width           =   975
   End
   Begin VB.ComboBox cbo2 
      Height          =   315
      Left            =   5520
      TabIndex        =   8
      Text            =   "Selecc"
      Top             =   360
      Width           =   975
   End
   Begin VB.ComboBox cbo1 
      Height          =   315
      Left            =   1200
      TabIndex        =   7
      Text            =   "cbo1"
      Top             =   600
      Width           =   855
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   1200
      TabIndex        =   6
      Top             =   120
      Width           =   975
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "Buscar"
      Height          =   255
      Left            =   2520
      TabIndex        =   5
      Top             =   1440
      Width           =   1095
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "Limpiar"
      Height          =   255
      Left            =   1200
      TabIndex        =   4
      Top             =   1440
      Width           =   855
   End
   Begin VB.Label lbl4 
      Caption         =   "Tipo"
      Height          =   255
      Left            =   4560
      TabIndex        =   3
      Top             =   1200
      Width           =   375
   End
   Begin VB.Label lbl3 
      Caption         =   "Habilitado"
      Height          =   255
      Left            =   4320
      TabIndex        =   2
      Top             =   360
      Width           =   975
   End
   Begin VB.Label lbl2 
      Caption         =   "Grupo"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   600
      Width           =   975
   End
   Begin VB.Label lbl1 
      Caption         =   "Nombre"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   735
   End
End
Attribute VB_Name = "Consulta_Producto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Private Sub Form_Load()

    cbo2.AddItem "Si"
    cbo2.AddItem "No"
    
    '----------------------------
    cbo3.AddItem "Poceado"
    cbo3.AddItem "Bancado"
End Sub

