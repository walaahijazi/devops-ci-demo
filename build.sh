#! /bin/bash
SERVER_NAME=$(hostname)
TIMESSTAMP=$(date +%m-%d-%Y)
GIT-REPO="devops-ci-demo"
GIT-BRANCH=$(git branch | sed -n -e 's/^\* \(. *\)/\1/p'
PWD=$PWD
sed -i "s/{TIMESTAMP}/$TIMESTAMP/g" new index


