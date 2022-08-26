#!/bin/bash

mkdir /publico 
mkdir /adm
mkdir /ven
mddir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_ADM

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_VEN

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

