VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Mantenedor_Producto 
   BackColor       =   &H80000010&
   Caption         =   "Mantenedor_Producto"
   ClientHeight    =   8160
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14490
   LinkTopic       =   "Form1"
   ScaleHeight     =   8160
   ScaleWidth      =   14490
   StartUpPosition =   3  'Windows Default
   Begin TabDlg.SSTab SSTab1 
      Height          =   3975
      Left            =   1920
      TabIndex        =   11
      Top             =   2280
      Width           =   11415
      _ExtentX        =   20135
      _ExtentY        =   7011
      _Version        =   393216
      TabHeight       =   520
      BackColor       =   -2147483644
      TabCaption(0)   =   "Cu�ndo Sortea?"
      TabPicture(0)   =   "Mantenedor_Producto.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "lbl5"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "chk3(1)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "chk4(1)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "chk5"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "chk6"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "chk7"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "chk8"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "chk9"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "txt2"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "txt3"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "txt4"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "txt5"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "txt6"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "txt7"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "txt8"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "txt9"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "txt10"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "txt11"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "txt12"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "txt13"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "txt14"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "txt15"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).ControlCount=   22
      TabCaption(1)   =   "Jurisdicciones"
      TabPicture(1)   =   "Mantenedor_Producto.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "cmd4"
      Tab(1).Control(1)=   "cmd3"
      Tab(1).Control(2)=   "frm1"
      Tab(1).ControlCount=   3
      TabCaption(2)   =   "Modalidades"
      TabPicture(2)   =   "Mantenedor_Producto.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "cmd6"
      Tab(2).Control(1)=   "MSFlexGrid1"
      Tab(2).ControlCount=   2
      Begin VB.CommandButton cmd6 
         Caption         =   "NUEVA"
         Height          =   735
         Left            =   -66480
         TabIndex        =   42
         Top             =   720
         Width           =   2175
      End
      Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
         Height          =   3015
         Left            =   -74280
         TabIndex        =   41
         Top             =   600
         Width           =   6975
         _ExtentX        =   12303
         _ExtentY        =   5318
         _Version        =   393216
      End
      Begin VB.CommandButton cmd4 
         Caption         =   "NINGUNA"
         Height          =   615
         Left            =   -68520
         TabIndex        =   40
         Top             =   2040
         Width           =   2055
      End
      Begin VB.CommandButton cmd3 
         Caption         =   "TODAS"
         Height          =   615
         Left            =   -68520
         TabIndex        =   39
         Top             =   840
         Width           =   2055
      End
      Begin VB.Frame frm1 
         Height          =   2415
         Left            =   -74280
         TabIndex        =   34
         Top             =   720
         Width           =   3255
         Begin VB.CheckBox chk13 
            Caption         =   "Montevideo"
            Height          =   375
            Left            =   240
            TabIndex        =   38
            Top             =   1680
            Width           =   2175
         End
         Begin VB.CheckBox chk12 
            Caption         =   "IAFAS Entre Rios"
            Height          =   495
            Left            =   240
            TabIndex        =   37
            Top             =   1200
            Width           =   2535
         End
         Begin VB.CheckBox chk11 
            Caption         =   "Pcia Buenos Aires"
            Height          =   375
            Left            =   240
            TabIndex        =   36
            Top             =   840
            Width           =   1815
         End
         Begin VB.CheckBox chk10 
            Caption         =   "LotBa"
            Height          =   375
            Left            =   240
            TabIndex        =   35
            Top             =   360
            Width           =   2415
         End
      End
      Begin VB.TextBox txt15 
         Height          =   375
         Left            =   5880
         TabIndex        =   33
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox txt14 
         Height          =   375
         Left            =   5280
         TabIndex        =   32
         Top             =   2880
         Width           =   495
      End
      Begin VB.TextBox txt13 
         Height          =   375
         Left            =   5880
         TabIndex        =   31
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox txt12 
         Height          =   375
         Left            =   5280
         TabIndex        =   30
         Top             =   2520
         Width           =   495
      End
      Begin VB.TextBox txt11 
         Height          =   375
         Left            =   5880
         TabIndex        =   29
         Top             =   2160
         Width           =   495
      End
      Begin VB.TextBox txt10 
         Height          =   375
         Left            =   5280
         TabIndex        =   28
         Top             =   2160
         Width           =   495
      End
      Begin VB.TextBox txt9 
         Height          =   375
         Left            =   5880
         TabIndex        =   27
         Top             =   1800
         Width           =   495
      End
      Begin VB.TextBox txt8 
         Height          =   375
         Left            =   5280
         TabIndex        =   26
         Top             =   1800
         Width           =   495
      End
      Begin VB.TextBox txt7 
         Height          =   375
         Left            =   5880
         TabIndex        =   25
         Top             =   1440
         Width           =   495
      End
      Begin VB.TextBox txt6 
         Height          =   375
         Left            =   5280
         TabIndex        =   24
         Top             =   1440
         Width           =   495
      End
      Begin VB.TextBox txt5 
         Height          =   375
         Left            =   5880
         TabIndex        =   23
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox txt4 
         Height          =   375
         Left            =   5280
         TabIndex        =   22
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox txt3 
         Height          =   375
         Left            =   5880
         TabIndex        =   21
         Top             =   720
         Width           =   495
      End
      Begin VB.TextBox txt2 
         Height          =   375
         Left            =   5280
         TabIndex        =   20
         Top             =   720
         Width           =   495
      End
      Begin VB.CheckBox chk9 
         Caption         =   "Domingo"
         Height          =   375
         Left            =   360
         TabIndex        =   18
         Top             =   2880
         Width           =   1695
      End
      Begin VB.CheckBox chk8 
         Caption         =   "Sabado"
         Height          =   375
         Left            =   360
         TabIndex        =   17
         Top             =   2520
         Width           =   1815
      End
      Begin VB.CheckBox chk7 
         Caption         =   "Viernes"
         Height          =   375
         Left            =   360
         TabIndex        =   16
         Top             =   2160
         Width           =   1455
      End
      Begin VB.CheckBox chk6 
         Caption         =   "Jueves"
         Height          =   375
         Left            =   360
         TabIndex        =   15
         Top             =   1800
         Width           =   1455
      End
      Begin VB.CheckBox chk5 
         Caption         =   "Miercoles"
         Height          =   375
         Left            =   360
         TabIndex        =   14
         Top             =   1440
         Width           =   1335
      End
      Begin VB.CheckBox chk4 
         Caption         =   "Martes"
         Height          =   375
         Index           =   1
         Left            =   360
         TabIndex        =   13
         Top             =   1080
         Width           =   1815
      End
      Begin VB.CheckBox chk3 
         Caption         =   "Lunes"
         Height          =   255
         Index           =   1
         Left            =   360
         TabIndex        =   12
         Top             =   840
         Width           =   1695
      End
      Begin VB.Label lbl5 
         Caption         =   "Hora:"
         Height          =   255
         Left            =   5280
         TabIndex        =   19
         Top             =   480
         Width           =   495
      End
   End
   Begin VB.ComboBox cbo1 
      Height          =   315
      Left            =   3960
      TabIndex        =   10
      Text            =   "Selecc"
      Top             =   1440
      Width           =   1935
   End
   Begin VB.CheckBox chk2 
      BackColor       =   &H80000010&
      Height          =   255
      Index           =   0
      Left            =   11040
      TabIndex        =   8
      Top             =   1560
      Width           =   255
   End
   Begin VB.CheckBox chk1 
      BackColor       =   &H80000010&
      Height          =   255
      Index           =   0
      Left            =   11040
      TabIndex        =   7
      Top             =   840
      Width           =   255
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "Salir"
      Height          =   495
      Left            =   9600
      TabIndex        =   6
      Top             =   6600
      Width           =   1455
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "Guardar"
      Height          =   495
      Left            =   3840
      TabIndex        =   5
      Top             =   6600
      Width           =   1455
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   3840
      TabIndex        =   4
      Top             =   720
      Width           =   2055
   End
   Begin VB.Label Label1 
      Caption         =   ":"
      Height          =   255
      Left            =   6960
      TabIndex        =   9
      Top             =   4080
      Width           =   135
   End
   Begin VB.Label lbl4 
      BackStyle       =   0  'Transparent
      Caption         =   "Es poceado?"
      Height          =   255
      Left            =   9960
      TabIndex        =   3
      Top             =   1560
      Width           =   1095
   End
   Begin VB.Label lbl3 
      BackStyle       =   0  'Transparent
      Caption         =   "Habilitado"
      Height          =   255
      Left            =   10200
      TabIndex        =   2
      Top             =   840
      Width           =   855
   End
   Begin VB.Label lbl2 
      BackColor       =   &H8000000D&
      BackStyle       =   0  'Transparent
      Caption         =   "Grupo"
      Height          =   375
      Left            =   3360
      TabIndex        =   1
      Top             =   1440
      Width           =   615
   End
   Begin VB.Label lbl1 
      BackStyle       =   0  'Transparent
      Caption         =   "Nombre"
      Height          =   255
      Left            =   3000
      TabIndex        =   0
      Top             =   720
      Width           =   855
   End
End
Attribute VB_Name = "Mantenedor_Producto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd2_Click()
End
End Sub

Private Sub Form_Load()
cbo1.AddItem "Quini 6"
cbo1.AddItem "Loteria"
cbo1.AddItem "Poceada Federal"
cbo1.AddItem "T�mbola"

End Sub

