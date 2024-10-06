output "namespace" {
  value = kubernetes_namespace.nginx_namespace.metadata[0].name
}