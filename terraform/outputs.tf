output "kubeconfig" {
  value     = <<EOT
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: ${base64encode(google_container_cluster.primary.master_auth[0].cluster_ca_certificate)}
    server: https://${google_container_cluster.primary.endpoint}
  name: ${google_container_cluster.primary.name}
contexts:
- context:
    cluster: ${google_container_cluster.primary.name}
    user: ${google_container_cluster.primary.name}
  name: ${google_container_cluster.primary.name}
current-context: ${google_container_cluster.primary.name}
kind: Config
preferences: {}
users:
- name: ${google_container_cluster.primary.name}
  user:
    token: ${data.google_client_config.default.access_token}
EOT
  sensitive = true  # Adicione esta linha para marcar a saída como sensível
}

