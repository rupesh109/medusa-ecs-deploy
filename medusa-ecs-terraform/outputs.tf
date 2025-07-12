output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnets" {
  value = module.vpc.public_subnets
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.medusa_cluster.name
}
