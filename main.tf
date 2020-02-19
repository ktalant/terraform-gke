resource "google_container_cluster" "talat_cluster" {
  name = var.cluster_name
  project = var.project
  description = "Talant GKE Cluster"
  location = var.location

  remove_default_node_pool = true
  initial_node_count = var.initial_node_count

  master_auth {
      username = ""
      password = ""

      client_certificate_config {
          issue_client_certificate = false
      }
  }
}

# resource "google_container_node_pool" "talant_node_pool" {
#   name = var.name-"node-pool"
# }

