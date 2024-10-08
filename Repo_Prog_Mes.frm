VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Begin VB.Form Repo_Prog_Mes 
   Caption         =   "Repo_Prog_Mes"
   ClientHeight    =   3945
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   8100
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3945
   ScaleWidth      =   8100
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

Dim con As New ADODB.Connection
Dim rec As New ADODB.Recordset
Dim FGridDatos As MSFlexGrid

' Al cargar el formulario, inicializa la conexión y carga los meses en el ComboBox
Private Sub Form_Load()
    On Error GoTo ErrorHandler
    ' Asignar la grilla MSFlexGrid
    Set FGridDatos = Me.MSFlexGrid1
    
    ' Abrir la conexión
    con.Open "Driver=Sql Server;database=loteriaVB;server=JOEL-SAUCEDO"

    ' Llenar el ComboBox con los últimos dos meses
    Call llenarComboMeses

    Exit Sub

ErrorHandler:
    MsgBox "Error al cargar el formulario: " & Err.Description, vbCritical
    If con.State = adStateOpen Then
        con.Close
    End If
End Sub

' Llenar el ComboBox con los últimos dos meses que tienen datos
Sub llenarComboMeses()
    Dim sql As String
    sql = "SELECT DISTINCT TOP 2 MONTH(fechaHora) AS Mes, YEAR(fechaHora) AS Año " & _
          "FROM PgmSorteo ORDER BY Año DESC, Mes DESC"

    rec.Open sql, con, adOpenStatic, adLockReadOnly
    
    If Not rec.EOF Then
        rec.MoveFirst
        Do While Not rec.EOF
            cbo1.AddItem rec!Mes & "/" & rec!año
            rec.MoveNext
        Loop
    End If
    rec.Close
End Sub

' Cuando se selecciona un mes, actualizar la grilla con los datos de sorteos de ese mes
Private Sub cbo1_Change()
    ' Obtener el mes seleccionado
    Dim selectedMonth As String
    selectedMonth = cbo1.Text
    
    ' Validar que haya una selección
    If selectedMonth <> "" Then
        ' Llamar a la función para cargar los datos en la grilla
        Call cargarDatosEnGrilla(selectedMonth)
    End If
End Sub

' Subrutina para cargar los datos en la grilla
Sub cargarDatosEnGrilla(selectedMonth As String)
    On Error GoTo ErrorHandler
    
    ' Configuración de la grilla
    Call configurarGrilla

    ' Consulta SQL para traer los sorteos del mes seleccionado
    Dim sql As String
    sql = "SELECT j.nombre AS Producto, p.nroSorteo AS Sorteo, " & _
          "p.fechahora AS [Fecha de Sorteo], FORMAT(p.fechahora, 'HH:mm:ss') AS [Hora de Sorteo], " & _
          "p.fechaHoraPrescripcion AS [Fecha de Prescripción], p.fechaHoraProximo AS [Fecha de Próximo Sorteo] " & _
          "FROM PgmSorteo p INNER JOIN Juego j ON p.idJuego = j.idJuego " & _
          "WHERE MONTH(p.fechahora) = " & Split(selectedMonth, "/")(0) & " " & _
          "AND YEAR(p.fechahora) = " & Split(selectedMonth, "/")(1) & " " & _
          "ORDER BY p.fechahora, p.fechaHora"

    ' Abrir el recordset
    rec.Open sql, con, adOpenStatic, adLockReadOnly

    ' Verificar si hay datos
    If Not rec.EOF Then
        rec.MoveFirst
        Dim i As Integer
        i = 1
        FGridDatos.Rows = rec.RecordCount + 1 ' Ajustar filas

        ' Llenar la grilla
        Do While Not rec.EOF
            FGridDatos.TextMatrix(i, 0) = rec!Producto
            FGridDatos.TextMatrix(i, 1) = rec!Sorteo
            FGridDatos.TextMatrix(i, 2) = rec!Fecha_de_Sorteo
            FGridDatos.TextMatrix(i, 3) = rec!Hora_de_Sorteo
            FGridDatos.TextMatrix(i, 4) = rec!Fecha_de_Prescripción
            FGridDatos.TextMatrix(i, 5) = rec!Fecha_de_Próximo_Sorteo
            rec.MoveNext
            i = i + 1
        Loop
    End If

    rec.Close
    Exit Sub

ErrorHandler:
    MsgBox "Error al cargar los datos: " & Err.Description, vbCritical
    If rec.State = adStateOpen Then rec.Close
End Sub

' Configurar la estructura de la grilla
Sub configurarGrilla()
    With FGridDatos
        .Rows = 1 ' Cabecera inicial
        .Cols = 6 ' Número de columnas
        
        ' Definir encabezados
        .TextMatrix(0, 0) = "Producto"
        .TextMatrix(0, 1) = "Sorteo"
        .TextMatrix(0, 2) = "Fecha de Sorteo"
        .TextMatrix(0, 3) = "Hora de Sorteo"
        .TextMatrix(0, 4) = "Fecha de Prescripción"
        .TextMatrix(0, 5) = "Fecha de Próximo Sorteo"

        ' Ajustar ancho de columnas
        .ColWidth(0) = 2000
        .ColWidth(1) = 1500
        .ColWidth(2) = 2000
        .ColWidth(3) = 1500
        .ColWidth(4) = 2000
        .ColWidth(5) = 2000
    End With
End Sub


