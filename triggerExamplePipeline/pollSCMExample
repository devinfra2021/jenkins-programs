pipeline {
    agent any
    options{
        buildDiscarder(logRotator(numToKeepStr: '1'))
    }
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('Example') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
