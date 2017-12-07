# -*- coding: utf-8 -*- 
import os
import time
import subprocess
import datetime

signe=0
refFile=r'time.txt'
refTime=os.path.getmtime(refFile)   #输出最近修改时间
args = " --force --verbose --quality=45-80 --ext=.png"
folder = "C:\Users\lencs\Desktop\Drive\picaudio"

print refTime
for file in os.listdir(folder):
	if file.endswith(".png"):
		moFile = os.path.join(folder, file)
		moTime=os.path.getmtime(moFile)
		if refTime < moTime:
			moPath = os.path.abspath(moFile)
			status = subprocess.call("pngquant.exe " + moPath + args, shell=True)
			signe=1

if signe:
	with open('time.txt', 'w') as t:
		t.write(moFile)
		t.close( )

"""
pngquant.exe @path --force --verbose --quality=45-80 --ext=.png
print os.path.normpath(refFile)   #输出'/Volumes/Leopard/Users/Caroline/Desktop/1.mp4'
print os.path.getsize(refFile)    #输出文件大小（字节为单位）
print os.path.getctime(refFile)   #输出文件创建时间
print os.path.getatime(refFile)   #输出最近访问时间1318921018.0
print time.gmtime(os.path.getmtime(refFile))   #以struct_time形式输出最近修改时间
print os.path.abspath(moFile)    #输出绝对路径'/Volumes/Leopard/Users/Caroline/Desktop/1.mp4'

"""
