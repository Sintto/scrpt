#!/bin/bash
VarGit=$(curl https://raw.githubusercontent.com/Sintto/skusamGit/main/index.html | md5sum | cut -c1-32)
VarLocal=$(md5sum /home/sinto/index.html | cut -c1-32)
echo $VarGit
if [[ $VarGit != $VarLocal ]]
then
        curl -O https://raw.githubusercontent.com/Sintto/skusamGit/main/index.html
        echo "so zmenou"
else
        echo "bez zmeny"
fi
#eeere
