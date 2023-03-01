output "chart_name" {
  description = "Deployed grafana helm chart name"
  value       = helm_release.grafana.chart
}

output "release_id" {
  description = "Release name of the grafana helm chart"
  value       = helm_release.grafana.id
}

output "release_status" {
  description = "Release Status of the deployed grafana helm chart"
  value       = helm_release.grafana.status
}

output "version" {
  description = "Version of the deployed grafana helm chart"
  value       = helm_release.grafana.version
}
