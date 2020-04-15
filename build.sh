#! /bin/bash
export SERVER_NAME=$(hostname)
export TIMESSTAMP=$(date +%m-%d-%Y)
export GIT-REPO="devops-ci-demo"
export GIT-BRANCH=$(git branch | sed -n -e 's/^\* \(. *\)/\1/p'
export PWD=$PWD
sed -i "s/{/\${/g" web/index.html
envsubst'$TIMESSTAMP $GIT-REPO $GIT-BRANCH $SERVER_NAME $PWD' > web/new index < web/index.html


