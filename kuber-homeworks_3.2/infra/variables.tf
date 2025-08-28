variable "cloud_id" {
  type    = string
  default = "b1g4rrcf3jq0fkd1d7h1"
}

variable "folder_id" {
  type    = string
  default = "b1g3q0h4o0jqeg72nsen"
}

variable "default_zone" {
  type    = string
  default = "ru-central1-b"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}

variable "ssh_root_key" {
  description = "SSH public key for root user"
  type        = string
}

variable "boot_disk_props" {
  type = object({
    disk_type = string,
    disk_size = number
  })
  default = {
    disk_type = "network-hdd"
    disk_size = 20
  }
}

variable "vm_props" {
  type = object({
    family             = string,
    name               = string,
    platform_id        = string,
    preemptible        = bool,
    nat                = bool,
    serial_port_enable = number,
    cores              = number,
    memory             = number,
    core_fraction      = number
  })
  default = {
    family             = "ubuntu-2204-lts",
    name               = "kuber-nod",
    platform_id        = "standard-v3",
    preemptible        = false,
    nat                = true,
    serial_port_enable = 1,
    cores              = 2,
    memory             = 4,
    core_fraction      = 20
  }
}

variable "nodes" {
  type = object({
    master = number,
    worker = number
  })
  default = {
    master = 3,
    worker = 2
  }
}

variable "inventory_output_path" {
  type    = string
  default = "../conf/kubespray/inventory/local/hosts.ini"
}
