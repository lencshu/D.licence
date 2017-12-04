;将本地音频插入Markdown
^+z:: ;ctrl+shift+z
clipboard= ;清空剪贴板
send, ^c
clipwait
clipboard =
(Join`r`n
<p align="center"><video width="480" height="36" controls><source src="%clipboard%"></video></p>

)
msgbox, 音频路径已复制！%clipboard%
return