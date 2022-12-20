pipeline {
	agent any
	tools {
	   maven 'maven'
	} 
	stages {
	   stage("build jar") {
	      steps {
	         
	         sh 'mvn clean install'
	      }
        }

        stage("build image") {
            steps {
               echo "building the docker image"
               sh docker build -t myimage:1.0 .
            }
        }	  
	}
}