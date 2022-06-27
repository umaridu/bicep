## Azure Engineering Task

Solution for hosting a static website has been developed on Microsoft Azure. It utilizes a Storage Account to host the static website files. Currently the website is available over public internet. Recently, one of the developers introduced changes which have broken the website's infrastructure. Infrastructure deployment has been automated using Bicep and includes:

1. Virtual network deployment
2. Storage Account deployment
3. Private DNS Zone deployment

### Your task

1. Access the infrastructure automation code located in the repository
2. Fork the repository to your github account
3. Fix any errors in the current code (there are 2 errors)
4. Amend the code so that the website is no longer available over public internet but only accessible from the network 10.128.0.0/26
5. Enable infrastructure encryption for the Storage Account which hosts the website
6. Once all of the above tasks are done, open a pull request to merge your changes to the original repository. Please note that your pull request will be reviewed by the assessors but not merged.

### Notes

- It is assumed that you have an existing GitHub account, if you don’t, please create one for the purpose of completing the task
- Completing all of the tasks should not take more than 1 hour
- You are not required to provide a deployed solution, only the code will be assessed
