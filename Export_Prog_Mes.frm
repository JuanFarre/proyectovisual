VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Export_Prog_Mes 
   Caption         =   "Export_Prog_Mes"
   ClientHeight    =   3375
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   5220
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3375
   ScaleWidth      =   5220
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   3840
      Top             =   840
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmd3 
      Caption         =   "..."
      Height          =   255
      Left            =   3360
      TabIndex        =   6
      Top             =   960
      Width           =   375
   End
   Begin VB.TextBox txt1 
      Height          =   285
      Left            =   1680
      TabIndex        =   5
      Text            =   "Seleccione"
      Top             =   960
      Width           =   1575
   End
   Begin VB.CommandButton cmd2 
      Caption         =   "SALIR"
      Height          =   375
      Left            =   2640
      TabIndex        =   4
      Top             =   2280
      Width           =   1215
   End
   Begin VB.CommandButton cmd1 
      Caption         =   "EXPORTAR"
      Height          =   375
      Left            =   600
      TabIndex        =   3
      Top             =   2280
      Width           =   1215
   End
   Begin VB.ComboBox cbo1 
      Height          =   315
      Left            =   1200
      TabIndex        =   2
      Text            =   "Seleccion"
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "Carpeta Destino"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label 
      Caption         =   "Mes"
      Height          =   255
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   375
   End
End
Attribute VB_Name = "Export_Prog_Mes"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim con As New ADODB.Connection
Dim rec As New ADODB.Recordset

Private Sub Form_Load()
    ' Inicializar la conexión a la base de datos
    con.Open "Driver=Sql Server;database=loteriaVB;server=JOEL-SAUCEDO"
    
    ' Cargar los meses en el ComboBox (cbo1)
    cargarMeses
End Sub

Private Sub cargarMeses()
    ' Añadir los meses al ComboBox
    With cbo1
        .AddItem "Enero"
        .AddItem "Febrero"
        .AddItem "Marzo"
        .AddItem "Abril"
        .AddItem "Mayo"
        .AddItem "Junio"
        .AddItem "Julio"
        .AddItem "Agosto"
        .AddItem "Septiembre"
        .AddItem "Octubre"
        .AddItem "Noviembre"
        .AddItem "Diciembre"
    End With
End Sub

Private Sub cmd3_Click()
    ' Abrir el cuadro de diálogo para seleccionar carpeta
    CommonDialog1.Flags = cdlOFNHideReadOnly
    CommonDialog1.ShowOpen

    ' Establecer el directorio seleccionado en el TextBox (txt1)
    txt1.Text = CommonDialog1.Filename
End Sub

Private Sub cmd1_Click()
    Dim Mes As String
    Dim carpetaDestino As String
    Dim archivoSalida As String
    Dim sql As String
    Dim mesNumero As String
    Dim nroSorteo As String
    Dim codigoJuego As String
    Dim fileNum As Integer

    ' Obtener el mes seleccionado y la carpeta de destino
    Mes = cbo1.Text
    carpetaDestino = txt1.Text

    ' Validar que se haya seleccionado un mes y una carpeta
    If Mes = "" Or carpetaDestino = "" Then
        MsgBox "Por favor, seleccione un mes y una carpeta de destino.", vbExclamation
        Exit Sub
    End If

    ' Convertir el mes a su número correspondiente
    mesNumero = Format(Month(DateValue("1 " & Mes)), "00") ' Obtiene el número del mes en formato 2 dígitos

    ' Generar la consulta SQL para obtener los datos
    sql = "SELECT j.idJuego, ps.nroSorteo " & _
          "FROM PgmSorteos ps " & _
          "INNER JOIN Juego j ON ps.idJuego = j.idJuego " & _
          "WHERE MONTH(ps.fecha) = " & Month(DateValue("1 " & Mes)) & " " & _
          "ORDER BY ps.nroSorteo;"

    ' Abrir el recordset con la consulta
    rec.Open sql, con, adOpenStatic, adLockReadOnly

    ' Verificar si hay datos
    If rec.EOF Then
        MsgBox "No hay datos para el mes elegido.", vbInformation
        Exit Sub
    End If

    ' Crear el nombre del archivo CSV
    Do While Not rec.EOF
        codigoJuego = Format(rec!idJuego, "00") ' Asegurar que el idJuego tenga 2 dígitos
        nroSorteo = Format(rec!nroSorteo, "000000") ' Asegurar que el nroSorteo tenga 6 dígitos
        archivoSalida = carpetaDestino & "\PS" & codigoJuego & nroSorteo & ".csv"
        
        ' Crear o abrir el archivo para escribir
        fileNum = FreeFile
        Open archivoSalida For Output As #fileNum
        
        ' Escribir los encabezados en el archivo CSV (ajusta esto según tus necesidades)
        Print #fileNum, "IdJuego,NroSorteo"
        
        ' Iterar sobre los registros y escribirlos en el archivo CSV
        Do While Not rec.EOF
            Print #fileNum, rec!idJuego & "," & rec!nroSorteo
            rec.MoveNext
        Loop
        
        Close #fileNum
        
        MsgBox "Se ha generado satisfactoriamente el archivo " & archivoSalida, vbInformation
    Loop
    
    ' Cerrar el recordset
    rec.Close
End Sub

Private Sub cmd2_Click()
    ' Cerrar el formulario
    Unload Me
End Sub

Private Sub Form_Unload(Cancel As Integer)
    ' Verificar si la conexión está abierta y cerrarla
    If con.State = adStateOpen Then
        con.Close
    End If
End Sub


