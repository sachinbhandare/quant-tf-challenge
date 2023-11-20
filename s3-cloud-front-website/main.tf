provider "aws" {
  region = "eu-west-1"
}

module "cloudfront_s3_website_with_domain" {
  source                               = "chgangaraju/cloudfront-s3-website/aws"
  version                              = "1.2.6"
  domain_name                          = "quant-cloud-321"
  use_default_domain                   = true
  upload_sample_file                   = true
  cloudfront_geo_restriction_locations = ["IN", "PK"]
  tags                                 = var.tags
}


output "website_address" {
  value = module.cloudfront_s3_website_with_domain.website_address
}

output "website" {
  value = module.cloudfront_s3_website_with_domain
}