pipeline {
   agent any 
   environment{
		BRANCH_NAME= "${env.BRANCH_NAME}"
	}
   tools {nodejs "NODEJS"}
   stages {
     /*stage('Get SCM') {
	      steps{     
           // sh 'rm -rf '
	         sh 'git clone '		
            }
          } */
      stage('Installing nodeJS & Starting nodeJS Application on port:3000'){ 
        steps{  
          sh 'npm --version'
          sh 'npm install'          
          sh 'npm start' 
        }
      }       
    }
}
