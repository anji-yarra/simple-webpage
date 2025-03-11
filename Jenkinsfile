pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub
                git branch: 'master', url: 'https://github.com/anji-yarra/simple-webpage.git'
            }
        }
        
        stage('Build') {
            steps {
                // This can be empty for a simple static website or can include build steps if needed
                echo 'Building the web page (no build steps for static files)'
            }
        }
        
        stage('Test') {
            steps {
                // Optional: Add tests if needed. For static sites, this could include validation scripts.
                echo 'Testing HTML and CSS'
                // For example, check if HTML is valid
                sh 'tidy -e index.html' // You might need to install `tidy` for this to work
            }
        }

        stage('Deploy') {
            steps {
                // Deploy your web page (optional)
                echo 'Deploying the web page to a server'
                // Add commands here to deploy to your server
            }
        }
    }
}
