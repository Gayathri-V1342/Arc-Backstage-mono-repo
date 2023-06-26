health_check_domains              = ["healthcheck.Arc-Backstage-mono-repo"]
region                            = "ap-south-1"
environment                       = "Arc-Backstage-mono-repo"
namespace                         = "Arc-Backstage-mono-repo"
route_53_zone                     = "Arc-Backstage-mono-repo"
availability_zones                = ["ap-south-1a", "ap-south-1b"]
name                              = "Arc-Backstage-mono-repo"
kubernetes_version                = "1.21" // TODO: update me
oidc_provider_enabled             = true
enabled_cluster_log_types         = ["audit"]
cluster_log_retention_period      = 7
instance_types                    = ["t3.medium"]
desired_size                      = 3
max_size                          = 25
min_size                          = 3
disk_size                         = 50
kubernetes_labels                 = {}
cluster_encryption_config_enabled = true
addons = [
  {
    addon_name = "vpc-cni"
    #    addon_version            = "v1.9.1-eksbuild.1"
    addon_version            = null
    resolve_conflicts        = "NONE"
    service_account_role_arn = null
  }
]
kubernetes_namespace =  "Arc-Backstage-mono-repo"
// TODO: tighten RBAC
#map_additional_iam_roles = [
#  {
#    username = "admin",
#    groups   = ["system:masters"],
#    rolearn  = "arn:aws:iam::757583164619:role/sourcefuse-poc-2-admin-role"
#  }
#] // TODO: update me
vpc_name = "Arc-Backstage-mono-repo-Arc-Backstage-mono-repo-vpc" // TODO: update me
private_subnet_names = [
  "Arc-Backstage-mono-repo-Arc-Backstage-mono-repo-private-ap-south-1a",
  "Arc-Backstage-mono-repo-Arc-Backstage-mono-repo-private-ap-south-1b"
]
public_subnet_names = [
  "Arc-Backstage-mono-repo-Arc-Backstage-mono-repo-public-ap-south-1a",
  "Arc-Backstage-mono-repo-Arc-Backstage-mono-repo-public-ap-south-1b"
]
