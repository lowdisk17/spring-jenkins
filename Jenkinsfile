pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage('Build Maven') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/lowdisk17/spring-jenkins']])
                sh 'mvn clean install'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t lowdisk17/springjenkins .'  
                }
            }
        }
        stage('Push Image To Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'Docker', passwordVariable: 'PWV', usernameVariable: 'UNV')]) {
                    script {
                        sh 'docker login -u ${UNV} -p ${PWV}'
                        sh 'docker push lowdisk17/springjenkins'  
                    }
                }
            }
        }
        stage('Deploy To Kubernetes') {
            steps{
                script{
                    kubernetesDeploy configs: 'deploymentservice.yaml', kubeConfig: [path: ''], kubeconfigId: 'Kube', secretName: '', ssh: [sshCredentialsId: '*', sshServer: ''], textCredentials: [certificateAuthorityData: '', clientCertificateData: '', clientKeyData: '', serverUrl: 'https://']
                }
            }
        }
    }
}
