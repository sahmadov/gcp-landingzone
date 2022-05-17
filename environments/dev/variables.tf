variable "project_id" {
  description = "The project ID to host the cluster in"
  default     = "sanan-dev"
}

variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "gke-cluster"
}

variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "dev"
}

variable "region" {
  description = "The region to host the cluster in"
  default     = "europe-west1"
}

variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "landing-to-dev-env-network"
}

variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "landing-to-dev-env-subnet"
}

variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}

variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}

variable "helm_account_name" {
  default = "helm"
}

variable "helm_version" {
  default = "v3.8.2"
}
