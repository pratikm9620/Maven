pipeline{
  agent any
  tools {
    maven 'Maven 3.8.2'
  }
  stages{
     stage("Git Clone"){
        steps
        {
           git 'https://github.com/riyasingh1803/hello-world.git'
        }
     }
     stage("Build"){
        steps
        {
           bat 'mvn clean install'
        }
     }
     stage("Deploy"){
        steps
        {
           bat 'copy
C:\\Windows\\System32\\config\\systemprofile\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\maven 
pipeline\\webapp\\target\\webapp.war C:\\riya\\SEM 5\\apache-tomcat-9.0.52-windows-x64\\apache.tomcat-9.0.52\\webapps'
        }
     }
  }
}
