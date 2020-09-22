<div align="center">

## Screen Manager


</div>

### Description

Many people have built projects to capture desktop screen. Many functions have been called, BitBlt, GetDesktopWindow, GetDC, even keybd_event, to execute this process.

There is one thing you should know about screen capturing in Windows. Windows itself provides function to capture the screen! Actually, you do not need to build a project for it. Just press PrintScreen, and the captured screen will be stored in clipboard. Run mspaint (or any other graphic applications), and then paste. The screen is now stored as bitmap. Pressing Alt+PrintScreen will capture activewindow. I found this by myself.

What you should do is just managing the clipboard, so when user press printscreen, it automatically saves the clipboard to a file.

This simple project will manage your clipboard and automatically saves the bitmap as file. Run this app, minimize it, and then you can capture the screen freely.
 
### More Info
 


<span>             |<span>
---                |---
**Submitted On**   |2000-05-21 23:35:04
**By**             |[Albert Tedja](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByAuthor/albert-tedja.md)
**Level**          |Beginner
**User Rating**    |4.3 (17 globes from 4 users)
**Compatibility**  |VB 3\.0, VB 4\.0 \(16\-bit\), VB 4\.0 \(32\-bit\), VB 5\.0, VB 6\.0
**Category**       |[Complete Applications](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByCategory/complete-applications__1-27.md)
**World**          |[Visual Basic](https://github.com/Planet-Source-Code/PSCIndex/blob/master/ByWorld/visual-basic.md)
**Archive File**   |[CODE\_UPLOAD59665212000\.zip](https://github.com/Planet-Source-Code/albert-tedja-screen-manager__1-8234/archive/master.zip)








