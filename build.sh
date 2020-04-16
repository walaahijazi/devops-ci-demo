#! /bin/bash
#print this line
echo "running this build script"
echo "i am $HOSTNAME"
echo "the time is $(date +%m-%d-%Y)"
echo "the logged user is $USER"

T=$(date +"%m-%d-%Y")
g=devops-ci-demo
b=$gitBranch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
DIR=$PWD
name=$USER
SERVER_NAME=$HOSTNAME
sed -i "s/{SERVER_NAME}/${HOSTNAME}/g" web/index.html
sed -i "s/{TIMESTAMP}/$T/g" web/index.html
sed -i "s/{GIT-BRANCH}/$b/g" web/index.html
sed -i "s/{GIT_REPO}/$g/g" web/index.html
sed -i "s~{PWD}~$DIR~g" web/index.html
sed -i "s/{USER}/$name/g" web/index.html
sed -i "s/{AZURE_VARIABLE}/${AZURE_VARIABLE}/g" web/index.html


