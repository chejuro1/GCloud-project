# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "google_container_cluster" "default" {
  allow_net_admin                          = null
  cluster_ipv4_cidr                        = "10.10.128.0/17"
  datapath_provider                        = "LEGACY_DATAPATH"
  default_max_pods_per_node                = 110
  deletion_protection                      = true
  description                              = null
  enable_autopilot                         = true
  enable_cilium_clusterwide_network_policy = false
  enable_intranode_visibility              = true
  enable_kubernetes_alpha                  = false
  enable_l4_ilb_subsetting                 = false
  enable_legacy_abac                       = false
  enable_shielded_nodes                    = true
  enable_tpu                               = false
  initial_node_count                       = 0
  location                                 = "northamerica-northeast2"
  logging_service                          = "logging.googleapis.com/kubernetes"
  min_master_version                       = null
  monitoring_service                       = "monitoring.googleapis.com/kubernetes"
  name                                     = "demo"
  network                                  = "projects/azure-426803/global/networks/default"
  networking_mode                          = "VPC_NATIVE"
  node_locations                           = ["northamerica-northeast2-a", "northamerica-northeast2-b", "northamerica-northeast2-c"]
  node_version                             = "1.29.4-gke.1043002"
  private_ipv6_google_access               = null
  project                                  = "azure-426803"
  remove_default_node_pool                 = null
  resource_labels                          = {}
  subnetwork                               = "projects/azure-426803/regions/northamerica-northeast2/subnetworks/default"
  addons_config {
    dns_cache_config {
      enabled = true
    }
    gce_persistent_disk_csi_driver_config {
      enabled = true
    }
    gcp_filestore_csi_driver_config {
      enabled = true
    }
    gcs_fuse_csi_driver_config {
      enabled = true
    }
    horizontal_pod_autoscaling {
      disabled = false
    }
    http_load_balancing {
      disabled = false
    }
    network_policy_config {
      disabled = true
    }
    stateful_ha_config {
      enabled = true
    }
  }
  authenticator_groups_config {
    security_group = ""
  }
  binary_authorization {
    evaluation_mode = "DISABLED"
  }
  cluster_autoscaling {
    autoscaling_profile = "OPTIMIZE_UTILIZATION"
    enabled             = true
    auto_provisioning_defaults {
      boot_disk_kms_key = null
      disk_size         = 0
      disk_type         = null
      image_type        = "COS_CONTAINERD"
      min_cpu_platform  = null
      oauth_scopes      = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      service_account   = "default"
      management {
        auto_repair  = true
        auto_upgrade = true
      }
      upgrade_settings {
        max_surge       = 1
        max_unavailable = 0
        strategy        = "SURGE"
      }
    }
    resource_limits {
      maximum       = 1000000000
      minimum       = 0
      resource_type = "cpu"
    }
    resource_limits {
      maximum       = 1000000000
      minimum       = 0
      resource_type = "memory"
    }
    resource_limits {
      maximum       = 1000000000
      minimum       = 0
      resource_type = "nvidia-tesla-t4"
    }
    resource_limits {
      maximum       = 1000000000
      minimum       = 0
      resource_type = "nvidia-tesla-a100"
    }
  }
  database_encryption {
    key_name = null
    state    = "DECRYPTED"
  }
  default_snat_status {
    disabled = false
  }
  dns_config {
    cluster_dns        = "CLOUD_DNS"
    cluster_dns_domain = "cluster.local"
    cluster_dns_scope  = "CLUSTER_SCOPE"
  }
  gateway_api_config {
    channel = "CHANNEL_STANDARD"
  }
  ip_allocation_policy {
    cluster_ipv4_cidr_block       = "10.25.128.0/17"
    cluster_secondary_range_name  = "gke-demo-pods-daa2d18a"
    services_ipv4_cidr_block      = "34.118.224.0/20"
    services_secondary_range_name = null
    stack_type                    = "IPV4"
    pod_cidr_overprovision_config {
      disabled = false
    }
  }
  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }
  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  monitoring_config {
    enable_components = ["SYSTEM_COMPONENTS", "STORAGE", "POD", "DEPLOYMENT", "STATEFULSET", "DAEMONSET", "HPA"]
    advanced_datapath_observability_config {
      enable_metrics = false
      enable_relay   = false
    }
    managed_prometheus {
      enabled = true
    }
  }
  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }
  node_config {
    boot_disk_kms_key           = null
    disk_size_gb                = 100
    disk_type                   = "pd-balanced"
    enable_confidential_storage = false
    guest_accelerator           = []
    image_type                  = "COS_CONTAINERD"
    labels                      = {}
    local_ssd_count             = 0
    logging_variant             = "DEFAULT"
    machine_type                = "e2-small"
    metadata = {
      disable-legacy-endpoints = "true"
    }
    min_cpu_platform      = null
    node_group            = null
    oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    preemptible           = false
    resource_labels       = {}
    resource_manager_tags = {}
    service_account       = "default"
    spot                  = false
    tags                  = []
    reservation_affinity {
      consume_reservation_type = "NO_RESERVATION"
      key                      = null
      values                   = []
    }
    shielded_instance_config {
      enable_integrity_monitoring = true
      enable_secure_boot          = true
    }
    workload_metadata_config {
      mode = "GKE_METADATA"
    }
  }
  node_pool {
    initial_node_count = 1
    max_pods_per_node  = 32
    name               = "default-pool"
    name_prefix        = null
    node_count         = 0
    node_locations     = ["northamerica-northeast2-a"]
    version            = "1.29.4-gke.1043002"
    autoscaling {
      location_policy      = "BALANCED"
      max_node_count       = 1000
      min_node_count       = 0
      total_max_node_count = 0
      total_min_node_count = 0
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    network_config {
      create_pod_range     = false
      enable_private_nodes = false
      pod_ipv4_cidr_block  = "10.25.128.0/17"
      pod_range            = "gke-demo-pods-daa2d18a"
    }
    node_config {
      boot_disk_kms_key           = null
      disk_size_gb                = 100
      disk_type                   = "pd-balanced"
      enable_confidential_storage = false
      guest_accelerator           = []
      image_type                  = "COS_CONTAINERD"
      labels                      = {}
      local_ssd_count             = 0
      logging_variant             = "DEFAULT"
      machine_type                = "e2-small"
      metadata = {
        disable-legacy-endpoints = "true"
      }
      min_cpu_platform      = null
      node_group            = null
      oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      preemptible           = false
      resource_labels       = {}
      resource_manager_tags = {}
      service_account       = "default"
      spot                  = false
      tags                  = []
      reservation_affinity {
        consume_reservation_type = "NO_RESERVATION"
        key                      = null
        values                   = []
      }
      shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = true
      }
      workload_metadata_config {
        mode = "GKE_METADATA"
      }
    }
    upgrade_settings {
      max_surge       = 1
      max_unavailable = 0
      strategy        = "SURGE"
    }
  }
  node_pool {
    initial_node_count = 0
    max_pods_per_node  = 32
    name               = "pool-1"
    name_prefix        = null
    node_count         = 0
    node_locations     = ["northamerica-northeast2-a", "northamerica-northeast2-b", "northamerica-northeast2-c"]
    version            = "1.29.4-gke.1043002"
    autoscaling {
      location_policy      = "BALANCED"
      max_node_count       = 1000
      min_node_count       = 0
      total_max_node_count = 0
      total_min_node_count = 0
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    network_config {
      create_pod_range     = false
      enable_private_nodes = false
      pod_ipv4_cidr_block  = "10.25.128.0/17"
      pod_range            = "gke-demo-pods-daa2d18a"
    }
    node_config {
      boot_disk_kms_key           = null
      disk_size_gb                = 100
      disk_type                   = "pd-balanced"
      enable_confidential_storage = false
      guest_accelerator           = []
      image_type                  = "COS_CONTAINERD"
      labels                      = {}
      local_ssd_count             = 0
      logging_variant             = "DEFAULT"
      machine_type                = "e2-medium"
      metadata = {
        disable-legacy-endpoints = "true"
      }
      min_cpu_platform      = null
      node_group            = null
      oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      preemptible           = false
      resource_labels       = {}
      resource_manager_tags = {}
      service_account       = "default"
      spot                  = false
      tags                  = []
      reservation_affinity {
        consume_reservation_type = "NO_RESERVATION"
        key                      = null
        values                   = []
      }
      shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = true
      }
      workload_metadata_config {
        mode = "GKE_METADATA"
      }
    }
    upgrade_settings {
      max_surge       = 1
      max_unavailable = 0
      strategy        = "SURGE"
    }
  }
  node_pool {
    initial_node_count = 0
    max_pods_per_node  = 32
    name               = "pool-2"
    name_prefix        = null
    node_count         = 0
    node_locations     = ["northamerica-northeast2-a", "northamerica-northeast2-b", "northamerica-northeast2-c"]
    version            = "1.29.4-gke.1043002"
    autoscaling {
      location_policy      = "BALANCED"
      max_node_count       = 1000
      min_node_count       = 0
      total_max_node_count = 0
      total_min_node_count = 0
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    network_config {
      create_pod_range     = false
      enable_private_nodes = false
      pod_ipv4_cidr_block  = "10.25.128.0/17"
      pod_range            = "gke-demo-pods-daa2d18a"
    }
    node_config {
      boot_disk_kms_key           = null
      disk_size_gb                = 100
      disk_type                   = "pd-balanced"
      enable_confidential_storage = false
      guest_accelerator           = []
      image_type                  = "COS_CONTAINERD"
      labels                      = {}
      local_ssd_count             = 0
      logging_variant             = "DEFAULT"
      machine_type                = "e2-standard-2"
      metadata = {
        disable-legacy-endpoints = "true"
      }
      min_cpu_platform      = null
      node_group            = null
      oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      preemptible           = false
      resource_labels       = {}
      resource_manager_tags = {}
      service_account       = "default"
      spot                  = false
      tags                  = []
      reservation_affinity {
        consume_reservation_type = "NO_RESERVATION"
        key                      = null
        values                   = []
      }
      shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = true
      }
      workload_metadata_config {
        mode = "GKE_METADATA"
      }
    }
    upgrade_settings {
      max_surge       = 1
      max_unavailable = 0
      strategy        = "SURGE"
    }
  }
  node_pool {
    initial_node_count = 0
    max_pods_per_node  = 32
    name               = "pool-3"
    name_prefix        = null
    node_count         = 0
    node_locations     = ["northamerica-northeast2-a", "northamerica-northeast2-b", "northamerica-northeast2-c"]
    version            = "1.29.4-gke.1043002"
    autoscaling {
      location_policy      = "BALANCED"
      max_node_count       = 1000
      min_node_count       = 0
      total_max_node_count = 0
      total_min_node_count = 0
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    network_config {
      create_pod_range     = false
      enable_private_nodes = false
      pod_ipv4_cidr_block  = "10.25.128.0/17"
      pod_range            = "gke-demo-pods-daa2d18a"
    }
    node_config {
      boot_disk_kms_key           = null
      disk_size_gb                = 100
      disk_type                   = "pd-balanced"
      enable_confidential_storage = false
      guest_accelerator           = []
      image_type                  = "COS_CONTAINERD"
      labels                      = {}
      local_ssd_count             = 0
      logging_variant             = "DEFAULT"
      machine_type                = "e2-standard-4"
      metadata = {
        disable-legacy-endpoints = "true"
      }
      min_cpu_platform      = null
      node_group            = null
      oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      preemptible           = false
      resource_labels       = {}
      resource_manager_tags = {}
      service_account       = "default"
      spot                  = false
      tags                  = []
      reservation_affinity {
        consume_reservation_type = "NO_RESERVATION"
        key                      = null
        values                   = []
      }
      shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = true
      }
      workload_metadata_config {
        mode = "GKE_METADATA"
      }
    }
    upgrade_settings {
      max_surge       = 1
      max_unavailable = 0
      strategy        = "SURGE"
    }
  }
  node_pool {
    initial_node_count = 0
    max_pods_per_node  = 32
    name               = "pool-4"
    name_prefix        = null
    node_count         = 0
    node_locations     = ["northamerica-northeast2-a", "northamerica-northeast2-b", "northamerica-northeast2-c"]
    version            = "1.29.4-gke.1043002"
    autoscaling {
      location_policy      = "BALANCED"
      max_node_count       = 1000
      min_node_count       = 0
      total_max_node_count = 0
      total_min_node_count = 0
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    network_config {
      create_pod_range     = false
      enable_private_nodes = false
      pod_ipv4_cidr_block  = "10.25.128.0/17"
      pod_range            = "gke-demo-pods-daa2d18a"
    }
    node_config {
      boot_disk_kms_key           = null
      disk_size_gb                = 100
      disk_type                   = "pd-balanced"
      enable_confidential_storage = false
      guest_accelerator           = []
      image_type                  = "COS_CONTAINERD"
      labels                      = {}
      local_ssd_count             = 0
      logging_variant             = "DEFAULT"
      machine_type                = "e2-standard-8"
      metadata = {
        disable-legacy-endpoints = "true"
      }
      min_cpu_platform      = null
      node_group            = null
      oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      preemptible           = false
      resource_labels       = {}
      resource_manager_tags = {}
      service_account       = "default"
      spot                  = false
      tags                  = []
      reservation_affinity {
        consume_reservation_type = "NO_RESERVATION"
        key                      = null
        values                   = []
      }
      shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = true
      }
      workload_metadata_config {
        mode = "GKE_METADATA"
      }
    }
    upgrade_settings {
      max_surge       = 1
      max_unavailable = 0
      strategy        = "SURGE"
    }
  }
  node_pool {
    initial_node_count = 0
    max_pods_per_node  = 32
    name               = "pool-5"
    name_prefix        = null
    node_count         = 0
    node_locations     = ["northamerica-northeast2-a", "northamerica-northeast2-b", "northamerica-northeast2-c"]
    version            = "1.29.4-gke.1043002"
    autoscaling {
      location_policy      = "BALANCED"
      max_node_count       = 1000
      min_node_count       = 0
      total_max_node_count = 0
      total_min_node_count = 0
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    network_config {
      create_pod_range     = false
      enable_private_nodes = false
      pod_ipv4_cidr_block  = "10.25.128.0/17"
      pod_range            = "gke-demo-pods-daa2d18a"
    }
    node_config {
      boot_disk_kms_key           = null
      disk_size_gb                = 100
      disk_type                   = "pd-balanced"
      enable_confidential_storage = false
      guest_accelerator           = []
      image_type                  = "COS_CONTAINERD"
      labels                      = {}
      local_ssd_count             = 0
      logging_variant             = "DEFAULT"
      machine_type                = "e2-standard-16"
      metadata = {
        disable-legacy-endpoints = "true"
      }
      min_cpu_platform      = null
      node_group            = null
      oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      preemptible           = false
      resource_labels       = {}
      resource_manager_tags = {}
      service_account       = "default"
      spot                  = false
      tags                  = []
      reservation_affinity {
        consume_reservation_type = "NO_RESERVATION"
        key                      = null
        values                   = []
      }
      shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = true
      }
      workload_metadata_config {
        mode = "GKE_METADATA"
      }
    }
    upgrade_settings {
      max_surge       = 1
      max_unavailable = 0
      strategy        = "SURGE"
    }
  }
  node_pool {
    initial_node_count = 0
    max_pods_per_node  = 32
    name               = "pool-6"
    name_prefix        = null
    node_count         = 0
    node_locations     = ["northamerica-northeast2-a", "northamerica-northeast2-b", "northamerica-northeast2-c"]
    version            = "1.29.4-gke.1043002"
    autoscaling {
      location_policy      = "BALANCED"
      max_node_count       = 1000
      min_node_count       = 0
      total_max_node_count = 0
      total_min_node_count = 0
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    network_config {
      create_pod_range     = false
      enable_private_nodes = false
      pod_ipv4_cidr_block  = "10.25.128.0/17"
      pod_range            = "gke-demo-pods-daa2d18a"
    }
    node_config {
      boot_disk_kms_key           = null
      disk_size_gb                = 100
      disk_type                   = "pd-balanced"
      enable_confidential_storage = false
      guest_accelerator           = []
      image_type                  = "COS_CONTAINERD"
      labels                      = {}
      local_ssd_count             = 0
      logging_variant             = "DEFAULT"
      machine_type                = "e2-standard-32"
      metadata = {
        disable-legacy-endpoints = "true"
      }
      min_cpu_platform      = null
      node_group            = null
      oauth_scopes          = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
      preemptible           = false
      resource_labels       = {}
      resource_manager_tags = {}
      service_account       = "default"
      spot                  = false
      tags                  = []
      reservation_affinity {
        consume_reservation_type = "NO_RESERVATION"
        key                      = null
        values                   = []
      }
      shielded_instance_config {
        enable_integrity_monitoring = true
        enable_secure_boot          = true
      }
      workload_metadata_config {
        mode = "GKE_METADATA"
      }
    }
    upgrade_settings {
      max_surge       = 1
      max_unavailable = 0
      strategy        = "SURGE"
    }
  }
  node_pool_defaults {
    node_config_defaults {
      logging_variant = "DEFAULT"
    }
  }
  notification_config {
    pubsub {
      enabled = false
      topic   = null
    }
  }
  private_cluster_config {
    enable_private_endpoint     = false
    enable_private_nodes        = false
    master_ipv4_cidr_block      = null
    private_endpoint_subnetwork = null
    master_global_access_config {
      enabled = false
    }
  }
  release_channel {
    channel = "REGULAR"
  }
  security_posture_config {
    mode               = "BASIC"
    vulnerability_mode = "VULNERABILITY_BASIC"
  }
  service_external_ips_config {
    enabled = false
  }
  vertical_pod_autoscaling {
    enabled = true
  }
  workload_identity_config {
    workload_pool = "azure-426803.svc.id.goog"
  }
}
