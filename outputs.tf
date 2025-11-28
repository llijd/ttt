output "this_vpc_id" {
  value = alicloud_vpc.default.id
}
output "this_swicth_name" {
  value = var.vs_name
}
output "this_vpc_cidr_block" {
  value = var.vpc_cidr_block
}
