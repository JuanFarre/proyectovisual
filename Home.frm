VERSION 5.00
Begin VB.MDIForm Home 
   BackColor       =   &H8000000C&
   Caption         =   "Home"
   ClientHeight    =   4050
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   6345
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

Private Sub MDIForm_Load()
    ' Aquí puedes inicializar cosas si es necesario
    

End Sub

Private Sub mnuRepoProgMes_Click()
    Repo_Prog_Mes.Show
End Sub


Private Sub mnuSalir_Click()
    Unload Me ' Cierra el formulario principal
End Sub

