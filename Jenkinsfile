pipeline {
    agent any
    tools {
        jdk 'java17'
        maven 'maven3'
    }
    stages {
        stage('git code download') {
            steps {
                echo "Download code from Git"
                git branch: 'main', url: 'https://github.com/devopstechlab/maven-jenkins7.git'
            }
        }
        stage('Build') {
            steps {
                echo "Building Java Project"
                sh 'mvn clean package'
            }
        }
        stage('Archive Artifacts') {
            steps {
                echo "Archiving Artifacts"
                archiveArtifacts artifacts: '**/*.war', followSymlinks: false
            }
        }
        stage('Trigger Deployment Job') {
            steps {
                echo "deploy-to-dev-pipeline trigger"
                build wait: false, job: 'deploy-to-dev-pipeline'
            }
        }
    }
}
