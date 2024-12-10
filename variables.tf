variable "admin" {
  type = object(
    {
        C2_PROJECT = string
        BASE_ACCESS_KEY = string
        EC2_SECRET_KEY = string
        Administrator_SSH_Pub_key = string
    })
  default = {
    C2_PROJECT      = "Network_Security"
    BASE_ACCESS_KEY = "YOUR MAIL @dit10.ru"
    EC2_SECRET_KEY  = "Super_Secret_Key_!@#$"
    Administrator_SSH_Pub_key = ""
  }
}

variable "az" {
  default     = "ru-msk-vol51"
}

variable "vms_count" {
  default     = 2
}

variable "vm_template" {
  default     = "cmi-D01767A6"
}

variable "vm_instance_type" {
  default = "m5.2small"
}
variable "vm_volume_type" {
  default     = "gp2"
}

variable "vm_map" {
  type = map(object({
    vm_name = string
  }))
  default = {
    "vm1" = {
      vm_name = "value"
    }
    "vm2" = {
      vm_name = "value"
    }
    "vm3" = {
      vm_name = "value"
    }
  }
}

variable "vm_volume_size" {
  # Размер по умолчанию и шаг наращивания указаны для типа дисков gp2
  # Для других типов дисков они могут быть иными — подробнее см. в документации на диски
  description = "Enter the volume size for VM disks (32 by default, in GiB, must be multiple of 32)"
  default     = 32
}

variable "vm_subnet" {
  default     = "subnet-EDE338E0"
}

variable "vm_securitygroup" {
  default     = "sg-C64EBFA5"
}

variable "vms" {
  type = set(string)
  default = [ "gw1", "gw2", "sms" ]
}

locals {
  vms_list = tolist(var.vms)
}
