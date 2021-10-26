//pipeline {
////    agent{
////        node { label 'centos' }
////    }
//
//    agent none
//
//
//    stages {
//        stage('one') {
//            agent {
//                label "workstation"
//            }
//            steps {
//                sh '''
//                 hostname
//                '''
//            }
//        }
//        stage('TWO') {
//            agent {
//                label "nodejs"
//            }
//            steps {
//                sh '''
//                 hostname
//                '''
//            }
//        }
//    }
//}


pipeline {
    agent any
    environment {
        Name = "google.com"
        ssh = credentails('DevOps')
    }
    stages{
        stage('ENV'){
            environment {
                Name = "yahoo.com"
            }
            steps {
                sh 'echo ${Name}'
                sh 'echo ${ssh}'
            }
        }
    }
}