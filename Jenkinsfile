pipeline {
    agent any
         stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
              checkout scm
        
        }
        stage('Test') {
           
                echo 'Testing..
        }
        stage('Deploy') {
   
                npm install
                node server.js
        }
}
