#!/bin/sh

GIT=`which git`
REPO_DIR=C:\Users\gohain\Desktop\WBC_AOX_290318\master\
cd ${REPO_DIR}
${GIT} git branch WBC_AOX_01042018
${GIT} git checkout WBC_AOX_01042018
${GIT} add --all .
${GIT} commit -m "Test commit"
${GIT} push git@github.com:PranjalGohain/Project_Upload_Jenkins.git slave