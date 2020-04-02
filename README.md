This is a sample application for working with node apps in vscode containers. 

### Getting started

#### Pre-requisites
- Docker
- VSCode 
- Dev Container extention for VSCode
- Postman

#### Running 

1. Clone this repo
2. Run `Ctrl + shift + p` on VSCode 
3. Type `Remote-Containers: Open Folder in Container` and select this option
4. Wait until the path for the app folder open in the container, with an command line inside
5. Run `npm run start:dev` to start the application 
6. Create a get request on Postman to the following url: `http://localhost:9001`
