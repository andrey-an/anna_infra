variable "project" {
  description = "Project ID"
}

variable "region" {
  description = "Region"

  # Значение по умолчанию
  default = "europe-west1-b"
}

variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable "private_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}

variable "disk_image" {
  description = "Disk image"
}

variable "ssh_user" {
  description = "User"
}

variable "ssh_key" {
  description = "User"
}

variable "ssh_user1" {
  description = "User"
}

variable "ssh_key1" {
  description = "User"
}

