VERSION 5.00
Begin VB.MDIForm Home 
   BackColor       =   &H8000000C&
   Caption         =   "Home"
   ClientHeight    =   6930
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   13755
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   Begin VB.Menu mnuHome 
      Caption         =   "Home"
      Begin VB.Menu mnuSalir 
         Caption         =   "Salir"
      End
   End
   Begin VB.Menu mnuProgramacion 
      Caption         =   "Programacion"
      Begin VB.Menu mnuRepoProgMes 
         Caption         =   "Repo. Prog. Mes"
      End
      Begin VB.Menu mnuExportProgMes 
         Caption         =   "Export.Prog.Mes"
      End
   End
   Begin VB.Menu mnuMantenedores 
      Caption         =   "Mantenedores"
      Begin VB.Menu mnuProductos 
         Caption         =   "Productos"
      End
      Begin VB.Menu mnuModalidades 
         Caption         =   "Modalidades"
      End
      Begin VB.Menu mnuValorApuesta 
         Caption         =   "Valor Apuesta"
      End
      Begin VB.Menu mnuCargos 
         Caption         =   "Cargos"
      End
      Begin VB.Menu mnuUsuarios 
         Caption         =   "Usuarios"
      End
      Begin VB.Menu mnuAutoridad 
         Caption         =   "Autoridad"
      End
      Begin VB.Menu mnuLoteria 
         Caption         =   "Loteria"
      End
   End
End
Attribute VB_Name = "Home"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private cnn As clsConexion


Private Sub MDIForm_Load()
    Set cnn = New clsConexion
    
    cnn.Conectar
End Sub

Private Sub mnuExportProgMes_Click()
    Export_Prog_Mes.Show
End Sub

Private Sub mnuProductos_Click()
    Consulta_Producto.Show
End Sub

Private Sub mnuRepoProgMes_Click()
    Repo_Prog_Mes.Show
End Sub


Private Sub mnuSalir_Click()
    Unload Me
End Sub

