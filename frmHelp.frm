VERSION 5.00
Begin VB.Form helpForm 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   7785
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   10200
   ControlBox      =   0   'False
   Icon            =   "frmHelp.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "frmHelp.frx":25CA
   ScaleHeight     =   7785
   ScaleWidth      =   10200
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox picHelp 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   7755
      Left            =   15
      Picture         =   "frmHelp.frx":490CA
      ScaleHeight     =   7755
      ScaleWidth      =   10200
      TabIndex        =   0
      Top             =   0
      Width           =   10200
      Begin VB.Label lblPunklabsLink 
         BackStyle       =   0  'Transparent
         Caption         =   "                                                         "
         Height          =   225
         Left            =   3810
         MousePointer    =   2  'Cross
         TabIndex        =   1
         Top             =   2925
         Width           =   915
      End
   End
End
Attribute VB_Name = "helpForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'---------------------------------------------------------------------------------------
' Procedure : picHelp_Click
' Author    : beededea
' Date      : 16/03/2020
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub picHelp_Click()
   On Error GoTo picHelp_Click_Error
   '''If debugflg = 1  Then msgBox "%picHelp_Click"
   
    Dim fileToPlay As String: fileToPlay = vbNullString

    Me.Hide ' no possibility of fade out in a VB6 form
    
    fileToPlay = "ting.wav"
    If gblPlEnableSounds = "1" And fFExists(App.Path & "\resources\sounds\" & fileToPlay) Then
        PlaySound App.Path & "\resources\sounds\" & fileToPlay, ByVal 0&, SND_FILENAME Or SND_ASYNC
    End If
   On Error GoTo 0
   Exit Sub

picHelp_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure picHelp_Click of Form about"
End Sub
