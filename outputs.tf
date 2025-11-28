output "this vpc id" {
  value = alicloud_vpc.default.id
}
output "this swicth name" {
  value = var.vs_name
}
output "this vpc cidr_block" {
  value = var.vpc_cidr_block
}
