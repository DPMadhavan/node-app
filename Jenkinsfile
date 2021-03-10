pipeline {
   agent any 
   tools {nodejs "NODEJS"}
    stages {
      stage('Installing nodeJS & Starting nodeJS Application on port:3000'){ 
        steps{  
          sh 'npm --version'
          sh 'npm install'
          sh 'npm install http'
          sh 'npm start' 
        }
      }       
    }
}
