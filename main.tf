module "network" {
  source               = "./modules/network"
  region               = var.region
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  key_name             = var.key_name
}

module "bastion" {
  source        = "./modules/bastion"
  public_subnet = module.network.public_subnet_ids[0]
  vpc_id        = module.network.vpc_id
  sg_id         = module.network.bastion_sg_id
  key_name      = var.key_name
}

