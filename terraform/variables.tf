variable project {
  description = "project id"
}

variable region {
  description = "region"
  default = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  description = "path to the ptivate key used for ssh access"
}

variable disk_image {
  description = "disk image"
}
variable zone {
  description = "zone"
    default     = "europe-west1"
}