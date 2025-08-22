1. Docker

The application was dockerized by creating a Dockerfile.

The image was built and tested locally using docker run.

2. Amazon ECR

An ECR repository was created to store Docker images.

The Docker image was pushed to ECR.

3. Amazon EKS (Kubernetes)

An EKS cluster was set up.

Deployment and Service YAML files were written.

The application was deployed using kubectl apply -f.

4. CodeBuild

A CodeBuild project was created.

Source was connected to the GitHub repository.

A managed environment image (Amazon Linux/Ubuntu) was used.

A buildspec.yml was defined to:

Log in to ECR

Build & tag Docker image

Push image to ECR

5. CodeDeploy (to EKS)

A CodeDeploy application was created.

An appspec.yml was added to define EKS deployment steps.

6. Version Control

The codebase, Dockerfile, and deployment configs were pushed to GitHub.

7. CodePipeline

A CodePipeline was created with stages:

Source → GitHub

Build → CodeBuild

Deploy → CodeDeploy (or via Lambda/custom script to EKS)
