module "vpc" {
  source = "./vpc"

}

module "sg" {
  depends_on = [module.vpc]
  source = "./sg"
  vpcid = module.vpc.vpc
}

module "ec" {
  depends_on = [module.sg]
  source = "./ec2"
  subnet = module.vpc.subnet
  sg_id = module.sg.sgid
}