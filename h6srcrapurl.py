import requests
from bs4 import BeautifulSoup
from collections import deque
import threading


def url_olustur(url2):
    yeni_url = requests.get(url2)
    soup = BeautifulSoup(yeni_url.content,'html.parser')
    list = soup.find_all("div",{"class":"f-cat f-item"})
    for i in list:
        for b in i.findAll("ul",{"class": "list underline"}):
            for link in b.findAll('a'):
                my_link = link.get('href')+"\n"
                newlink="www.milligazete.com.tr{}".format(my_link)
                with open("ist.txt","a",encoding="utf-8") as file:
                    file.write(newlink+"\n")
    

link= ["https://www.milligazete.com.tr/arsiv/2025-03-19","https://www.milligazete.com.tr/arsiv/2025-03-20","https://www.milligazete.com.tr/arsiv/2025-03-21","https://www.milligazete.com.tr/arsiv/2025-03-22","https://www.milligazete.com.tr/arsiv/2025-03-23","https://www.milligazete.com.tr/arsiv/2025-03-24"]
for gun in link:
    url_olustur(gun)
