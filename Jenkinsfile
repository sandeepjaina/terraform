pipeline {
//    agent{
//        node { label 'centos' }
//    }

    agent none


    stages {
        stage('one') {
            agent {
                label "workstations"
            }
            steps {
                sh '''
                 hostname
                '''
            }
        }
        stage('TWO') {
            agent {
                label "centos"
            }
            steps {
                sh '''
                 hostname
                '''
            }
        }
    }
}