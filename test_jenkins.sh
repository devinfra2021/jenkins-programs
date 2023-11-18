#/bin/bash

declare JENKINS_PORT
declare JENKINS_URL

export JENKINS_PORT=8080
export JENKINS_URL=http://x.x.x.x.x


JENKINS_CRUMB=`curl "$JENKINS_URL/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,\":\",//crumb)"`
curl -X POST -H $JENKINS_CRUMB -F "jenkinsfile=<Jenkinsfile" $JENKINS_URL/pipeline-model-converter/validate
