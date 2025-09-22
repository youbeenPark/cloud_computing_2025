# Cloud Computing, Fall 2025 Semester

This repository contains the source code, scripts, and documentation for a Cloud Computing learning project, developed in Ubuntu Linux using command-line tools and cloud platforms. The project is structured as a series of weekly labs to build foundational skills in cloud concepts and deployment. Git and GitHub usage begins from Week 03 for version control and repository management.

## Project Overview
- **Path**: `/home/deepblue/cloud_computing`
- **Environment**: Ubuntu Linux (e.g., VirtualBox VM), Python (Flask), Heroku CLI, OpenSSH
- **Purpose**: Learn cloud computing fundamentals through hands-on labs, with outputs verified via terminal logs and cloud dashboards.
- **Structure**: Weekly scripts and command histories called in lab sessions to demonstrate concepts.

## Week 01: Course Introduction and Cloud Computing Overview
### Objectives
- Understand the syllabus, tools, and basic terminology.
- Gain an overview of cloud computing history, benefits, and key players (e.g., AWS, Azure, Google Cloud).

### Content
- Reviewed course outline: Focus on service models, deployment strategies, and hands-on deployments.
- Explored core concepts: Scalability, elasticity, virtualization, and economic models.


## Week 02: Cloud Service Models
### Objectives
- Differentiate between service models: IaaS (Infrastructure as a Service), CaaS (Container as a Service), PaaS (Platform as a Service), FaaS (Function as a Service), and SaaS (Software as a Service).
- Understand responsibilities, use cases, and trade-offs for each model.

### Content
1. **`week02_service_models.md`** (or notes in Markdown):
   - IaaS: Full control over OS and apps (e.g., AWS EC2); user manages runtime, middleware, and data.
   - CaaS: Container orchestration (e.g., Kubernetes on Google Cloud); abstracts infrastructure but manages containers.
   - PaaS: Managed platform for app deployment (e.g., Heroku); handles runtime and middleware.
   - FaaS: Serverless execution (e.g., AWS Lambda); pay-per-use, no server management.
   - SaaS: Fully managed apps (e.g., Google Workspace); end-user consumption only.
   - Example: Diagram or table summarizing models (e.g., responsibility matrix).
2. **Hands-on Lab: PaaS Deployment with Heroku and Flask**:
   - Created a simple Flask app (`app.py`):
     ```python
     from flask import Flask
     app = Flask(__name__)

     @app.route('/')
     def hello():
         return "Hello from PaaS on Heroku!"

     if __name__ == '__main__':
         app.run()
     ```
   - Created a `requirments.txt` file and a `Procfile` file.
   - Prepared for deployment (full Git-based push covered in Week 03): `heroku create flask-hello-paas`.


## Week 03: Cloud Deployment Models
### Objectives
- Explore deployment strategies: Public, Private, Hybrid, and Community clouds.
- Understand security, compliance, and scalability implications.
- Introduce Git and GitHub for version control, including repository setup and basic commands.

### Content
1. **`week03_deployment_models.md`** (summary notes):
   - Public: Shared resources (e.g., AWS public cloud); cost-effective but less control.
   - Private: Dedicated infrastructure (e.g., on-premises VMware); high security for sensitive data.
   - Hybrid: Mix of public/private (e.g., burst to public during peaks); best for flexibility.
   - Community: Shared by specific groups (e.g., government clouds); balances cost and compliance.
   - Example: Use case scenarios, like a bank using hybrid for core vs. analytics workloads.
2. **Hands-on Lab: IaaS Part 1 - OpenSSH Setup**:
   - Installed OpenSSH server: `sudo apt update && sudo apt install openssh-server -y`.
   - Configured: Started service (`sudo systemctl start ssh`).
   - Tested: From local terminal, `ssh deepblue@localhost` (or remote VM IP).
   - Captured history: `history >> command.txt`.
3. **Git and GitHub Introduction**:
   - Installed Git: `sudo apt install git -y`.
   - Configured identity: `git config --global user.name "Your Name"` and `git config --global user.email "your.email@example.com"`.
   - Initialized repository: `git init`, added files (`git add .`), committed (`git commit -m "Initial commit"`), and pushed to GitHub (`git remote add origin <repo-url> && git push -u origin main`).
