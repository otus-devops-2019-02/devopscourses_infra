terraform {
  # Версия terraform
    required_version = ">=0.11,<0.12"
}
    
provider "google" {
version = "2.0.0"
project = "${var.project}"
region = "${var.region}"
}
module "app" {
source = "../modules/app"
public_key_path = "${var.public_key_path}"
app_disk_image = "${var.app_disk_image}"
zone            = "${var.zone}"
inst_suff       = "prod"
}
module "db" {
source = "../modules/db"
public_key_path = "${var.public_key_path}"
db_disk_image = "${var.db_disk_image}"
zone            = "${var.zone}"
inst_suff       = "prod"
}
module "vpc" {
source = "../modules/vpc"
source_ranges = ["82.155.222.156/32"]
inst_suff       = "prod"
}


