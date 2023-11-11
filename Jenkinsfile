pipeline {
    agent any
    environment{
        GIT_REPO='https://github.com/NikhilRao222/containerizing-application.git'
    }
    stages{
        stage('Build war'){
            steps{
                script{
                    git url= GIT_REPO
                    sh 'mvn clean package'
                }
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    echo 'docker image built....'
                }
            }
        }
        stage('Push Docker Image'){
            steps{
                script{
                    echo'docker image pushed to docker hub...'
                }
            }
        }
        stage('Update Kubernetes'){
            steps{
                script{
                    echo'kuberenetes updated ....'
                }
            }
        }
    }
    post{
        success{
            echo 'Jenkins Pipeline executed successfully!'
        }
        failure {
            echo 'Jenkins Pipeline failed!'
        }
    }
}
