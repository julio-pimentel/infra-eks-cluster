docker build -t my-node-server . #it could be ECR, Docker Hub, etc 
docker run -p 1337:1337 my-node-server #test locally 