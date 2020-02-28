#!/usr/bin/bash
#by fuqiang
#2020-02-25

userlist=(admin chenlifu zhangdongmei huangtianyou)

for i in ${userlist[*]};
do 
  userdel $i
  groupdel $i
done





