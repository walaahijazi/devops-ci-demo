#! /bin/bash
#print this line
echo "running this build script"
echo "i am $HOSTNAME"
echo "the time is $(date +%m-%d-%Y)"
echo "the logged user is $USER"
SERVER_NAME=$(hostname)
TIMESSTAMP=$(date +%m-%d-%Y)
GIT-REPO="devops-ci-demo"
GIT-BRANCH=$(git branch | sed -n -e 's/^\* \(. *\)/\1/p'
PWD=$(PWD)
USER=$name
sed "s/{SERVER_NAME}/$SERVER_NAME/g"web/index.html
sed -i "s/{TIMESTAMP}/$TIMESTAMP/g" web/index.html
sed -i "s?{GIT-BRANCH}?$GIT-BRANCH?g" web/index.html
sed -i "s?{GIT-REPO}?$GIT-REPO?g"web/index.html
sed -i "s/{PWD}/$PWD/g" web/index.html
sed -i "s/{USER}/$name/g" web/index.html

