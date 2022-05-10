variable "tenancy_id" {
   type = string
   default = ""
   description = "OCID of Tenancy"
}

variable "region_name" {
   type = string
   default = ""
   description = "region"
}

variable "compartment_id" {
   type = string
   default = ""
   description = "Information on compartment"
}

variable "log_group_id" {
   type = string
   default = ""
   description = "Information on log group"
}

variable "log_id" {
   type = string
   default = ""
   description = "Information on compartment"
}


variable "service_connector_display_name" {
   type = string
   default = "SvCn_Successful_Direct_Root_Logins"
   description = "Service Connector Name"
}

variable "service_connector_source_kind" {
   type = string
   default = "Logging"
   description = "Source of the log file"
}

variable "service_connector_target_kind" {
   description = "Target of the logs"
   type = string
   default = "Monitoring"
}

#variable "service_connector_tasks_kind" {

   #description = "Tasks"
   #type = string
   #default = "Notification"
#}

variable "metric" {
   type = string
   default = "successful_root_logins"
   description = "Service Connector Metric Name"
}

variable "metric_namespace" {
   type = string
   default = "successful_direct_logins_root"
   description = "Service Connector Metric Namespace"
}

variable "service_connector_target_enable_formatted_messaging" {
   type = bool
   default = "true"
   description = "Sending formatted Email to the DL"
}

# Same as the service connector Metric Namespace
variable "service_connector_target_namespace" {
   description = "Tasks"
   type = string
   default = "successful_direct_logins_root"
}

variable "service_connector_target_dimensions_dimension_value_kind" {
   description = "Tasks"
   type = string
   default = "jmesPath"
}

variable "service_connector_target_dimensions_dimension_value_path_0" {
   type = string
   default = "logContent.data.businessUnit"
   description = "Dimension Value"
}

variable "service_connector_target_dimensions_name_0" {
    type = string
    default = "businessUnit"
    description = "dimensions_name"
}

variable "service_connector_target_dimensions_dimension_value_path_1" {
   type = string
   default = "logContent.data.environment"
   description = "Dimension Value"
}

variable "service_connector_target_dimensions_name_1" {
    type = string
    default = "environment"
    description = "dimensions_name"
}

variable "service_connector_target_dimensions_dimension_value_path_2" {
   type = string
   default = "logContent.data.fqdn"
   description = "Dimension Value"
}

variable "service_connector_target_dimensions_name_2" {
    type = string
    default = "fqdn"
    description = "dimensions_name"
}

variable "service_connector_target_dimensions_dimension_value_path_3" {
   type = string
   default = "logContent.data.securityCompliance"
   description = "Dimension Value"
}

variable "service_connector_target_dimensions_name_3" {
    type = string
    default = "securityCompliance"
    description = "dimensions_name"
}

variable "service_connector_target_dimensions_dimension_value_path_4" {
   type = string
   default = "logContent.data.source_address"
   description = "Dimension Value"
}

variable "service_connector_target_dimensions_name_4" {
    type = string
    default = "source_address"
    description = "dimensions_name"
}

variable "service_connector_target_dimensions_dimension_value_path_5" {
   type = string
   default = "logContent.data.message"
   description = "Dimension Value"
}

variable "service_connector_target_dimensions_name_5" {
    type = string
    default = "message"
    description = "dimensions_name"
}

# variable "service_connector_tasks_condition" {
#    description = "Tasks"
#    type = string
#    default = "root, authentication failure"
# }


