VERSION 5.00
Begin VB.Form frmCapture 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Screen Manager"
   ClientHeight    =   1410
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6675
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1410
   ScaleWidth      =   6675
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtFile 
      Height          =   285
      Left            =   1020
      TabIndex        =   3
      Text            =   "Screen"
      Top             =   780
      Width           =   1095
   End
   Begin VB.TextBox txtPath 
      Height          =   285
      Left            =   1020
      TabIndex        =   1
      Text            =   "C:\My Documents\"
      Top             =   120
      Width           =   5535
   End
   Begin VB.Timer tmrCheck 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   6180
      Top             =   840
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "e.g : Screen"
      Height          =   195
      Index           =   4
      Left            =   1020
      TabIndex        =   6
      Top             =   1140
      Width           =   870
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   ".bmp"
      Height          =   195
      Index           =   3
      Left            =   2220
      TabIndex        =   5
      Top             =   840
      Width           =   345
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "File name :"
      Height          =   195
      Index           =   2
      Left            =   120
      TabIndex        =   4
      Top             =   840
      Width           =   765
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "e.g : C:\My Documents\"
      Height          =   195
      Index           =   1
      Left            =   1020
      TabIndex        =   2
      Top             =   480
      Width           =   1725
   End
   Begin VB.Label lbl 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Path :"
      Height          =   195
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   180
      Width           =   420
   End
End
Attribute VB_Name = "frmCapture"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim curclip As Long

Dim fpath As String
Dim fname As String
Dim curfname As String
Dim picind As Integer

Private Sub Form_Activate()
    Clipboard.Clear
    fpath = txtPath.Text
    fname = txtFile.Text
    picind = 0
    tmrCheck = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
    tmrCheck = False
    Clipboard.Clear
    End
End Sub

Private Sub tmrCheck_Timer()
    fpath = txtPath.Text
    fname = txtFile.Text
    curclip = Clipboard.GetData
    If curclip <> 0 Then
        curfname = fname & Format(picind, "00") & ".bmp"
        SavePicture Clipboard.GetData, fpath & curfname
        Clipboard.Clear
        picind = picind + 1
    End If
End Sub
