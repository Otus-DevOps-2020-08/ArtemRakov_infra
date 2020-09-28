build {
  sources = [
    "source.yandex.yc"
  ]

  provisioner "shell" {
    script = "packer/scripts/install_ruby.sh"
    execute_command = "sudo {{ .Path }}"
    pause_before = "10s"
  }

  provisioner "shell" {
    script = "packer/scripts/install_mongodb.sh"
    execute_command = "sudo {{ .Path }}"
  }

  provisioner "file" {
    source = "packer/files/start.sh"
    destination = "~/start.sh"
  }

  provisioner "file" {
    source = "packer/files/reddit.service"
    destination = "~/reddit.service"
  }

  provisioner "shell" {
    inline = ["sudo mv ~/reddit.service /etc/systemd/system/reddit.service"]
  }

  provisioner "shell" {
    script = "packer/scripts/deploy.sh"
    execute_command = "sudo {{ .Path }}"
  }

}
