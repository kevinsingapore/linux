#!/usr/bin/bash
#by fuqiang
#2020-02-25

userlist=(admin chenlifu zhangcongjin chenxianan liujintao yipinpin yandi zhangxiaofeng zhangdongmei qinnan chenhuikai huangdebin zhangjiyu huangtianyou liuchunfeng gongdaohuan yangbin zhouanqi)

passwdlist=(admin Clf Zcj Cxn Ljt Ypp Yd Zxf Zdm Qn Chk Hdb Zjy Hty Lcf Gdh Yb Zaq) 

numlist=(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17) 

cd /etc/nginx/
touch passwd.db

for i in ${numlist[*]};
do
    htpasswd -b passwd.db ${userlist[i]} ${passwdlist[i]}
done
