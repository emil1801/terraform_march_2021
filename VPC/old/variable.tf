variable "region" {}
variable "cidr_block" {}
variable "tags" {
  type = map(any)
}
variable "public_cidr1" {}
variable "public_cidr2" {}
variable "public_cidr3" {}

variable "private_cidr1" {}
variable "private_cidr2" {}
variable "private_cidr3" {}
