variable "region" {
  default = "cn-hangzhou"
}

provider "alicloud" {
  region = var.region
}

resource "alicloud_vpc"  "default" {
  vpc_name = var.vpc_name
  cidr_block = var.vpc_cidr_block
}

variable "vpc_name" {
    default = "vpc_test"
  }
  variable "vpc_cidr_block" {
  default = "172.16.0.0/12"
}
resource "alicloud_vswitch" "default" {
  vswitch_name = var.vs_name
  cidr_block = var.vs_cidr_block
  vpc_id = alicloud_vpc_default.id
  zone_id = var.az
}
variable "vs_name" {
  default = "VS_test"
}
variable "vs_cidr_block" {
  default = "172.16.0.0/21"
}
variable "az" {
  default = "cn-hangzhou-a"
}
