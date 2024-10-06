variable "gcp_service_account_key_path" {
  description = "Caminho para a chave JSON do serviço de conta da GCP."
  type        = string
}

variable "gcp_project_id" {
  description = "O ID do seu projeto na GCP."
  type        = string
}

variable "gcp_region" {
  description = "A região onde o cluster será criado."
  type        = string
}

variable "gcp_cluster_name" {
  description = "O nome do cluster."
  type        = string
}

