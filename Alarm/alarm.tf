
# Resource :1 ::: This resource provides the Notification Topic resource in Oracle Cloud Infrastructure Notifications service.

resource "oci_ons_notification_topic" "eightbyeight_notification_topic" {
    #Required
    compartment_id = var.compartment_id
    name = var.notification_topic_name

    #Optional
    #defined_tags = {"Operations.CostCenter"= "42"}
    description = var.notification_topic_description
    freeform_tags = {"Department"= var.compartment_name}
}


# Resource :2 ::: This resource provides the Subscription resource in Oracle Cloud Infrastructure Notifications service.

resource "oci_ons_subscription" "eightbyeight_subscription" {
    #Required
    compartment_id = var.compartment_id
    endpoint = var.subscription_endpoint
    protocol = var.subscription_protocol
    topic_id = oci_ons_notification_topic.eightbyeight_notification_topic.id

    #Optional
    #defined_tags = {"Operations.CostCenter"= "42"}
    freeform_tags = {"Department"= var.compartment_name}
}

# Resource :3  ::: This resource provides the Alarm resource in Oracle Cloud Infrastructure Monitoring service.

resource "oci_monitoring_alarm" "eightbyeight_alarm" {
    #Required
    compartment_id = var.compartment_id
    destinations = [oci_ons_notification_topic.eightbyeight_notification_topic.id]
    display_name = var.alarm_display_name
    is_enabled = var.alarm_is_enabled
    metric_compartment_id = var.alarm_metric_compartment_id
    namespace = var.alarm_namespace
    query = var.alarm_query
    severity = var.alarm_severity

    # #Optional
    # body = var.alarm_body
    # #defined_tags = {"Operations.CostCenter"= "42"}
    # freeform_tags = {"Compartment"= var.compartment_name}
     message_format = var.alarm_message_format
    # metric_compartment_id_in_subtree = var.alarm_metric_compartment_id_in_subtree
    # pending_duration = var.alarm_pending_duration
    # repeat_notification_duration = var.alarm_repeat_notification_duration
    # resolution = var.alarm_resolution
    # resource_group = var.alarm_resource_group
    # suppression {
    #     #Required
    #     time_suppress_from = var.alarm_suppression_time_suppress_from
    #     time_suppress_until = var.alarm_suppression_time_suppress_until

    #     #Optional
    #     description = var.alarm_suppression_description
    # }
}
