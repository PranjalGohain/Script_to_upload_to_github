#!/bin/sh

USER='PranjalGohain'
REPO='C:\Users\gohain\Desktop\test upload'
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
${GIT} clone git@github.com:PranjalGohain/Script_to_upload_to_github.git
${GIT} pull git@github.com:PranjalGohain/Script_to_upload_to_github.git
${GIT} branch Google
${GIT} checkout Google
${GIT} add --all . >> ${LOG}
${GIT} commit -m "Automated commit on ${COMMIT_TIMESTAMP}" >> ${LOG}
${GIT} push git@github.com:PranjalGohain/Script_to_upload_to_github.git Google >> ${LOG}