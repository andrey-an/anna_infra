output "app_external_ip" {
  value = module.app.app_external_ip
}

output "app_external_ip_db" {
  value = module.db.app_external_ip
}

output "app_internal_ip" {
  value = module.app.app_internal_ip
}

output "app_internal_ip_db" {
  value = module.db.app_internal_ip
}

