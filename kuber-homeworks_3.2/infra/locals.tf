locals {
  masters = [
    for i in yandex_compute_instance.master_nodes :
    {
      name       = i.name
      public_ip  = i.network_interface[0].nat_ip_address
      private_ip = i.network_interface[0].ip_address
      fqdn       = i.fqdn
    }
  ]
  workers = [
    for i in yandex_compute_instance.worker_nodes :
    {
      name       = i.name
      public_ip  = i.network_interface[0].nat_ip_address
      private_ip = i.network_interface[0].ip_address
      fqdn       = i.fqdn
    }
  ]
}
