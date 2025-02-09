variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "assignment-eks-cluster"
}

variable "cluster_version" {
  description = "The Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.27"
}

variable "vpc_id" {
  description = "The VPC ID where the EKS cluster will be deployed"
  type        = string
  default     = "vpc-079215805a8d73b3b"
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the EKS cluster"
  type        = list(string)
  default     = ["subnet-0fffa2a46851eeb3b", "subnet-0ed8716b73de5cd3c", "subnet-02f8749eb7f3ba61f"]
}

variable "enable_irsa" {
  description = "Enable IAM Roles for Service Accounts"
  type        = bool
  default     = true
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
  default     = "eks-nodes"
}

variable "desired_size" {
  description = "The desired number of nodes in the EKS node group"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "The minimum number of nodes in the EKS node group"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "The maximum number of nodes in the EKS node group"
  type        = number
  default     = 3
}

variable "instance_types" {
  description = "The instance types for the EKS node group"
  type        = list(string)
  default     = ["t3.medium"]
}
