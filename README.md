
Home task #6

1. Код для создания VM:
gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata-from-file startup-script=/home/master/git/anna_infra/startup_script.sh

2. Правило firewall: gcloud compute firewall-rules create default-puma-server --allow tcp:9292 --target-tags=puma-server

Данные:
testapp_IP = 35.198.125.128
testapp_port = 9292

Home tast #7

1. Создан шаблон пакер для создания образа сервера с приложением. Шаблон принимает параметры из файла.
2. Скрипт для запуска экземпляра VM обзара пакера:
gcloud compute instances create reddit-app\
  --boot-disk-size=10GB \
  --image-family reddit-full \
  --machine-type=g1-small \
  --tags puma-server \
  --tags default-allow-ssh \
  --restart-on-failure

Home tast #8

Получен опыт работы с terraform. Добавление нескольких ssh ключен, работа с переменными параметров.

Home tast #9

Получен опыт работы с terraform.
1. Создание и использование модулей в terraform.
2. Управление файлами и параметрами модулей.
3. Использование модуля для создания bucket и перенос в него terraform.tfstate. Перенос terraform.tfstate на локальный хост.

Home task #10

1. Использование модулей позволяет соблюдать идемпотентность команд.
2. Получение списка VM gcloud (gcloud compute instances list --format="csv(name,networkInterfaces.[0].accessConfigs.[0].natIP)")

Home task #11

1. Создание и работа с playbook ansible. Разбивка playbook по задачам.
2. Изпользование gcp inventory для ansbile.
3. Использование provisioner ansible для пакера.

Home tast #12

1. Создание ролей ansible.
2. Использование ansible-galaxy для создания каталога и установки ролей из маркета.
3. Использование ansible-vault, задание для создания пользователей в системе.

Home tast #13

1. Установка и использование vagrant (под WSL).
2. Работа с molecule (molecule 2 и 3). Использование vagrant box.
3. Тесты testinfra.

