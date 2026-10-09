output "instance_public_ip" {
  description = "The public floating IP address of the web server"
  value       = openstack_networking_floatingip_v2.web.address
}

output "website_url" {
  description = "Direct URL to access your deployed web server"
  value       = "http://${openstack_networking_floatingip_v2.web.address}"
}