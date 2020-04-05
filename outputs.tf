output "coordinator" {
  value = packet_device.coordinator
}

output "workers" {
  value = packet_device.worker[*]
}
