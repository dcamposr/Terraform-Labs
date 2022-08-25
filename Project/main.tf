#Authentication procedure into AWS account"

module "primary" {
    source = "../modules/AWS/region1"
    providers = {
      aws = aws.primary
     }
}
module "remote" {
    source = "../modules/AWS/region2"
    providers = {
      aws = aws.primary  # Change to aws.remote to use  Central Region for Multi-region deployment
     }
}
