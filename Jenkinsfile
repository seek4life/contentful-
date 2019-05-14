node{

  //Define all variables
  def project = 'contentful'
  def appName = 'my-first-microservice'
  def serviceName = "${appName}-backend"
  def imageVersion = 'v2.0'
  def namespace = 'development'
  def imageTag = "contentful:v2.0"

  //Checkout Code from Git
  checkout scm

  //Stage 1 : Build the docker image.
  stage('Build image') {
      sh("docker login --username=nagaraj1171 --email=nagaraj1171@gmail.com")
      sh("docker build -t nagaraj1171/${imageTag} .")
  }

  //Stage 2 : Push the image to docker registry
  stage('Push image to registry') {
      sh("docker push nagaraj1171/${imageTag}")
  }

}
