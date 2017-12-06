# -*- coding: utf-8 -*- 
from bs4 import BeautifulSoup
import re
import os

if os.path.exists("index.html") :
	os.remove("index.html")
html = open('D.licence.html',"r+")

soup = BeautifulSoup(html, "html.parser")
#Rename
divto = soup.find("div", class_="to")
divtoc = soup.find("div", class_="toc")
print divto
if divto!=None or divto!="": 
    divto.append(divtoc)
divto.div['class'] = 'tod'
html = soup.prettify("utf-8")

keyword="outline: 1300px solid #fff;"
post = html.find(keyword)
if post != -1:
    html = html[:post+len(keyword)]+"float:right;padding-left:10px;width:60%;"+html[post+len(keyword):]
    html = html.replace('///C://Users/lencs/Desktop/Drive/', '')
    html = html.replace('C:\\Users\\lencs\\Desktop\\Drive\\', '')
    file = open('index.html', 'w')
    file.write(html)
file.close( )
os.remove("D.licence.html")


'''
img alt="" src
img class="lazyload" alt="" data-src

<audio
<audio class="lazyload" data-poster="" preload="none" controls="">
      <source src="picaudio\f8a6998f-8dd9-400a-8ba9-e61ad1213e16.mp3"/>
     </audio>
'''