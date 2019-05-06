module "storage-bucket" {
  source  = "SweetOps/storage-bucket/google"
  version = "0.1.1"

  # Имена поменяйте на другие
  name = ["storage-bucket-prod", "storage-bucket-stage"]
}

output storage-bucket_url {
  value = "${module.storage-bucket.url}"
}

