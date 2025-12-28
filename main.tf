provider "aws" {
    region = "ap-south-1"
}

module "vpc" {
    source = "./vpc"
}

module "ec2" {
    source = "./web"
    sn     = module.vpc.pb_sn
    sg     = module.vpc.sg
}

