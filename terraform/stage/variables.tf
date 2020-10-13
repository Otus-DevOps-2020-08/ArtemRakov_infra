variable cloud_id {
  description = "Cloud"
}

variable folder_id {
  description = "Folder"
}

variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable image_id {
  description = "Disk image"
}

variable subnet_id {
  description = "Subnet"
}

variable service_account_key_file {
  description = "key .json"
}

variable private_key_path {
  description = "Path to the private key used for ssh access"
}

variable number_of_instances {
  type        = number
  default     = 1
  description = "Number of instances existing in project"
}

variable app_disk_image {
  description = "Disk image of the app"
}

variable db_disk_image {
  description = "Db image of the app"
}
