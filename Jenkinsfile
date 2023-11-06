pipeline {
    agengt any
    stages{
        stage("Build war"){
            steps{
                script{
                    git url:'https://github.com/NikhilRao222/containerizing-application.git'
                    sh 'mvn clean package'
                }
            }
        }
    }
}
