pipeline {
    agent{
        node {label: 'controller' }
    }


    stages {
        stage('one') {
            steps {
                echo 'Hello World'
            }
        }
        stage('TWO') {
            steps {
                sh '''
                 mkdir sandeep
                '''
            }
        }
    }
}