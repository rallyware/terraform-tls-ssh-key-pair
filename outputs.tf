output "private_key_openssh" {
  sensitive   = true
  value       = one(tls_private_key.default[*].private_key_openssh)
  description = "Private key data in OpenSSH PEM (RFC 4716) format."
}

output "private_key_pem" {
  sensitive   = true
  value       = one(tls_private_key.default[*].private_key_pem)
  description = "Private key data in PEM (RFC 1421) format."
}

output "private_key_pem_pkcs8" {
  sensitive   = true
  value       = one(tls_private_key.default[*].private_key_pem_pkcs8)
  description = "Private key data in PKCS#8 PEM (RFC 5208) format."
}

output "public_key_fingerprint_md5" {
  value       = one(tls_private_key.default[*].public_key_fingerprint_md5)
  description = "The fingerprint of the public key data in OpenSSH MD5 hash format."
}

output "public_key_fingerprint_sha256" {
  value       = one(tls_private_key.default[*].public_key_fingerprint_sha256)
  description = "The fingerprint of the public key data in OpenSSH SHA256 hash format."
}

output "public_key_openssh" {
  value       = one(tls_private_key.default[*].public_key_openssh)
  description = "The public key data in 'Authorized Keys' format."
}

output "public_key_pem" {
  value       = one(tls_private_key.default[*].public_key_pem)
  description = "Public key data in PEM (RFC 1421) format."
}
