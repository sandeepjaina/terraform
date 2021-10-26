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
    stages{
        stage('ENV'){
            steps {
                sh hostname
            }
        }
    }
}