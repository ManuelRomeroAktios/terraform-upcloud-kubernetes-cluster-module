terraform {
  # Specify the required providers and their versions.
  # This ensures compatibility and reproducible infrastructure deployments.
  required_providers {
    upcloud = {
      source  = "UpCloudLtd/upcloud"
      version = "5.28.0"
    }
  }
}
