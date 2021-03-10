pipeline {
   agent any
 
    stages {
      stage('Installing nodeJS'){   
           when { branch 'master' } 
        steps{
          echo 'Master Branch!'
          sh 'npm install'     
        }
      }
       stage('Starting nodeJS Application on port:3000'){       
        steps{        
          sh 'npm start'       
        }
      }
    }
}
