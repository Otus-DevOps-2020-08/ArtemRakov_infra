# ArtemRakov_infra
ArtemRakov Infra repository

### Homework 3 (ДЗ №3)

bastion_IP = 84.201.173.106
someinternalhost_IP = 10.130.0.30

### Подключение к someinternalhost с локальной машины в одну команду

`ssh -i ~/.ssh/appuser -AJ appuser@84.201.173.106 appuser@10.130.0.30`


### Подключение к someinternalhost с помощью alias

Go to ~/.ssh/config

```
### The Bastion Host

Host bastion
  HostName 84.201.173.106
  User appuser
  IdentityFile ~/.ssh/appuser

### The Remote Host

Host someinternalhost
  HostName 10.130.0.30
  User appuser
  ForwardAgent yes
  ProxyJump bastion
```

Then just use `ssh someinternalhost`


### Homework 4

testapp_IP = 84.201.176.12
testapp_port = 9292


```
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-b,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file user-data=./metadata.yaml
```

### Ansible 1

Когда мы в первый раз прогнали `git clone` ansible скопировал репу. И разы, когда прогоняли плейбук с клонированием ничего не происходило. Потому что, ansible идемпотентный. А когда мы удалили папку `~/reddit` и прогнали еще раз плейбук, то ansible склонировал репу опять. 
