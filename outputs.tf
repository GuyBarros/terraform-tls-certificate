  output "ca_key_algorithm" {
  value = "${tls_private_key.root.algorithm}"
  sensitive = false
}

output "ca_private_key_pem" {
  value = "${tls_private_key.root.private_key_pem}"
  sensitive = false

}

output "ca_cert_pem" {
  value = "${tls_self_signed_cert.root.cert_pem}"
  sensitive = false

}

output "consul_gossip_key"{
  value = "${base64encode(random_id.consul_gossip_key.hex)}"
  sensitive = false

}

output "consul_master_token"{
  value = "${random_id.consul_master_token.hex}"
  sensitive = false

}

output "consul_join_tag_value"{
  value = "${random_id.consul_join_tag_value.hex}"
  sensitive = false

}


output "nomad_gossip_key"{
  value = "${base64encode(random_id.nomad_gossip_key.hex)}"
  sensitive = false

}
