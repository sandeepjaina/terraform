pipeline {
    agent{
        node { label 'centos' }
    }


    stages {
        stage('one') {
            steps {
                sh '''
                 hostname
                '''
            }
        }
        stage('TWO') {
            steps {
                sh '''
                 hostname
                '''
            }
        }
    }
}