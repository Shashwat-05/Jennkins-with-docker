# Node-Express-Mongo-Containerized stack

### A Node-Express application with MongoDB as database support and  all these components are running on their own dedicated containerized form.

#### Steps

1. Build node application's image
First get into the same directory as Dockerfile

`docker build -t <img:tag> .`

2. Use docker-compose file to launch the containers stack

`docker-compose -f docker-compose.yml up`

3. After the all three containers gets launched successfully
They can be accessed at

- Node application - http://localhost:3000
- Mongo-express - http://localhost:8081

##### About the files in the repo

**Jenkinsfile** - contains the declarative groovy script to create a multi-pipeline
**Dockerfile** - contains blueprint for the node application from build to run state
**docker-compose.yml** - contains the compose code for all three containers to launch them
**app** - directory contains the web application's code running in node container
