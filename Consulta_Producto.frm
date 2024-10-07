VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Consulta_Producto 
   Caption         =   "Producto"
   ClientHeight    =   6300
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11925
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6300
   ScaleWidth      =   11925
   Begin VB.CommandButton cmd4 
      Caption         =   "SALIR"
      Height          =   615
      Index           =   1
      Left            =   7800
      TabIndex        =   12
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "NUEVO"
      Height          =   495
      Index           =   1
      Left            =   1680
      TabIndex        =   11
      Top             =   5160
      Width           =   1335
   End
   Begin MSFlexGridLib.MSFlexGrid MSFlexGrid1 
      Height          =   2535
      Left            =   840
      TabIndex        =   10
      Top             =   2520
      Width           =   9855
      _ExtentX        =   17383
      _ExtentY        =   4471
      _Version        =   393216
      Rows            =   3
      Cols            =   7
   End
   Begin VB.ComboBox cbo3 
      Height          =   315
      ItemData        =   "Consulta_Producto.frx":0000
      Left            =   8760
      List            =   "Consulta_Producto.frx":000A
      TabIndex        =   9
      Text            =   "Selecc"
      Top             =   1200
      Width           =   975
   End
   Begin VB.ComboBox cbo2 
      Height          =   315
      ItemData        =   "Consulta_Producto.frx":0020
      Left            =   8760
      List            =   "Consulta_Producto.frx":002A
      TabIndex        =   8
      Text            =   "Selecc"
      Top             =   360
      Width           =   975
   End
   Begin VB.ComboBox cbo1 
      Height          =   315
      ItemData        =   "Consulta_Producto.frx":0036
      Left            =   3120
      List            =   "Consulta_Producto.frx":0038
      TabIndex        =   7
      Text            =   "cbo1"
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   3000
      TabIndex        =   6
      Top             =   240
      Width           =   975
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "Buscar"
      Height          =   255
      Left            =   7800
      TabIndex        =   5
      Top             =   1920
      Width           =   1095
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "Limpiar"
      Height          =   255
      Left            =   2520
      TabIndex        =   4
      Top             =   1920
      Width           =   855
   End
   Begin VB.Label lbl4 
      Caption         =   "Tipo"
      Height          =   255
      Left            =   7800
      TabIndex        =   3
      Top             =   1200
      Width           =   375
   End
   Begin VB.Label lbl3 
      Caption         =   "Habilitado"
      Height          =   255
      Left            =   7560
      TabIndex        =   2
      Top             =   360
      Width           =   975
   End
   Begin VB.Label lbl2 
      Caption         =   "Grupo"
      Height          =   255
      Left            =   2160
      TabIndex        =   1
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label lbl1 
      Caption         =   "Nombre"
      Height          =   255
      Left            =   2040
      TabIndex        =   0
      Top             =   360
      Width           =   735
   End
End
Attribute VB_Name = "Consulta_Producto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim con As New ADODB.Connection
Dim rec As New ADODB.Recordset
Public id As Integer

Dim FGridDatos As MSFlexGrid

Private Sub cmd2_Click()
    Dim filtro As String
    Dim seleccion As String

    seleccion = Trim(txt1.Text) ' Eliminar espacios en blanco

    ' Mostrar el valor seleccionado para depuraci�n
    MsgBox "Valor ingresado para filtrar: '" & seleccion & "'"

    ' Crear el filtro seg�n la entrada
    If seleccion = "Si" Or seleccion = "No" Then
        filtro = " WHERE j.jue_habi = '" & seleccion & "'" ' Filtrar por 'S�' o 'No'
    Else
        MsgBox "Por favor, ingrese 'S' para S� o 'N' para No.", vbExclamation
        filtro = "" ' Si no hay selecci�n v�lida, no aplicar filtro
    End If

    ' Mostrar el filtro para depuraci�n
    MsgBox "Filtro aplicado: " & filtro

    ' Llamar a la subrutina que carga los datos en la grilla
    Call cargaDatos(filtro) ' Pasar el filtro como argumento
End Sub


Private Sub cmd4_Click(Index As Integer)
    End
End Sub

' Inicializar la conexi�n y cargar datos al cargar el formulario
Private Sub Form_Load()
    On Error GoTo ErrorHandler
    ' Asignar la grilla MSFlexGrid al objeto
    Set FGridDatos = Me.MSFlexGrid1
    
    ' Abrir la conexi�n a la base de datos
    con.Open "Driver=Sql Server;database=loteriaVB;server=JOEL-SAUCEDO"
    
    ' Llamar a la subrutina que carga los datos en la grilla
    Call cargaDatos("") ' Cargar todos los datos inicialmente

    Exit Sub

ErrorHandler:
    MsgBox "Error al cargar el formulario: " & Err.Description, vbCritical
    If con.State = adStateOpen Then
        con.Close
    End If
End Sub

' Subrutina para cargar datos y configurar la grilla
Sub cargaDatos(Optional filtro As String = "")
    ' Configuraci�n de la grilla (cabecera, columnas, etc.)
    Call gridFix
    
    ' Llamar a la subrutina que trae los datos desde la base de datos
    Call datFgrid(filtro) ' Pasar el filtro a la subrutina de carga de datos
End Sub

' Subrutina que configura la estructura de la grilla
Sub gridFix()
    ' Configurar las columnas de la grilla
    With FGridDatos
        .Rows = 1  ' Cabecera inicial
        .Cols = 8  ' N�mero de columnas a mostrar
        
        ' Definir encabezados de columnas
        .TextMatrix(0, 0) = "IdJuego"
        .TextMatrix(0, 1) = "Nombre"
        .TextMatrix(0, 2) = "CmpOcr"
        .TextMatrix(0, 3) = "Habilitado"
        .TextMatrix(0, 4) = "Lunes"
        .TextMatrix(0, 5) = "Martes"
        .TextMatrix(0, 6) = "Mi�rcoles"
        .TextMatrix(0, 7) = "Poceado"

        ' Ajustar ancho de columnas
        .ColWidth(0) = 1000
        .ColWidth(1) = 2000
        .ColWidth(2) = 1000
        .ColWidth(3) = 800
        .ColWidth(4) = 1000
        .ColWidth(5) = 1000
        .ColWidth(6) = 1000
        .ColWidth(7) = 800
    End With
End Sub

' Subrutina que carga los datos en la grilla
Sub datFgrid(filtro As String)
    On Error GoTo ErrorHandler

    ' Abrir el recordset con una consulta SQL para obtener los datos
    Dim sql As String
    sql = "SELECT " & _
        "j.idJuego AS IdJuego, " & _
        "j.jue_desc AS Descripci�n, " & _
        "j.jue_CmpOcr AS CmpOcr, " & _
        "CASE WHEN j.jue_habi = 'S' THEN 'S�' ELSE 'No' END AS Habilitado, " & _
        "j.jue_horLun AS Lunes, " & _
        "j.jue_horMar AS Martes, " & _
        "j.jue_horMie AS Mi�rcoles, " & _
        "CASE WHEN j.espoceado = 1 THEN 'Poceado' ELSE 'Bancado' END AS Poceado " & _
    "FROM Juego j " & _
    "LEFT JOIN ( " & _
        "SELECT DISTINCT jl.idJuego, lo.nombre " & _
        "FROM juego_loteria jl " & _
        "INNER JOIN loteria lo ON lo.idLoteria = jl.idLoteria " & _
    ") AS dbo_juego_loteria ON dbo_juego_loteria.idJuego = j.idJuego "

    If filtro <> "" Then
        sql = sql & filtro ' Agrega el filtro solo si no est� vac�o
    End If

    rec.Open sql, con, adOpenStatic, adLockReadOnly

    ' Verificar si el recordset tiene datos
    If Not rec.EOF Then
        ' Mover el cursor al primer registro
        rec.MoveFirst
        
        ' Configurar el n�mero de filas de la grilla seg�n el n�mero de registros
        FGridDatos.Rows = rec.RecordCount + 1
        
        ' Iterar sobre los registros y llenar la grilla
        Dim i As Integer
        i = 1  ' La fila 0 es la cabecera
        
        Do While Not rec.EOF
            ' Cargar los datos en cada columna de la grilla
            FGridDatos.TextMatrix(i, 0) = rec!IdJuego
            FGridDatos.TextMatrix(i, 1) = rec!Descripci�n
            FGridDatos.TextMatrix(i, 2) = rec!CmpOcr
            FGridDatos.TextMatrix(i, 3) = rec!Habilitado
            FGridDatos.TextMatrix(i, 4) = rec!Lunes
            FGridDatos.TextMatrix(i, 5) = rec!Martes
            FGridDatos.TextMatrix(i, 6) = rec!Mi�rcoles
            FGridDatos.TextMatrix(i, 7) = rec!Poceado
            
            ' Moverse al siguiente registro
            rec.MoveNext
            i = i + 1
        Loop
    Else
        ' Si no hay datos, mostrar mensaje
        MsgBox "No se encontraron registros para el filtro seleccionado.", vbInformation
    End If
    
    ' Cerrar el recordset despu�s de cargar los datos
    rec.Close
    Exit Sub

ErrorHandler:
    MsgBox "Error al cargar los datos: " & Err.Description, vbCritical
    If rec.State = adStateOpen Then rec.Close
End Sub

' Subrutina para cerrar la conexi�n cuando se cierre el formulario
Private Sub Form_Unload(Cancel As Integer)
    ' Verificar si la conexi�n est� abierta y cerrarla
    If con.State = adStateOpen Then
        con.Close
    End If
End Sub




