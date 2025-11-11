pipeline {
    agent any
    tools {
        jdk 'java21'
        maven 'maven3' 
    }
    stages {
        stage('Download') {
            steps {
                echo "Download Code from Github"
                git branch: 'main', url: 'https://github.com/vivek70914/maven-jenkins10.git'
            }
        }
        stage('Build') {
            steps {
                echo "Build the Application"
                sh 'mvn clean package'
            }
        }
        stage('Archive') {
            steps {
                echo "Archive the Application Artifacts"
                archiveArtifacts artifacts: '**/*.war', followSymlinks: false
            }
        }
        stage('Trigger Deploy Job') {
            steps {
                echo "Trigger Deploy Job"
               build wait: false, job: 'depl pipeline'
            }
        }
    }
}
