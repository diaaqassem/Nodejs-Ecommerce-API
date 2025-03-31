def COLOR_MAP = [
    'SUCCESS': 'good', 
    'FAILURE': 'danger',
]
pipeline{
    agent{
        label "Master"
    }
    tools{
        nodejs "Nodejs"
    }
    environment{
		PORT = 5000
		
		DB_NAME = "nodejs-ecommerce-API-v1"
		DB_URI = "mongodb://172.17.0.3/?directConnection=true"
		BASE_URL = "http://localhost:5000/"
		
		JWT_SECRET = "7f1b3eaf92c3a6d7e8b2d0fa9c4e3f8b"
		JWT_EXPIRES_IN = 3600
		
		EMAIL_HOST= 'jorge.runte@ethereal.email'
		EMAIL_PASSWORD= "qQ3XzKAMwHFGTeQyc1"
		EMAIL_PORT= 587
		EMAIL_USE_TLS= "T"
	    
      		DOCKER_CREDENTIALS="docker-hub-credentials"
        	DOCKER_IMAGE="diaaqassem1/ecommerce"
    }
    stages{
        stage("Fetch Code from VCS"){
            steps{
                echo "======== Fetching ========"
                git url: "https://github.com/diaaqassem/Nodejs-Ecommerce-API.git", branch: "main"
            }
            post{
                success{
                    echo "========Fetched Successfully========"
                }
                failure{
                    echo "========Fetching Failed========"
                }
            }
        }
        stage("Build App Image"){
            steps{
                script {
                    dockerImage = docker.build("${DOCKER_IMAGE}:${BUILD_NUMBER}", "./")
                }
            
            }
            post{
                success{
                    echo "========Built Successfully========"
                }
                failure{
                    echo "========Building Failed========"
                }
            }
        }
       stage('Upload App Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS) {
                        dockerImage.push("${BUILD_NUMBER}")
                        dockerImage.push("latest")
                    }
                }
            }
            post{
                success{
                    echo "========Upload Successfully========"
                }
                failure{
                    echo "========Upload Failed========"
                }
            }
        }
     stage('Cleanup') {
            steps {
                script {
                    sh "docker rmi ${DOCKER_IMAGE}:${BUILD_NUMBER}"
                    sh "docker rmi ${DOCKER_IMAGE}:latest"
                }
            }
            post{
                success{
                    echo "========Cleanup Successfully========"
                }
                failure{
                    echo "========Cleanup Failed========"
                }
            }
        }
    }
    post{
        always {
            echo 'Slack Notifications.'
            slackSend channel: '#devops',
                color: COLOR_MAP[currentBuild.currentResult],
                message: "*${currentBuild.currentResult}:* Job ${env.JOB_NAME} build ${env.BUILD_NUMBER} \n More info at: ${env.BUILD_URL}"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}
