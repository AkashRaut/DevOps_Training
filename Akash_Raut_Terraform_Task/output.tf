output "grafana_chart_name" {
  description = "Deployed grafana helm chart name"
  value       = module.helm_grafana.chart_name
}

output "grafana_release_id" {
  description = "Release name of the grafana helm chart"
  value       = module.helm_grafana.release_id
}

output "grafana_release_status" {
  description = "Release Status of the deployed grafana helm chart"
  value       = module.helm_grafana.release_status
}

output "grafana_version" {
  description = "Version of the deployed grafana helm chart"
  value       = module.helm_grafana.version
}
