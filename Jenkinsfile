pipeline {
    agent any
    environment{
        dockerhub_credentials=credentials('dockerhub_id')
        docker_img_name='nbillakanti/my-web-app'
        TIMESTAMP = new Date().format('yyyyMMdd-HHmmss')
    }
    stages{
        stage('Build war'){
            steps{
                script{
                    // git url= GIT_REPO
                    // sh 'cd src/main/webapp/META-INF/maven/com.mycompany/mavenproject2'
                    sh 'mvn clean package'
                }
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    
                    def imageBuild="${docker_img_name}:${TIMESTAMP}"
                    sh "docker build -t ${imageBuild} ."
                    
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
