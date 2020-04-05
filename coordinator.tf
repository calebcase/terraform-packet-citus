resource "packet_device" "coordinator" {
  project_id    = data.packet_project.citus.project_id
  facilities    = [var.facility]
  plan          = var.coordinator_device_plan
  billing_cycle = var.billing_cycle

  hostname         = "coordinator"
  operating_system = "ubuntu_18_04"

  user_data = join("\n", [
    templatefile("${path.module}/init.tmpl", {}),
    templatefile("${path.module}/coordinator.tmpl", {
      workers = [for w in packet_device.worker : w.network.2.address]
    })
  ])
}
