pipeline {
   agent any
   when { branch 'master' } 
    stages {
      stage('Installing nodeJS'){       
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
