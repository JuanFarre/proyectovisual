VERSION 5.00
Begin VB.Form Consulta_Producto 
   Caption         =   "Producto"
   ClientHeight    =   6855
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9825
   LinkTopic       =   "Form1"
   ScaleHeight     =   6855
   ScaleWidth      =   9825
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox lst2 
      Height          =   255
      ItemData        =   "Consulta_Producto.frx":0000
      Left            =   5520
      List            =   "Consulta_Producto.frx":0002
      TabIndex        =   10
      Top             =   1800
      Width           =   615
   End
   Begin VB.ListBox lst1 
      Height          =   255
      ItemData        =   "Consulta_Producto.frx":0004
      Left            =   5520
      List            =   "Consulta_Producto.frx":0006
      TabIndex        =   9
      Top             =   720
      Width           =   615
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   1200
      TabIndex        =   8
      Top             =   360
      Width           =   975
   End
   Begin VB.CommandButton cmd4 
      Caption         =   "Salir"
      Height          =   255
      Left            =   5040
      TabIndex        =   7
      Top             =   5280
      Width           =   975
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "Nuevo"
      Height          =   255
      Left            =   2880
      TabIndex        =   6
      Top             =   5280
      Width           =   1095
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
      Left            =   3000
      TabIndex        =   3
      Top             =   720
      Width           =   375
   End
   Begin VB.Label lbl3 
      Caption         =   "Habilitado"
      Height          =   255
      Left            =   2400
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

