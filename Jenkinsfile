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
                    dir(${BUILD_NUMBER})
                    sh 'cp inv /home/ec2-user/${BUILD_NUMBER}'
                }
            }
        }
    }
}