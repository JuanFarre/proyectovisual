VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Mantenedor_Producto 
   Caption         =   "Mantenedor_Producto"
   ClientHeight    =   5160
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6960
   LinkTopic       =   "Form1"
   ScaleHeight     =   5160
   ScaleWidth      =   6960
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox chk2 
      Height          =   255
      Left            =   4920
      TabIndex        =   10
      Top             =   1080
      Width           =   255
   End
   Begin VB.CheckBox chk1 
      Height          =   255
      Left            =   4920
      TabIndex        =   9
      Top             =   240
      Width           =   255
   End
   Begin VB.CommandButton btn2 
      Caption         =   "Salir"
      Height          =   255
      Left            =   3720
      TabIndex        =   8
      Top             =   4680
      Width           =   1095
   End
   Begin VB.CommandButton btn1 
      Caption         =   "Guardar"
      Height          =   255
      Left            =   1800
      TabIndex        =   7
      Top             =   4680
      Width           =   1095
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3135
      Left            =   600
      TabIndex        =   6
      Top             =   1440
      Width           =   5175
      _ExtentX        =   9128
      _ExtentY        =   5530
      _Version        =   393216
      Tab             =   1
      TabHeight       =   520
      TabCaption(0)   =   "Cuando Sortea?"
      TabPicture(0)   =   "Mantenedor_Producto.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "dospuntos"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label3"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label4"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Label5"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Label6"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "Label7"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "hora"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "chk3"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "chk4"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "chk5"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "chk6"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "chk7"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "chk8"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "chk9"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "txt2"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "txt3"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "txt4"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "txt5"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "txt6"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "txt7"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "txt8"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).Control(22)=   "txt9"
      Tab(0).Control(22).Enabled=   0   'False
      Tab(0).Control(23)=   "txt10"
      Tab(0).Control(23).Enabled=   0   'False
      Tab(0).Control(24)=   "txt11"
      Tab(0).Control(24).Enabled=   0   'False
      Tab(0).Control(25)=   "txt12"
      Tab(0).Control(25).Enabled=   0   'False
      Tab(0).Control(26)=   "txt13"
      Tab(0).Control(26).Enabled=   0   'False
      Tab(0).Control(27)=   "txt14"
      Tab(0).Control(27).Enabled=   0   'False
      Tab(0).Control(28)=   "txt15"
      Tab(0).Control(28).Enabled=   0   'False
      Tab(0).ControlCount=   29
      TabCaption(1)   =   "Jurisdicciones"
      TabPicture(1)   =   "Mantenedor_Producto.frx":001C
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "frm1"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "cmd3"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "cmd4"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).ControlCount=   3
      TabCaption(2)   =   "Modalidades"
      TabPicture(2)   =   "Mantenedor_Producto.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).ControlCount=   0
      Begin VB.CommandButton cmd4 
         Caption         =   "NINGUNA"
         Height          =   615
         Left            =   3480
         TabIndex        =   47
         Top             =   1920
         Width           =   1095
      End
      Begin VB.CommandButton cmd3 
         Caption         =   "TODAS"
         Height          =   615
         Left            =   3480
         TabIndex        =   46
         Top             =   840
         Width           =   1095
      End
      Begin VB.Frame frm1 
         Height          =   2055
         Left            =   360
         TabIndex        =   41
         Top             =   600
         Width           =   2655
         Begin VB.CheckBox chk14 
            Caption         =   "Montevideo"
            Height          =   375
            Left            =   240
            TabIndex        =   45
            Top             =   1320
            Width           =   1575
         End
         Begin VB.CheckBox chk13 
            Caption         =   "IAFAS Entre Rios"
            Height          =   375
            Left            =   240
            TabIndex        =   44
            Top             =   960
            Width           =   1935
         End
         Begin VB.CheckBox chk11 
            Caption         =   "Pcia Buenos Aires"
            Height          =   255
            Left            =   240
            TabIndex        =   43
            Top             =   720
            Width           =   1815
         End
         Begin VB.CheckBox chk10 
            Caption         =   "LotBa"
            Height          =   255
            Left            =   240
            TabIndex        =   42
            Top             =   360
            Width           =   975
         End
      End
      Begin VB.TextBox txt15 
         Height          =   285
         Left            =   -71760
         TabIndex        =   31
         Top             =   2760
         Width           =   495
      End
      Begin VB.TextBox txt14 
         Height          =   285
         Left            =   -72480
         TabIndex        =   30
         Top             =   2760
         Width           =   495
      End
      Begin VB.TextBox txt13 
         Height          =   285
         Left            =   -71760
         TabIndex        =   29
         Top             =   2400
         Width           =   495
      End
      Begin VB.TextBox txt12 
         Height          =   285
         Left            =   -72480
         TabIndex        =   28
         Top             =   2400
         Width           =   495
      End
      Begin VB.TextBox txt11 
         Height          =   285
         Left            =   -71760
         TabIndex        =   27
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox txt10 
         Height          =   285
         Left            =   -72480
         TabIndex        =   26
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox txt9 
         Height          =   285
         Left            =   -71760
         TabIndex        =   25
         Top             =   1680
         Width           =   495
      End
      Begin VB.TextBox txt8 
         Height          =   285
         Left            =   -72480
         TabIndex        =   24
         Top             =   1680
         Width           =   495
      End
      Begin VB.TextBox txt7 
         Height          =   285
         Left            =   -71760
         TabIndex        =   23
         Top             =   1320
         Width           =   495
      End
      Begin VB.TextBox txt6 
         Height          =   285
         Left            =   -72480
         TabIndex        =   22
         Top             =   1320
         Width           =   495
      End
      Begin VB.TextBox txt5 
         Height          =   285
         Left            =   -71760
         TabIndex        =   21
         Top             =   960
         Width           =   495
      End
      Begin VB.TextBox txt4 
         Height          =   285
         Left            =   -72480
         TabIndex        =   20
         Top             =   960
         Width           =   495
      End
      Begin VB.TextBox txt3 
         Height          =   285
         Left            =   -71760
         TabIndex        =   19
         Top             =   600
         Width           =   495
      End
      Begin VB.TextBox txt2 
         Height          =   285
         Left            =   -72480
         TabIndex        =   18
         Top             =   600
         Width           =   495
      End
      Begin VB.CheckBox chk9 
         Caption         =   "Domingo"
         Height          =   195
         Left            =   -74640
         TabIndex        =   17
         Top             =   2760
         Width           =   975
      End
      Begin VB.CheckBox chk8 
         Caption         =   "Sabado"
         Height          =   255
         Left            =   -74640
         TabIndex        =   16
         Top             =   2400
         Width           =   975
      End
      Begin VB.CheckBox chk7 
         Caption         =   "Viernes"
         Height          =   255
         Left            =   -74640
         TabIndex        =   15
         Top             =   2040
         Width           =   855
      End
      Begin VB.CheckBox chk6 
         Caption         =   "Jueves"
         Height          =   255
         Left            =   -74640
         TabIndex        =   14
         Top             =   1680
         Width           =   975
      End
      Begin VB.CheckBox chk5 
         Caption         =   "Miercoles"
         Height          =   255
         Left            =   -74640
         TabIndex        =   13
         Top             =   1320
         Width           =   975
      End
      Begin VB.CheckBox chk4 
         Caption         =   "Martes"
         Height          =   255
         Left            =   -74640
         TabIndex        =   12
         Top             =   960
         Width           =   855
      End
      Begin VB.CheckBox chk3 
         Caption         =   "Lunes"
         Height          =   255
         Left            =   -74640
         TabIndex        =   11
         Top             =   600
         Width           =   975
      End
      Begin VB.Label hora 
         Caption         =   "Hora"
         Height          =   255
         Left            =   -72000
         TabIndex        =   40
         Top             =   360
         Width           =   975
      End
      Begin VB.Label Label7 
         Caption         =   ":"
         Height          =   375
         Left            =   -71880
         TabIndex        =   39
         Top             =   2760
         Width           =   255
      End
      Begin VB.Label Label6 
         Caption         =   ":"
         Height          =   375
         Left            =   -71880
         TabIndex        =   38
         Top             =   2400
         Width           =   255
      End
      Begin VB.Label Label5 
         Caption         =   ":"
         Height          =   375
         Left            =   -71880
         TabIndex        =   37
         Top             =   2040
         Width           =   255
      End
      Begin VB.Label Label4 
         Caption         =   ":"
         Height          =   375
         Left            =   -71880
         TabIndex        =   36
         Top             =   1680
         Width           =   255
      End
      Begin VB.Label Label3 
         Caption         =   ":"
         Height          =   375
         Left            =   -71880
         TabIndex        =   35
         Top             =   1320
         Width           =   255
      End
      Begin VB.Label Label2 
         Caption         =   ":"
         Height          =   375
         Left            =   -71880
         TabIndex        =   34
         Top             =   960
         Width           =   255
      End
      Begin VB.Label dospuntos 
         Caption         =   ":"
         Height          =   375
         Left            =   -71880
         TabIndex        =   32
         Top             =   600
         Width           =   255
      End
   End
   Begin VB.ListBox lst1 
      Height          =   255
      ItemData        =   "Mantenedor_Producto.frx":0054
      Left            =   1080
      List            =   "Mantenedor_Producto.frx":0056
      TabIndex        =   5
      Top             =   960
      Width           =   975
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   960
      TabIndex        =   4
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   ":"
      Height          =   375
      Left            =   3600
      TabIndex        =   33
      Top             =   2400
      Width           =   255
   End
   Begin VB.Label lbl4 
      Caption         =   "Es poceado?"
      Height          =   255
      Left            =   3480
      TabIndex        =   3
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label lbl3 
      Caption         =   "Habilitado"
      Height          =   255
      Left            =   3480
      TabIndex        =   2
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label lbl2 
      Caption         =   "Grupo"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   855
   End
   Begin VB.Label lbl1 
      Caption         =   "Nombre"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   855
   End
End
Attribute VB_Name = "Mantenedor_Producto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub btn2_Click()
End
End Sub

