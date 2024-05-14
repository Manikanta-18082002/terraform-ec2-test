# Modules are containers for Multiple resources  that are used together
#A Module consists of .tf and .tf.json files kept  together in a directory

module "ec2-test" { #Below we are informing where is the Actual Code is....
    source = "../terraform-aws-ec2" # Saying go 1-step back and find this folder() (Code is here)
    instance_type = "t2.small"
    tags = {
        Name = "Module-Test"
        Terraform = "true"
    }
}#This folder is Module Usage

# terraform init (Inside .terraform --> modules (Folder) --> modules.json (Shows path...))
# terraform plan

# We didn't write any code HERE...