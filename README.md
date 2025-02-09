# Containers Setup Guide

## Requirements
To set up and run the containers for this project, ensure you have the following installed:

- **Docker Desktop** (for managing and running containers)
- **PowerShell (pwsh)** (for executing setup scripts)

## Project Structure
The container setup is organized as follows:

```
containers/
│── build/
│   ├── clean-all.ps1    # Script to remove all containers and volumes
│   ├── execute-all.ps1  # Script to create and start all containers
│── src/
│   ├── auth/            # Authentication service infrastructure
│   │   ├── docker-compose.yml
│   │   ├── postgres.yml
│   │   ├── redis.yml
│   ├── shared/          # Shared infrastructure services
│   │   ├── datadog.yml
│   │   ├── docker-compose.yml
│── .env                 # Environment configuration file
│── .gitignore           # Git ignore file
├── README.md            # Documentation files
```

## Setup Instructions

### Step 1: Install Requirements
Ensure **Docker Desktop** and **PowerShell Core (pwsh)** are installed on your system.

### Step 2: Navigate to the Build Directory
Open a PowerShell terminal and navigate to the **build** directory inside the **containers** project:

```powershell
cd path/to/containers/build
```

### Step 3: Run the Setup Script
Execute the `execute-all.ps1` script to create and start all required containers:

```powershell
./execute-all.ps1
```

This will:
- Set up and start all infrastructure services.
- Create necessary volumes and networks.

### Step 4: Verifying Running Containers
To check if all containers are running correctly, use:

```powershell
docker ps
```

### Cleaning Up Containers
If you need to remove all containers and volumes, run:

```powershell
./clean-all.ps1
```

This will:
- Stop and remove all containers.
- Remove all associated volumes and networks.

## Additional Notes
- The **auth** service uses **PostgreSQL** and **Redis**.
- Shared infrastructure like **Datadog** is managed separately in the `shared` directory.
- Each service has its own `docker-compose.yml` file for better modularity.

---
This setup provides a clean and modular approach to managing the infrastructure for the project. If any issues arise, ensure all dependencies are correctly installed and retry the setup process.

