################################################################
## shared
################################################################
variable "project_name" {
  type        = string
  description = "Name of the project."
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT'"
}

variable "namespace" {
  type        = string
  description = "Namespace for the resources."
  default     = "demo"
}

################################################################
## db
################################################################
variable "db_type" {
  description = "Type of DB. Options are sqlserver-ex or aurora"
  type        = string

  validation {
    condition     = var.db_type == "aurora" || var.db_type == "sqlserver-ex"
    error_message = "The db_type value must be either \"aurora\" or \"sqlserver-ex\"."
  }
}

variable "db_admin_username" {
  type        = string
  default     = "db_admin"
  description = "Name of the default DB admin user role"
}

variable "cluster_family" {
  type        = string
  default     = "aurora-postgresql10"
  description = "The family of the DB cluster parameter group"
}

variable "engine" {
  type        = string
  default     = "aurora-postgresql"
  description = "The name of the database engine to be used for this DB cluster. Valid values: `aurora`, `aurora-mysql`, `aurora-postgresql`"
}

variable "engine_mode" {
  type        = string
  default     = "serverless"
  description = "The database engine mode. Valid values: `parallelquery`, `provisioned`, `serverless`"
}

variable "engine_version" {
  type        = string
  default     = "aurora-postgresql13.3"
  description = "The version of the database engine to use. See `aws rds describe-db-engine-versions` "
}

variable "allow_major_version_upgrade" {
  type        = bool
  default     = false
  description = "Enable to allow major engine version upgrades when changing engine versions. Defaults to false."
}

variable "auto_minor_version_upgrade" {
  type        = bool
  default     = true
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
}

variable "cluster_size" {
  type        = number
  default     = 0
  description = "Number of DB instances to create in the cluster"
}

variable "instance_type" {
  type        = string
  default     = "db.t3.medium"
  description = "Instance type to use"
}

variable "name" {
  type        = string
  default     = "demo"
  description = <<-EOT
    ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.
    This is the only ID element not also included as a `tag`.
    The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input.
    EOT
}
