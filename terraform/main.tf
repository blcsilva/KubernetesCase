provider "kubernetes" {
  host                   = var.k8s_host
  token                  = var.k8s_token
  cluster_ca_certificate = base64decode(var.k8s_ca_certificate)
}

resource "kubernetes_namespace" "nginx_namespace" {
  metadata {
    name = "nginx"
  }
}