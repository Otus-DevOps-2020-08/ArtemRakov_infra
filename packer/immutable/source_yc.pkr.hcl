source "yandex" "yc" {
  service_account_key_file = var.service_account_key_file
  folder_id = var.folder_id
  source_image_family = "ubuntu-1604-lts"
  image_name = "reddit-full-{{ timestamp }}"
  image_family = "reddit-full"
  ssh_username = "ubuntu"
  platform_id = "standard-v1"
  use_ipv4_nat = true
}
