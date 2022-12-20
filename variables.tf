
variable "bigbang_enabled" {
  type    = bool
  default = true
}

variable "factory_chart_repo" {
  type    = string
  default = ""
}

variable "certManager_enabled" {
  type    = bool
  default = true
}

variable "externalDns_enabled" {
  type    = bool
  default = true
}

variable "longhorn_enabled" {
  type    = bool
  default = true
}

variable "rancher_enabled" {
  type    = bool
  default = true
}

variable "flux_enabled" {
  type    = bool
  default = true
}

variable "cluster_aws_region" {
  type    = string
  default = "us-east-1"
}

variable "cluster_domain" {
  type    = string
  default = ""
}

variable "kubeconfig_path" {
  type    = string
  default = "~/.kube/config"
}

variable "cluster_hosted_zone_id" {
  type    = string
  default = ""
}

variable "letsEncrypt_email" {
  type    = string
  default = "dev@bah.com"
}

variable "letsEncrypt_issuer" {
  type    = string
  default = "staging"
}

variable "rancher_chart_version" {
  type    = string
  default = "2.6.8"
}

variable "rancher_password" {
  type    = string
  default = "b00zA113n"
}

variable "rancher_cloud_access_key_id" {
  type    = string
  default = ""
}

variable "rancher_cloud_secret_access_key" {
  type    = string
  default = ""
}

variable "rancher_url" {
  type = string
}

variable "bigbang_branch" {
  type    = string
  default = "main"
}

variable "git_password" {
  type    = string
  default = ""
}

variable "bigbang_path" {
  type    = string
  default = "main"
}

variable "bigbang_repo" {
  type    = string
  default = ""
}

variable "git_username" {
  type    = string
  default = ""
}

variable "registryCredentials_password" {
  type    = string
  default = ""
}

variable "registryCredentials_username" {
  type    = string
  default = ""
}

variable "registryCredentials_email" {
  type    = string
  default = ""
}

