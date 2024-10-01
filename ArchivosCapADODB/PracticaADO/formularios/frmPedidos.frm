VERSION 5.00
Begin VB.Form frmPedidos 
   Caption         =   "Form1"
   ClientHeight    =   7245
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6750
   LinkTopic       =   "Form1"
   ScaleHeight     =   7245
   ScaleWidth      =   6750
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdListarPedidos 
      Caption         =   "Listar Pedidos"
      Height          =   375
      Left            =   5040
      TabIndex        =   1
      Top             =   6840
      Width           =   1575
   End
   Begin VB.TextBox txtPedidos 
      Height          =   6615
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   120
      Width           =   6495
   End
End
Attribute VB_Name = "frmPedidos"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private objPedido As clsPedido

Private Sub Form_Load()
    Set objPedido = New clsPedido
End Sub

Private Sub cmdListarPedidos_Click()
    Dim rs As ADODB.Recordset
    Dim sb As String
    Dim linea As String
    Dim pedidoId As Long
    Dim primerProducto As Boolean
    
    Set rs = objPedido.ObtenerDatosPedidos()
    
    If Not rs.EOF Then
        sb = ""
        primerProducto = True
        
        ' Iterar a través de los registros y construir el texto
        Do While Not rs.EOF
            If primerProducto Or rs.Fields("ped_id").Value <> pedidoId Then
                If Not primerProducto Then
                    ' Añadir separador y pasar al siguiente pedido
                    sb = sb & String(50, "-") & vbCrLf
                End If
                pedidoId = rs.Fields("ped_id").Value
                sb = sb & "Pedido ID: " & pedidoId & ".                 Fecha: " & Format(rs.Fields("ped_fec").Value, "dd/mm/yyyy") & vbCrLf
                sb = sb & "                                      Vencimiento: " & Format(rs.Fields("ped_fecvenc").Value, "dd/mm/yyyy") & vbCrLf
                sb = sb & "Cliente: " & rs.Fields("cliente_nombre").Value & vbCrLf
                sb = sb & "Total: $" & Format(rs.Fields("ped_total").Value, "#,##0.00") & vbCrLf
                
                sb = sb & "" & vbCrLf
                primerProducto = False
            End If
            
            ' Agregar los productos para este pedido
            If Not IsNull(rs.Fields("producto_nombre").Value) Then
                linea = "    Producto: " & rs.Fields("producto_nombre").Value & vbCrLf
                linea = linea & "    Valor: $" & Format(rs.Fields("pro_valor").Value, "#,##0.00") & vbCrLf
                sb = sb & linea
            End If
            
            rs.MoveNext
        Loop
        
        ' Añadir el último separador
        sb = sb & String(50, "-") & vbCrLf
        
        ' Asignar el texto al TextBox
        txtPedidos.Text = sb
    Else
        txtPedidos.Text = "No hay pedidos disponibles."
    End If
    
    'limpiar recordset
    rs.Close
    Set rs = Nothing
    
End Sub
