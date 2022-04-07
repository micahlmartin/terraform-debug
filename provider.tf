// terraform {
//   required_providers {
//     harness = {
//       source = "harness/harness"
//     }
//   }
// }

// provider "harness" {
//   # Configuration options
// }

// data "harness_delegate" "test" {
//   name = "TestCreateDelegate_RyQi"
// }

// resource "harness_delegate_approval" "test" {
//   delegate_id = data.harness_delegate.test.id
//   approve     = true
// }

// resource "harness_application" "test" {
//   name = "testing_env_creation"
// }

// variable "environment_map" {
//       type      = map(string)
//       default   = {
//         "DEV"  = "NON_PROD",
//         "UAT"   = "NON_PROD",
//         "OTH"   = "NON_PROD",
//         "PROD" = "PROD"
//     }
// }


// resource "harness_environment" "environments" {
//     for_each  = var.environment_map
//     app_id    = harness_application.test.id
//     name      = each.key
//     type      = each.value
// }

output "instance_ips" {
  value = jsonencode({
    "Consolidate": "10.100.0.10",
    "DomainController": "10.100.0.20"
  })
}
