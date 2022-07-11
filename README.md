
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
