# simple-nodejs-weather-app
Simple Node.js Command Line Weather Application

* Check out the **[Live Demo](https://simple-nodejs-weather-app-irhhpddsku.now.sh/)**
* Read the full tutorial on how to build this application at [codeburst.io](https://codeburst.io)
## Run the web app locally
### Docker
Prerequisite
* [Install Docker](https://docs.docker.com/get-docker/)
```
docker build -t weather-app .
docker run -d -p 3000:3000 -e APIKEY=<put_your_api_key> --name weather-app weather-app
```
### Node:
```
node server.js
```
## Usage
```
// Now open your browser and visit: localhost:3000
```
![gif](https://github.com/bmorelli25/simple-nodejs-weather-app/blob/master/giphy.gif?raw=true 'website gif')

## Output
![Result](./result.png)

## Highlight
* [Security] Latest version of alpine has been choosen because of its simplicity, security and resource efficiency. It has latest patching of Common Vulnerabilities and Exposures. It is also because of the priciple of minimizing attack surface.
* [Security] API key is in the source code which is security risk. This API Key has been removed from git history and has been rotated. It is set via Environment variables instead of hard code in repository.
* [Security] Static analysis of docker scanning shows 0 vulnerability in the docker images.
```
clair timeout 1m0s
docker timeout: 1m0s
no whitelist file
Analysing 7 layers
Got results from Clair API v1
Found 0 vulnerabilities
```
* [Security] Branch protection rule(Signed Commit) has been applied. Commits pushed to matching branches must have verified signatures to ensure no one can pretend someone to commit. This is very important to large organisations with a lot of engineers.
* [Performance] The principle of minimum packages/images has been considered to ensure shipping smallest but functional application over low-bandwidth connection network. It also ensures resource efficiency.
* [CI] Continuous Integration has been applied in this repo. Github Actions is chosen to be the CI tools to make sure building stuff faster, never shipping broken code and decreasing code review time.
* [CI Monitoring] Slack Notification has been implemented to notified of CI status.
* [Continous Inspection/Security] Github Security is in place as Continous Inspection to find out code vulnerability.
* [Artifacts] Docker hub is choosen as docker images Artifacts and integrated with CI.
