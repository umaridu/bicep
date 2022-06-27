## Azure Engineering Task

Solution for hosting a static website has been developed on Microsoft Azure. It utilizes a Storage Account to host the static website files. Currently the website is available over public internet. Recently, one of the developers introduced changes which have broken the website's infrastructure. Infrastructure deployment has been automated using Bicep and includes:

1. Virtual network deployment
2. Storage Account deployment
3. Private DNS Zone deployment

### Your task

1. Access the infrastructure automation code located in the repository: 
2. Clone the repository to your local machine
3. Create a branch with a name that can easily help us to identify you (i.e. include your name in branch name)
4. Fix any errors in the current code (there are 2 errors)
5. Amend the code so that the website is no longer available over public internet but only accessible from the network 10.128.0.0/26
6. Enable infrastructure encryption for the Storage Account which hosts the website
7. Once all of the above tasks are done, create a pull request to merge your changes into the main branch. Your pull request will be reviewed by the assessors.

### Notes

- It is assumed that you have an existing GitHub account, if you don’t, please create one for the purpose of completing the task
- Completing all of the tasks should not take more than 1 hour
- You are not required to provide a deployed solution, only the code will be assessed
