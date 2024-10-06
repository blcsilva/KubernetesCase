variable "gcp_project_id" {
  description = "ID do projeto GCP"
  type        = string
}

variable "gcp_region" {
  description = "Região do GCP"
  type        = string
}

variable "gcp_cluster_name" {
  description = "Nome do cluster GCP"
  type        = string
}

variable "gcp_service_account_key_path" {
  description = "Caminho para a chave JSON do serviço de conta da GCP"
  type        = string
}
