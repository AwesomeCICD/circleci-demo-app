# CircleCI Demo Application
[![CircleCI Build Status](https://circleci.com/gh/AwesomeCICD/circleci-demo-app.svg?style=shield)](https://circleci.com/gh/jAwesomeCICD/circleci-demo-app) [![Software License](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/AwesomeCICD/circleci-demo-app/main/LICENSE) [![Docker Pulls](https://img.shields.io/docker/pulls/jimcrowley/circleci-demo-app)](https://hub.docker.com/r/jimcrowley/circleci-demo-app)

This demo aims to show users some key features of CircleCI's platform.

The features shown off in the demo are:

- [Snyk](https://snyk.co/udBRL) Integration via the [official Orb](https://circleci.com/developer/orbs/orb/snyk/snyk) that scans Docker Images
- [SonarQube](https://www.sonarqube.org/) Integration via the [official Orb](https://circleci.com/developer/orbs/orb/sonarsource/sonarcloud) that does static code analysis
- Deployment utilizing [IP Ranges](https://circleci.com/docs/2.0/ip-ranges/) which provides a list of well-defined IP address ranges associated with the CircleCI service
- Browser Testing using CircleCI's [Convenience Images](https://circleci.com/docs/2.0/circleci-images/)
- Showing of Test Concurrency/Parallelism to achieve faster builds
- CircleCI's [Docker Layer Caching](https://circleci.com/docs/2.0/docker-layer-caching/) to speed up Docker Builds
- Holding/Approval of Jobs for manually review
- Utilizing CircleCI's [Test Insights](https://circleci.com/docs/2.0/collect-test-data/) to take a deeper look at jobs
- Securely access cloud providers like AWS [via OIDC](https://circleci.com/docs/openid-connect-tokens)
- Utilize Infrastructure as Code and deploy an EC2 instance
- Enforce configuration of servers via Ansible
- Plus many more features!

Currently, the demo deploys a Flask based website utilizing Docker. You can view the live site [here](http://demo.circleci-demo-app.com/).

Some other links that might be important:

- [DockerHub Link](https://hub.docker.com/r/jimcrowley/circleci-demo-app)
- [SonarQube Scan](https://sonarcloud.io/project/configuration?id=james-crowley_circleci-demo-app)
- [Snyk Scan](https://app.snyk.io/org/james-crowley/project/ac4e385e-bac6-47b6-85fb-883a02d172ed)

Test commit