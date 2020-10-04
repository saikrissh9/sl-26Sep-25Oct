pipeline {
    agent any
    stages {
        stage('Hello') {
            steps {
                echo 'This is the best hello world program ever written'
            }
        }
        stage('CheckoutGitrepo') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/sk12k/sl-26Sep-25Oct.git']]])
            }
        }
        stage('Deploy') {
            steps {
                sh '''cd /tmp
                ./deploy.sh'''
            }
        }
    }
}

