# EKS Cluster Creation with Terraform

This repository contains Terraform configurations for creating an Amazon EKS (Elastic Kubernetes Service) cluster using a modular approach.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or later)
- [AWS CLI](https://aws.amazon.com/cli/) (v2.0.0 or later)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) (v1.18.0 or later)

## Setup

1. **Clone the repository:**

    ```sh
    git clone https://github.com/arun037/eks-cluster-terraform.git
    cd eks-cluster-terraform
    ```

2. **Configure AWS CLI:**

    Ensure your AWS CLI is configured with the necessary credentials:

    ```sh
    aws configure
    ```

3. **Initialize Terraform:**

    Initialize the Terraform configuration:

    ```sh
    terraform init
    ```

4. **Plan the Infrastructure:**

    Review the changes Terraform will make to your infrastructure:

    ```sh
    terraform plan
    ```

5. **Apply the Configuration:**

    Apply the Terraform configuration to create the EKS cluster:

    ```sh
    terraform apply
    ```

    Confirm the apply step with `yes` when prompted.

6. **Configure kubectl:**

    Update your `kubeconfig` to use the new EKS cluster:

    ```sh
    aws eks --region <your-region> update-kubeconfig --name <your-cluster-name>
    ```

    Replace `<your-region>` and `<your-cluster-name>` with your AWS region and EKS cluster name, respectively.

7. **Verify the Cluster:**

    Verify that your cluster is up and running:

    ```sh
    kubectl get nodes
    ```

## Modular Approach

This repository uses a modular approach to organize Terraform configurations. The main modules used are:

- **VPC Module**: Creates the VPC, subnets, and related networking resources.
- **EKS Module**: Creates the EKS cluster and node groups.

Each module is defined in its own directory and can be reused or customized as needed.

## Cleaning Up

To destroy the EKS cluster and all associated resources, run:

```sh
terraform destroy
```