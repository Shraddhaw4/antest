pipeline {
    agent {label 'packer'}
  
    stages {
        stage('Checkout') {
            steps {
                    // Checkout the code from your private Git repository
                git "https://github.com/Shraddhaw4/antest.git"
            }
        }

        stage ('Check if hosts are rechable') {
            steps {
                script {
                    dir(BUILD_NUMBER) {
                        echo "User is : ${BUILD_NUMBER}"
                        sh 'cp /home/jenkins/workspace/antest/test /home/jenkins/workspace/${JOB_NAME}/${BUILD_NUMBER}/'
                    }
                }
            }
        }
    }
}
