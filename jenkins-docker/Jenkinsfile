pipeline{

	agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
          
        stage('gitclone') {

			steps {
				//git 'https://github.com/shazforiot/nodeapp_test.git'
				git 'https://github.com/Ujjval-zymr/jenkins_docker_tasks.git'
				//git([url: 'http://gitlab.zymrinc.com/ZDevOps/bash-scripts.git', branch: "${params.branch}", credentialsId: 'gitlab'])
			}
		}

		stage('Build') {

			steps {
				//sh 'docker build -t thetips4you/nodeapp_test:latest .'
                //dockerhub id/image name
                //sh ' /home/ujjval.d@ah.zymrinc.com/ajeet_tasks/jenkins-docker/Dockerfile'
                sh 'docker build -t ujjvalzymr121/mynginx:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                //docker access key : 5defab86-6eb0-4f63-b088-a76631f0a2b9
            }
		}

		stage('Push') {

			steps {
				//push from ujjval docker id
                sh 'docker push ujjvalzymr121/mynginx:latest'
			}
		}

        stage('Pull') {

			steps {
                //pull from ujjval docker id
				sh 'docker pull ujjvalzymr121/mynginx:latest'
			}
		}

        stage('Publish') {

			steps {
				sh 'docker run --name nginxpulled -dp 9090:80 mynginx:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}