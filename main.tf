locals {
  enabled  = module.this.enabled
  key_path = format("%s/%s", var.ssh_key_pair_path, module.this.id)
}

resource "tls_private_key" "default" {
  count = local.enabled ? 1 : 0

  algorithm   = var.config["algorithm"]
  ecdsa_curve = var.config["ecdsa_curve"]
  rsa_bits    = var.config["rsa_bits"]
}

resource "local_sensitive_file" "public_key" {
  count = local.enabled ? 1 : 0

  content              = one(tls_private_key.default[*].public_key_openssh)
  filename             = format("%s.pub", local.key_path)
  directory_permission = "0700"
  file_permission      = "0644"
}

resource "local_sensitive_file" "private_key" {
  count = local.enabled ? 1 : 0

  content              = one(tls_private_key.default[*].private_key_pem)
  filename             = local.key_path
  directory_permission = "0700"
  file_permission      = "0640"
}
