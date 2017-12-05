;将本地图片插入Markdown
^+C:: ;ctrl+shift+c
clipboard= ;清空剪贴板
clip =
send, ^c
clipwait
Loop, parse, clipboard, `n, `r
{
obj = %A_LoopField%
IfInString, obj, .png
{
clip = 
(
<p align="center">![](%A_LoopField%)</p>
%clip%
)
}
IfInString, obj, .mp3
{
clip = 
(
<p align="center"><video width="480" height="36" controls><source src="%A_LoopField%"></video></p>
%clip%
)
}
IfInString, obj, .jpg
{
clip = 
(
<p align="center">![](%A_LoopField%)</p>
%clip%
)
}
else
	MsgBox, 请选中jpg,png或者mp3格式的文件
}
clipboard = %clip%
msgbox, 多媒体路径已复制！%clipboard%
return




