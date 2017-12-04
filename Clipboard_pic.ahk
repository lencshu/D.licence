;将本地图片插入Markdown
^+c:: ;ctrl+shift+c
clipboard= ;清空剪贴板
clip =
send, ^c
clipwait
Loop, parse, clipboard, `n, `r
{
clip = 
(
<p align="center">![](%A_LoopField%)</p>
%clip%
)
}
clipboard = %clip%
msgbox, 图片路径已复制！%clipboard%
return

