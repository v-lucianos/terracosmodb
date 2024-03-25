# Terraform CosmosDB Project

This project uses Terraform to provision and manage resources in Azure, specifically a CosmosDB account with a SQL API and a SQL database with shared throughput.

## Resources Created

- A resource group
- A CosmosDB account with a SQL API
- A SQL database with shared throughput

## Prerequisites

- Terraform installed
- Azure CLI installed and configured with your Azure credentials

## Usage

1. Clone this repository.
2. Navigate to the directory containing the Terraform configuration files.
3. Initialize your Terraform configuration with `terraform init`.
4. Validate your configuration with `terraform validate`.
5. Create an execution plan with `terraform plan`.
6. Apply the changes with `terraform apply`.

## Tags

All resources are tagged with `"terraform" = "true"` for easy identification.

## Location

All resources are created in the "East US" region.