VERSION 5.00
Begin VB.Form Home 
   Caption         =   "POC VB6 - Programación de Sorteos"
   ClientHeight    =   3015
   ClientLeft      =   225
   ClientTop       =   870
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
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
         Caption         =   "Repo.Prog.Mes"
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
         Caption         =   "Autoridadd"
      End
   End
End
Attribute VB_Name = "Home"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

