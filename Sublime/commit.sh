#!/bin/sh

USER='username'
REPO='C:\Users\gohain\Desktop\WBC_AOX_290318\master\OO-Repo'
COMMIT_TIMESTAMP=`date +'%Y-%m-%d %H:%M:%S %Z'`
DATELOG=`date +'%Y-%m-%d-%H-%M-%S'`
LOG="C:\Temp\${DATELOG}.txt"

GIT=`which git`

# Only proceed if we have a valid repo.
if [ ! -d ${REPO}/.git ]; then
  echo "${REPO} is not a valid git repo! Aborting..." >> ${LOG}
  exit 0
else
  echo "${REPO} is a valid git repo! Proceeding..." >> ${LOG}
fi

cd ${REPO}
${MKDOCS} build --clean >> ${LOG}
${GIT} add --all . >> ${LOG}
${GIT} commit -m "Automated commit on ${COMMIT_TIMESTAMP}" >> ${LOG}
${GIT} push git@github.com:PranjalGohain/Project_Upload_Jenkins.git master >> ${LOG}

# Depends on libnotify
${NOTIFY} 'KB notification' 'Changes were pushed to Bitbucket.' --icon=dialog-information >> ${LOG}