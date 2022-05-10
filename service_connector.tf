resource "oci_sch_service_connector" "eightxeight_service_connector" {
    #Required
    compartment_id = var.compartment_id
    display_name = var.service_connector_display_name
    source {
        #Required
        kind = var.service_connector_source_kind

        log_sources {

            #Optional
            compartment_id = var.compartment_id
            log_group_id = var.log_group_id
            log_id = var.log_id
        }
    }
    target {
        #Required
        kind = var.service_connector_target_kind
        compartment_id = var.compartment_id
        #log_group_id = var.log_group_id
        metric_namespace = var.metric_namespace
        metric = var.metric
        dimensions {
            #Optional
            dimension_value {
                #Required
                kind = var.service_connector_target_dimensions_dimension_value_kind
               
                #Optional
                path = var.service_connector_target_dimensions_dimension_value_path_0
                #value = var.service_connector_target_dimensions_dimension_value_value
                }
            name = var.service_connector_target_dimensions_name_0
        }        
         dimensions {
            #Optional
            dimension_value {
                #Required
                kind = var.service_connector_target_dimensions_dimension_value_kind
               
                #Optional
                path = var.service_connector_target_dimensions_dimension_value_path_1
                #value = var.service_connector_target_dimensions_dimension_value_value
                }
            name = var.service_connector_target_dimensions_name_1
        }        
         dimensions {
            #Optional
            dimension_value {
                #Required
                kind = var.service_connector_target_dimensions_dimension_value_kind
               
                #Optional
                path = var.service_connector_target_dimensions_dimension_value_path_2
                #value = var.service_connector_target_dimensions_dimension_value_value
                }
            name = var.service_connector_target_dimensions_name_2
        }        
        dimensions {
            #Optional
            dimension_value {
                #Required
                kind = var.service_connector_target_dimensions_dimension_value_kind
               
                #Optional
                path = var.service_connector_target_dimensions_dimension_value_path_3
                #value = var.service_connector_target_dimensions_dimension_value_value
                }
            name = var.service_connector_target_dimensions_name_3
        }        
        dimensions {
            #Optional
            dimension_value {
                #Required
                kind = var.service_connector_target_dimensions_dimension_value_kind
               
                #Optional
                path = var.service_connector_target_dimensions_dimension_value_path_4
                #value = var.service_connector_target_dimensions_dimension_value_value
                }
            name = var.service_connector_target_dimensions_name_4
        }        
        dimensions {
            #Optional
            dimension_value {
                #Required
                kind = var.service_connector_target_dimensions_dimension_value_kind
               
                #Optional
                path = var.service_connector_target_dimensions_dimension_value_path_5
                #value = var.service_connector_target_dimensions_dimension_value_value
                }
            name = var.service_connector_target_dimensions_name_5
        }        
        #enable_formatted_messaging = var.service_connector_target_enable_formatted_messaging
        #topic_id = oci_ons_notification_topic.test_notification_topic.id
    }
    
    tasks {
    condition = "logContent='Started Session' and 'root'"
    kind      = "logRule"
    }

}


