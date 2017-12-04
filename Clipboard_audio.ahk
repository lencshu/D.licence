;将本地音频插入Markdown
^+z:: ;ctrl+shift+z
clipboard= ;清空剪贴板
clip =
send, ^c
clipwait
Loop, parse, clipboard, `n, `r
{
clip = 
(
<p align="center"><video width="480" height="36" controls><source src="%A_LoopField%"></video></p>
%clip%
)
}
clipboard = %clip%
msgbox, 音频路径已复制！%clipboard%
return

