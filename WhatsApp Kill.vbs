' InputBoxes
Contact = InputBox("With what contact do you want to do DDos?", "WhatsApp DDos By : Kaneki")
Message = InputBox("What is the message to send?","WhatsApp DDos By : Kaneki")
T = InputBox("How many times does the message need to be sent?","WhatsApp DDos By : Kaneki")
If MsgBox("You filled everything correctly", 1024 + vbSystemModal, "WhatsApp DDos By : Kaneki") = vbOk Then

' Go To WhatsApp
Set WshShell = WScript.CreateObject("WScript.Shell")
Return = WshShell.Run("https://web.whatsapp.com/", 1)

' Loading Time

If MsgBox("O WhatsApp Web is open?" & vbNewLine & vbNewLine & "Press No to cancel", vbYesNo + vbQuestion + vbSystemModal, "WhatsApp DDos By : Kaneki") = vbYes Then

' Go To The WhatsApp Search Bar
WScript.Sleep 100
WshShell.SendKeys "{TAB}"

' Go To The Contacts Chat
WScript.Sleep 100
WshShell.SendKeys Contact
WScript.Sleep 100
WshShell.SendKeys "{ENTER}"
WScript.Sleep 3000

' The Loop For The Messages
For i = 0 to T
WScript.Sleep 10
WshShell.SendKeys Message
WScript.Sleep 10
WshShell.SendKeys "{ENTER}"
Next

' End Of The Script
WScript.Sleep 3000
MsgBox "DDosing no " + Contact + " Was successfully done", 1024 + vbSystemModal, "DDos feito"

' Canceled Script
Else
MsgBox "Process was successfully canceled", vbSystemModal, "DDos Canceled"
End If
Else
End If
