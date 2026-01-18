## Project Overview

This project demonstrates a production-aligned CI/CD pipeline for a Spring Boot–based Student Course Management Application.
The pipeline follows DevOps and DevSecOps best practices, integrating automated build, testing, security scanning, containerization, and Kubernetes deployment using GitHub Actions.

The focus of this project is not only automation, but also why each CI/CD stage exists and how it improves reliability and security.

## CI Pipeline Summary

The Continuous Integration (CI) pipeline is triggered on every push to the main branch and is responsible for building, testing, and securing the application.

CI Stages:

- Source code checkout

- Java 17 setup with Maven caching

- Code quality checks (Checkstyle)

- Static Application Security Testing (SAST) using CodeQL

- Software Composition Analysis (SCA) using OWASP Dependency Check

- Unit testing using Maven

- Application build and packaging

- Docker image build

- Container image vulnerability scanning using Trivy

- Runtime container validation

- Push trusted Docker image to DockerHub

- Only tested and scanned artifacts are allowed to progress further.

## CD Pipeline Summary

The Continuous Deployment (CD) pipeline is implemented as a separate workflow, following industry best practices.

CD Responsibilities:

- Pull the trusted Docker image

- Deploy the application to a Kubernetes cluster

- Validate successful runtime startup

- Perform runtime security validation (DAST)

- The CD pipeline is triggered manually using workflow_dispatch.

## Security Tools Used (DevSecOps)

Security is integrated throughout the pipeline:

- SAST: GitHub CodeQL (code-level vulnerabilities)

- SCA: OWASP Dependency Check (third-party dependency risks)

- Container Scanning: Trivy (OS and library vulnerabilities)

- DAST: OWASP ZAP Baseline Scan (runtime exposure validation)

- Secrets Management: GitHub Secrets for credentials

This ensures defense in depth across build, runtime, and deployment stages.

## Kubernetes Deployment

- Application is deployed to a Kubernetes cluster in a dedicated namespace

- Pods are created using the latest trusted Docker image

- Old pods are cleaned up to ensure idempotent deployments

## Conclusion

This project showcases a complete CI/CD DevSecOps workflow with clear separation of CI and CD responsibilities, strong security controls, and automated Kubernetes deployment.
