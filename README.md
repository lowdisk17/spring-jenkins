# spring-jenkins
A simple project to kickstart your spring boot (jar), jenkins, docker and kubernetes journey

Pre-Requisites: 

Local Machine
- You must have Jenkins installed on your machine
- You must have Docker installed on your machine
- You must have Minikube installed on your machine
- You must have Kubectl installed on your machine
- Jenkins, Docker, Minikube and Kubectl must be running on your machine

Jenkins
- You must have Kubernetes Continuous Deploy Plugin v1.0.0 in as your plugin
- You must have Maven and Docker as tools
- You must have proper Credentials configured for Kubernetes and Docker Hub

Docker Hub
- You must have an active account on Docker Hub
- Create repository accordingly to be use in pushing an image to you account

GitHub
- Your repository must be public

=================================================================================

STEPS

1. Configure your pipeline
   - Provide your Github Project (URL)
   - Enable GitHub hook trigger for GITScm polling
   - Select Pipeline script from SCM
   - Specified the target branch from your GitHub repo
   - Click 'Save' button
  
2. Click 'Build Now'
3. This will then use the Jenkinsfile from your repository for stages execution
4. This will also use the necessary Dockerfile and yaml for creating an image and pushing to your local kube instance
5. Wait for the pods to initialized accordingly

=================================================================================

VERIFICATION

1. Open a terminal
2. To verify deployment type in "kubectl get deployments -n dev"
3. To verify pods type in "kubectl get pods -n dev"
5. To check logs of your pod type in "kubectl logs <podname> -n dev -f"
