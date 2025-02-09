output "cluster_id" {
  description = "The ID of the EKS cluster"
  value       = module.eks.cluster_id
}

output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = var.cluster_name
}

output "node_group_name" {
  description = "The name of the EKS node group"
  value       = var.node_group_name
}

output "node_role_arn" {
  description = "The ARN of the IAM role for the EKS node group"
  value       = aws_iam_role.eks_nodes.arn
}

output "vpc_id" {
  description = "The VPC ID where the EKS cluster is deployed"
  value       = var.vpc_id
}

output "subnet_ids" {
  description = "The list of subnet IDs used by the EKS cluster"
  value       = var.subnet_ids
}
