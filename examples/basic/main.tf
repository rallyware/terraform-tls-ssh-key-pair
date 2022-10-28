module "ssh_key_pair" {
  source    = "../../"
  name      = "cicd"
  stage     = "staging"
  namespace = "rlw"
}
