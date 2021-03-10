pipeline {
   agent any 
   environment{
		BRANCH_NAME= "${env.BRANCH_NAME}"
	}
   tools {nodejs "NODEJS"}
   stages {
     stage('Get SCM') {
	      steps{     
           // sh 'rm -rf '
	         sh 'git clone '		
            }
          } 
      stage('Build'){ 
        steps{  
          sh 'npm --version'
          sh 'npm install'          
          //sh 'npm start' 
        }
      }
     stage('Test') {
      steps {
        sh 'node test'
      }
    }
      stage('Development') {
			when {
				expression { BRANCH_NAME =='dev'}
			}
            	steps {
                	sh "npm install"			
					sh "aws s3 cp .zip s3://haeron-storage"
					sh '''aws lambda update-function-code --function-name blueprint_NodeJS_lambda \\
					--s3-bucket haeron-storage \\
					--s3-key .zip \\
					--region ap-south-1'''

            }
				post{
					success{
						echo "Successfully deployed to Development"
					}
					failure{
						echo "Failed deploying to Development"
					}
				}
        }
    }
}
