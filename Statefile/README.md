## What is statefile
State file is like a snapshot of your Infrasturture, It keeps track of all resources that we have created like their current state and settings applied to them.
It typically strored in a file named **terraform.tfstate.**
## What is statefile Locking in terraform
Statefile locking in Terraform is a mechanism that ensures only one process can modify the state file at any given time. This is crucial for preventing conflicts and ensuring consistency, especially when multiple users or automated systems are working on the same infrastructure.
## Why statefile locking is useful ?
It Prevents concurrent modifications when multiple persons are trying to read and write the sate file simultaniously, which would corrupt or conflicts.
## How the statefile Can be Stored?
State file can be stored in two ways

1.**Local state**:
*By default, Terraform stores the state file locally on your machine in the same directory where you run Terraform. This file is named terraform.tfstate.
*This approach is simple and convenient for small projects or for testing purposes.

2.**Remote state**:
For larger projects, collaboration, and production environments, it's recommended to store the state file remotely. Remote state storage helps to manage and share the state file among team members and to ensure it is safely backed up.

Terraform supports various remote backend to store the state file like **Amazon S3,Azure Bold Storage,Google cloud Storage**
