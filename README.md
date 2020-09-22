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
