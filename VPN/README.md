1. Подключение к someinternalhost в одну команду - ssh -J master@35.210.120.1 master@10.132.0.3
2. Подключение к someinternalhost через alias:
cat ~/.ssh/config
Host bastion
        HostName 35.210.120.1
        IdentityFile ~/.ssh/master
        Port 22
        User master

Host someinternalhost
        HostName 10.132.0.3
        IdentityFile ~/.ssh/master
        Port 22
        User master
        ProxyCommand ssh -q -W %h:%p bastion
3. Конфигурация:
bastion_IP = 35.210.120.1
someinternalhost_IP = 10.132.0.3
