locals {
    EC2_ACCESS_KEY = "${var.admin.C2_PROJECT}:${var.admin.BASE_ACCESS_KEY}"
    username = split("@", var.admin.BASE_ACCESS_KEY)[0]
}