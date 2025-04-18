# 🐳 Kubernetes Dev Infra Setup

This repository contains Kubernetes manifests to provision **local development infrastructure** using Minikube or Docker Desktop. It includes:

- 🐘 A PostgreSQL instance for database access.
- 📊 A Seq container for structured log aggregation and viewing.

---

## 📁 Folder Structure

```plaintext
k8s/
├── postgres/
│   ├── deployment.yaml       # PostgreSQL Pod definition (image, volumes, etc.)
│   ├── service.yaml          # Exposes PostgreSQL as a ClusterIP or NodePort service
│   └── pvc.yaml              # Persistent volume claim for storing PostgreSQL data
├── seq/
│   ├── deployment.yaml       # Seq logging container deployment
│   └── service.yaml          # Service to access Seq from local machine or other pods
├── namespace.yaml            # (Optional) Namespace to isolate the dev infra
├── ingress.yaml              # (Optional) Ingress resource to route traffic (if using ingress controller)
├── apply.sh                  # Script to apply all manifests in order
└── README.md                 # This file
