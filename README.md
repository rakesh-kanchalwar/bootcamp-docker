
# Docker pipeline

This code consists of a an azure pipeline with following tasks
- When a code is checked in to any feature/* branch
    - Build docker image
- When a pull request is created on master branch and it is approved
    - Build docker image
    - Push the image to container registry
    - deploy this docker container to staging env.
- When build is approved on master branch
    - Deploy this docker container to prod env.


[![Build Status](https://dev.azure.com/kanchalwarrakesh/bootcamp-app/_apis/build/status/bootcamp-app?branchName=master)](https://dev.azure.com/kanchalwarrakesh/bootcamp-app/_build/latest?definitionId=1&branchName=master)
[![Build Status](https://dev.azure.com/kanchalwarrakesh/bootcamp-app/_apis/build/status/bootcamp-app?branchName=feature%2Fdocker_impl)](https://dev.azure.com/kanchalwarrakesh/bootcamp-app/_build/latest?definitionId=1&branchName=feature%2Fdocker_impl)



# Starting the service for development
    Follow below steps to start application in local docker, it will start application and database containers
    - change directory to bonus
    - update .env file with your okta credentials
    - start the docker with command
        - docker-compose -f .\docker-compose.yml up --detach
    - stop the docker with command
        - docker-compose -f .\docker-compose.yml down    