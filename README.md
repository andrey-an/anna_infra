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

