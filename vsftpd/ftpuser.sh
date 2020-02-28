#!/usr/bin/bash
#by fuqiang
#2020-02-25

userlist=(admin chenlifu zhangdongmei huangtianyou)
passwdlist=(adminxxx Clfxxx Zdmxxx Htyxxx)
numlist=(0 1 2 3)

for i in ${numlist[*]};
do 
#新增用户
  useradd -m -d /home/${userlist[i]} -s /bin/bash ${userlist[i]}
#  if [$? -eq 0 ];
#  then
#    echo "user ${userlist[i]} is created successfully!"
#  else
#    echo "user ${userlist[i]} is created failly!"
#  fi
#配置密码
  echo ${passwdlist[i]} | passwd ${userlist[i]} --stdin &>/dev/null
#  if [$? -eq 0 ];
#  then
#    echo "${userlist[i]}'s passwd is set successfully! "
#  else
#    echo "${userlist[i]}'s passwd is set failly!"
#  fi
#限制用户不能使用ssh
  usermod -s /sbin/nologin ${userlist[i]}
#配置用户组
#  usermod -g ftp ${userlist[i]}
done





