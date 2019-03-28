pipeline {
    agent any
         stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */
            steps {
                checkout scm
            }
        }

        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                npm install
                node server.js
            }
        }
    }
