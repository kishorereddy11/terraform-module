module "ec2" {
#   source = "git::https://github.com/DAWS-82S/ec2-module-test.git"
  source = "../ec2-module"
   sg_id = "sg-06664a65d9522acf5"
   instance_type = "t3.large"
}