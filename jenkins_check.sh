#/bin/bash

declare JENKINS_PORT
declare JENKINS_URL

export JENKINS_PORT=8080
export JENKINS_URL=http://13.232.173.240

function calling_ssh(){
ssh -p $JENKINS_PORT $JENKINS_URL declarative-linter < Jenkinsfile
}
calling_ssh
