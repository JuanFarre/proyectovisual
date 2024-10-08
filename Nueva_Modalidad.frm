VERSION 5.00
Begin VB.Form Nueva_Modalidad 
   Caption         =   "Nueva_Modalidad"
   ClientHeight    =   4290
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4305
   LinkTopic       =   "Form1"
   ScaleHeight     =   4290
   ScaleWidth      =   4305
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt4 
      Height          =   375
      Left            =   2160
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   11
      Top             =   1200
      Width           =   1815
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "SALIR"
      Height          =   375
      Left            =   2520
      TabIndex        =   10
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "GUARDAR"
      Height          =   375
      Left            =   480
      TabIndex        =   9
      Top             =   3240
      Width           =   1215
   End
   Begin VB.TextBox txt3 
      Height          =   375
      Left            =   2280
      TabIndex        =   8
      Top             =   2520
      Width           =   1455
   End
   Begin VB.TextBox txt2 
      Height          =   285
      Left            =   2280
      TabIndex        =   7
      Top             =   1920
      Width           =   1455
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   2040
      TabIndex        =   6
      Top             =   840
      Width           =   1815
   End
   Begin VB.ComboBox cbo1 
      Height          =   315
      Left            =   2160
      TabIndex        =   5
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "Valor Dif de la Apuesta"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Valor de la Apuesta"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   1800
      Width           =   1575
   End
   Begin VB.Label Orden 
      Caption         =   "Orden"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label Nombre 
      Caption         =   "Nombre"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   720
      Width           =   1095
   End
   Begin VB.Label Producto 
      Caption         =   "Producto"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   855
   End
End
Attribute VB_Name = "Nueva_Modalidad"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmd2_Click()
End
End Sub

