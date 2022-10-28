
variable "config" {
  type = object(
    {
      algorithm   = optional(string, "RSA")
      rsa_bits    = optional(number, 2048)
      ecdsa_curve = optional(string)
    }
  )

  default     = {}
  description = <<-EOT
    algorithm:
        Name of the algorithm to use when generating the private key. 
        Possible values: `RSA`, `ECDSA`, `ED25519`.
    rsa_bits:
        The size of the generated RSA key, in bits.
    ecdsa_curve:
        The name of the elliptic curve to use.
        Possible values: `P224`, `P256`, `P384`, `P521`.
  EOT
}

variable "ssh_key_pair_path" {
  type        = string
  default     = "keys/"
  description = "Path to SSH public key directory (e.g. `keys/`)"
}
