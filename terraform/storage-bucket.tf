terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket   = "otus-terraform"
    region     = "us-east-1"
    access_key = ""
    secret_key = ""

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
