pipeline {
   agent any
 
    stages {
      stage('Installing nodeJS & Starting nodeJS Application on port:3000'){   
           when { branch 'master' } 
        steps{
          echo 'Master Branch!'
          sh 'npm install'  
          sh 'npm start' 
        }
      }       
    }
}
