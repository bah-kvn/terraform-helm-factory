#!/bin/bash
[ -d ".terraform" ] || terraform init # only require to run once.
export log=/tmp/tf-deploy.log
export CLUSTER_NAME="demo-rmc"
export TF_LOG=DEBUG
export TF_LOG_PATH=$log
export TF_VAR_bigbang_branch="main"
export TF_VAR_bigbang_enabled=true
export TF_VAR_bigbang_path="rmc"
export TF_VAR_bigbang_repo="https://github.com/bah-kvn/bigbang.git"
export TF_VAR_certManager_enabled=true
export TF_VAR_cluster_aws_region="us-east-1"
export TF_VAR_cluster_domain="$CLUSTER_NAME.$DOMAIN"
export TF_VAR_cluster_hosted_zone_id=$( aws route53 list-hosted-zones-by-name --dns-name $DOMAIN --output yaml | yq '.HostedZones[0].Id' | cut -d '/' -f3 )
export TF_VAR_cluster_name="$CLUSTER_NAME"
export TF_VAR_externalDns_enabled=true
export TF_VAR_flux_enabled=true
export TF_VAR_git_password="$GH_PASSWORD"
export TF_VAR_git_username="$GH_USERNAME"
export TF_VAR_kubeconfig_path="/usr/local/git/sf/demo-rmc.kubeconfig"
export TF_VAR_letsEncrypt_email="$EMAIL"
export TF_VAR_letsEncrypt_issuer="staging"
export TF_VAR_longhorn_enabled=true
export TF_VAR_rancher_cloud_id="$RANCHER_CLOUD_ACCESS_KEY_ID"
export TF_VAR_rancher_cloud_secret="$RANCHER_CLOUD_SECRET_ACCESS_KEY"
export TF_VAR_rancher_enabled=true
export TF_VAR_rancher_password="$DEFAULT_PASSWORD"
export TF_VAR_rancher_url="rancher.$TF_VAR_cluster_name.$TF_VAR_domain"
export TF_VAR_registryCredentials_email=""
export TF_VAR_registryCredentials_password="$REGISTRY1_SA_PASSWORD"
export TF_VAR_registryCredentials_username="$REGISTRY1_SA_USERNAME"

terraform plan && terraform apply -auto-approve 

