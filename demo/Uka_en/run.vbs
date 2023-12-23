'Note: please save this file with Shift-JIS (CP932) (not UTF-8!) when a path contains Japanese
Set ws = CreateObject("Wscript.Shell")
Set fe = ws.Environment("Process")
'fe.item("OPENCV_VIDEOIO_MSMF_ENABLE_HW_TRANSFORMS") = "0"
ws.run "cmd /c ..\..\..\MMDAgent-EX\Release\MMDAgent-EX.exe demo.mdf", vbhide
