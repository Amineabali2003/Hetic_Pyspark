### Provider ###
provider "aws" {
  region = var.region
}

# ### Backend ###
# terraform {
#   backend "s3" {
#     bucket = "terra-buck2"
#     key    = "terra-state"
#     region = "us-west-2"
#     profile = "default"
#   }
# }

### Keypair ###
resource "aws_key_pair" "default" {
  key_name = "ec2-elb-key"
  public_key = file("${var.key_path}")
}
