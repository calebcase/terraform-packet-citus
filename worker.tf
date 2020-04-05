resource "packet_device" "worker" {
  for_each = var.workers

  project_id    = data.packet_project.citus.project_id
  facilities    = [var.facility]
  plan          = var.worker_device_plan
  billing_cycle = var.billing_cycle

  hostname         = each.value
  operating_system = "ubuntu_18_04"

  user_data = templatefile("${path.module}/init.tmpl", {})
}
