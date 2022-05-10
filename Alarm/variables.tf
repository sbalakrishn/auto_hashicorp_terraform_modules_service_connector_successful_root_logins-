variable "compartment_id" {
   type = string
   default = ""
   description = "The compartment_ocid"
}

variable "compartment_name" {
   type = string
   default = ""
   description = "The compartment Name"
}

variable "notification_topic_name" {
   type = string
   default = "Successful_Root_Logins"
   description = "The Notification Topic Name"
}

variable "notification_topic_description" {
   type = string
   default = "Capturing Direct Successful Root Logins"
   description = "Capturing Direct Successful Root Logins"
}

variable "region_name" {
   type = string
   default = ""
   description = "region"
}

variable "tenancy_id" {
   type = string
   default = ""
   description = "OCID of Tenancy"
}

variable "api_fingerprint" {
   type = string
   default = "b4:d0:21:fc:e7:74:61:fd:16:5d:75:ed:d0:f6:67:78"
   description = "Fingerprints"
}

variable "api_private_key_path" {
   type = string
   default = "c:/Users/sreejith_b/.oci/key_name.pem"
   description = "private access key"
 }

 variable "subscription_endpoint" {
   type = string
   default = "ops-auth-notice@8x8.com"
   description = "E-Mail or DL for communication"
}

 variable "subscription_protocol" {
   type = string
   default = "EMAIL"
   description = "Protocol for communication"
}

# Alarm Definition Variables Below

 variable "alarm_display_name" {
   type = string
   default = "Alarm_Successful_Direct_Root_Logins"
   description = "Name of the Alarm"
}

 variable "alarm_is_enabled" {
   description = "To enable the Alarm"
   type = bool
   default = "true"
}

 variable "alarm_metric_compartment_id" {
   type = string
   default = ""
   description = "Compartment ID of where the Alarm Metric is set"
}

# Same as what we have given in service connector Metric Namespace -root_login_failure
 variable "alarm_namespace" {
   type = string
   default = "successful_direct_logins_root"
   description = "The source service or application emitting the metric"
}

#use service connector metric name
 variable "alarm_query" {
   type = string
   default = "(successful_root_logins[5m].groupby(host).count()/2+1)+(successful_root_logins[5m].groupby(host).absent()-1) >= 1"
   description = "The Alarm Query"
}

 variable "alarm_severity" {
   type = string
   default = "Warning"
   description = "The Severity of the alarm"
}

 variable "alarm_message_format" {
   type = string
   default = "ONS_OPTIMIZED"
   description = "The Severity of the alarm"
}
