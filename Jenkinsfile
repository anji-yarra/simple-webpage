pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/anji-yarra/simple-webpage.git'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building the web page (no build steps for static files)'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Testing HTML and CSS'
                // Install tidy and run validation on the HTML file
                sh '''
                if ! command -v tidy &> /dev/null
                then
                    echo "tidy not found, installing..."
                    sudo apt-get update && sudo apt-get install -y tidy
                fi
                tidy -e index.html
                '''
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying the web page to a server'
                // Add deploy steps here if necessary
            }
        }
    }
}
