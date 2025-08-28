resource "local_file" "kubespray_inventory" {
  filename = var.inventory_output_path
  content = templatefile("${path.module}/inventory.tpl", {
    masters  = local.masters
    workers  = local.workers
    ssh_user = "ubuntu"
  })
}
