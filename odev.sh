#!/bin/bash

echo "Lütfen alttaki seçeneklerden birini seçiniz"
echo "1 saldırı yap"
echo "2 bahis oyna"
echo "3 kelime sayısını bul"
echo "githuba yükle"
read s

if [ $s -eq 1 ]; then
  echo "Ping atmak istediğiniz adresi giriniz:"
  read p
  ping $p

elif [ $s -eq 2 ]; then
  python3 -c "
import random

fb = random.randint(0, 10)
gs = random.randint(0, 10)

if fb > gs:
    print('FB yendi, skor:')
    print('FB:', fb)
    print('GS:', gs)
elif gs > fb:
    print('GS kazandı, skor:')
    print('FB:', fb)
    print('GS:', gs)
else:
    print('Berabere, skor:')
    print('FB:', fb)
    print('GS:', gs)
"

elif [ $s -eq 3 ]; then
  python3 -c "
# Python kodu kelime sayısı hesaplamak için
g = 'Ulaştırma ve Altyapı Bakanlığı, İstanbul Boğazı\'nda gemi trafikalmasının sınırlı görüş sis nedeniyle çift yönlü ve geçici olarak askıya alındığını duyurdu. Saat 09:00 sıralarında boğaz trafiği normale döndü.'

# Kelimeleri ayırma
kelimeler = g.split(' ')

def kelime_sayisi(kelimeler):
    for kelime in kelimeler:
        print(f'Kelime: {kelime}, Uzunluğu: {len(kelime)}')

kelime_sayisi(kelimeler)
"

elif [ $s -eq 4 ]; then
 echo "Var olan repoya yüklemek için 1 yeni repoya yüklemek için 2 ye basın"
 if [ $aa -eq 1 ]; then
  echo "reponun linkini verin"
  read l
  echo "Yorum giriniz"
  read ee
  git init
  git add README.md
  git commit -m "$ee"
  git branch -M main
  git remote add origin $l
  git push -u origin main
 elif [ $aa -eq 2 ]; then
  echo "reponun linkini verin"
  read l
  git remote add origin $l
  git branch -M main
  git push -u origin main
else
  echo "Geçersiz seçenek."
fi
else
  echo "Geçersiz seçenek."
fi
