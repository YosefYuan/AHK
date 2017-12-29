
;音量控制

^F10::SoundSet, +1, , mute

^F11::
SoundSet +5, MASTER
SoundSet, +5,WAVE
Return

^F12::
SoundSet -5, MASTER
SoundSet, -5,WAVE
Return


;打開計算器
#v::run calc.exe

;打開regexper
#a::run https://regexper.com/


;打開regexper
#g::run https://www.google.com/


;打開百度
#b::run https://www.baidu.com


;打開地圖
#m::run http://map.baidu.com/

;郵件
#o::run OUTLOOK.EXE

::/dd::
d = %A_YYYY%-%A_MM%-%A_DD%
;获得系统时间比如今天的时间：2007-10-21。如果需要“年”的话请替换上面的“-”。
clipboard = %d%
;把 d 的值发送到剪贴板，变量是不用声明的，想引用变量的值，就在变量的前后加“%”。第二行的变量是 AHK 自带的变量。
Send ^v
return

#f::run C:\Program Files\Everything\Everything.exe

#c::
MouseGetPos, mouseX, mouseY
; 获得鼠标所在坐标，把鼠标的 X 坐标赋值给变量 mouseX ，同理 mouseY
PixelGetColor, color, %mouseX%, %mouseY%, RGB
; 调用 PixelGetColor 函数，获得鼠标所在坐标的 RGB 值，并赋值给 color
StringRight color,color,6
; 截取 color（第二个 color） 右边的 6 个字符，因为获得的值是这样的：#RRGGBB，一般我们只需要 RRGGBB 部分。把截取到的值再赋给 color（第一个 color）。
clipboard = %color%
; 把 color 的值发送到剪贴板
return

#t::
InputBox, time, 煎蛋牌泡面专用计时器, 请输入一个时间（单位是秒）
; 弹出一个输入框，标题是“煎蛋牌泡面专用计时器”，内容是“请输入一个时间（单位是秒）”time*1000如果一个变量要做计算的话，一定要像这样写，和平常的算式相比，多了一个冒号。sleep 的时间是按照千分之一秒算的，这里乘以 1000 就变成秒了。eep,%time%
MsgBox 水开拉
return






