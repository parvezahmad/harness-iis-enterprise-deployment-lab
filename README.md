# Harness IIS Enterprise Deployment Lab

## Overview

This project demonstrates how to build a production-style Continuous Integration and Continuous Deployment (CI/CD) pipeline using Harness to deploy a web application to Microsoft IIS across multiple environments.

The lab follows enterprise deployment best practices by building the application once and promoting the same artifact through DEV, QA, TEST, and PROD using manual approval gates.

This repository is designed for DevOps engineers, platform engineers, and students who want hands-on experience with Harness CD and Windows IIS deployments.

---

## Architecture

```text
GitHub Repository
        │
        ▼
Harness CI Pipeline
        │
        ▼
Build Application
        │
        ▼
Create Deployment Artifact
        │
        ▼
Deploy to DEV
        │
        ▼
Manual Approval
        │
        ▼
Deploy to QA
        │
        ▼
Manual Approval
        │
        ▼
Deploy to TEST
        │
        ▼
Manual Approval
        │
        ▼
Deploy to PROD
```

---

## Features

* Harness Continuous Integration
* Harness Continuous Deployment
* Windows IIS Deployment
* Build Once, Deploy Many
* Manual Approval Gates
* PowerShell Deployment Automation
* Multi-Environment Promotion
* Smoke Testing
* Backup Before Deployment
* Rollback Strategy
* GitHub Integration
* Enterprise CI/CD Best Practices

---

## Repository Structure

```text
harness-iis-enterprise-deployment-lab/

├── src/
│   └── Sample web application
│
├── scripts/
│   └── deploy-iis.ps1
│
└── README.md
```

---

## Pipeline Stages

| Stage         | Description                                              |
| ------------- | -------------------------------------------------------- |
| Build         | Build the application and create the deployment artifact |
| Deploy DEV    | Deploy the artifact to the Development IIS environment   |
| QA Approval   | Manual approval before QA deployment                     |
| Deploy QA     | Deploy to the QA IIS environment                         |
| TEST Approval | Manual approval before TEST deployment                   |
| Deploy TEST   | Deploy to the TEST IIS environment                       |
| PROD Approval | Manual approval before Production deployment             |
| Deploy PROD   | Deploy to the Production IIS environment                 |

---

## Technologies Used

* Harness CI/CD
* Microsoft IIS
* PowerShell
* GitHub
* Windows Server
* WinRM
* HTML (sample application)

---

## Deployment Strategy

This lab implements the **Build Once, Deploy Many** strategy.

The application is built a single time, and the exact same deployment artifact is promoted through each environment:

DEV → QA → TEST → PROD

This ensures deployment consistency and minimizes environment-specific differences.

---

## Learning Objectives

After completing this lab, you will be able to:

* Configure a Harness deployment pipeline
* Connect GitHub to Harness
* Deploy applications to IIS
* Configure manual approval stages
* Promote artifacts across environments
* Execute PowerShell deployment scripts
* Perform deployment validation
* Understand enterprise CI/CD workflow

---

## Author

**Mohammad Parvez Ahmad**

DevOps | Middleware | CI/CD | Harness | Kubernetes | GitHub Actions | AWS

---

## License

This project is provided for educational and learning purposes.
