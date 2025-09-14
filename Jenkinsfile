pipeline {
    agent any
    stages {
        stage('Download-Code-GIT') {
            steps {
                echo "Download code from git"
                git branch: 'main', url: 'https://github.com/bheesham-devops/maven-jenkins10.git'
            }
        }
        stage('Build') {
            steps {
        sh '''docker build -t bheeshamdevops/tomcat:v${BUILD_NUMBER} .
            docker tag bheeshamdevops/tomcat:v${BUILD_NUMBER} bheeshamdevops/tomcat:latest
            docker push bheeshamdevops/tomcat:v${BUILD_NUMBER}
            docker push bheeshamdevops/tomcat:latest'''
            }
        }
    }
}
