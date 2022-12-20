
resource "helm_release" "factory" {
  name              = "factory"
  repository        = var.factory_chart_repo
  chart             = "factory"
  version           = var.factroy_chart_version

  set {
    name  = "bigbang.enabled"
    value = var.bigbang_enabled
  }

  set {
    name  = "flux.enabled"
    value = var.flux_enabled
  }

  set {
    name  = "certManager.enabled"
    value = var.certManager_enabled
  }
  
  set {
    name  = "externalDns.enabled"
    value = var.externalDns_enabled
  }
  
  set {
    name  = "longhorn.enabled"
    value = var.longhorn_enabled
  }
  
  set {
    name  = "rancher.enabled"
    value = var.rancher_enabled
  }
  
  set {
    name  = "cluster.aws_region"
    value = var.cluster_aws_region
  }
  
  set {
    name  = "cluster.domain"
    value = var.cluster_domain
  }
  
  set {
    name  = "cluster.hosted_zone_id"
    value = var.cluster_hosted_zone_id
  }
  
  
  set {
    name  = "letsEncrypt.email"
    value = var.letsEncrypt_email
  }
  
  set {
    name  = "letsEncrypt.issuer"
    value = var.letsEncrypt_issuer
  }
  
  set {
    name  = "rancher.password"
    value = var.rancher_password
  }
  
  set {
    name  = "rancher.chart_version"
    value = var.rancher_chart_version
  }
  
  set {
    name  = "rancher.url"
    value = var.rancher_url
  }
  
  set {
    name  = "bigbang.branch"
    value = var.bigbang_branch
  }
  
  set {
    name  = "bigbang.path"
    value = var.bigbang_path
  }
  
  set {
    name  = "bigbang.repo"
    value = var.bigbang_repo
  }
  
  set {
    name  = "git.password"
    value = var.git_password
  }
  
  set {
    name  = "git.username"
    value = var.git_username
  }
  
  set {
    name  = "rancher.cloud.rancher_aws_access_key_id"
    value = var.rancher_cloud_access_key_id
  }
  
  set {
    name  = "rancher.cloud.rancher_aws_secret_access_key"
    value = var.rancher_cloud_secret_access_key
  }
  
  set {
    name  = "registry.username"
    value = var.registry_username
  }
  
  set {
    name  = "registry.password"
    value = var.registry_password
  }
  
  set {
    name  = "registry.email"
    value = var.registry_email
  }

}

