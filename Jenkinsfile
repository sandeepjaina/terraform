pipeline {
    agent{
        node { label 'centos' }
    }


    stages {
        stage('one') {
            steps {
                $hostname
            }
        }
        stage('TWO') {
            steps {
                sh '''
                 $hostname
                '''
            }
        }
    }
}