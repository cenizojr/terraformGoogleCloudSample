# Descargar json con credenciales de aquí:
# https://console.cloud.google.com/apis/credentials/serviceaccountkey
# Tras ello definir la variable de entorno apuntando a el json
export GOOGLE_CLOUD_KEYFILE_JSON=./credentials/cnsa2025-jme418-6ee5b88247e8.json

variable "gcp_project" {
  # Configurar el nombre del proyecto en GCP
  default = "cnsa2025-jme418"
}

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.25.0"
    }
  }
}

provider "google" {
  project = var.gcp_project
  region  = "us-central1"
  zone    = "us-central1-c"
}
