#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usúarios"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Craindo usuários"

useradd carlos -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_ADM

useradd paulo  -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_VEN
useradd manu  -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto  -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_VEN

useradd ligia  -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_SEC
useradd barbara  -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_SEC
useradd livia  -m -s /bin/bash -p ($openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
