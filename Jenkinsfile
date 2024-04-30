pipeline {
    agent {label 'packer'}
  
    stages {
        stage('Checkout') {
            steps {
                    // Checkout the code from your private Git repository
                git "https://github.com/Shraddhaw4/antest.git"
            }
        }

        stage ('Create hosts file') {
            steps {
                sh 'touch hosts'
            }
        }
    }
}
