module "s3_bucket" {
  for_each = var.environments
  source = "./modules/s3-bucket"
  bucket_name        = "${each.value}-bucket"
  environment        = each.key
  versioning_enabled = var.versioning_enabled[each.key]
 }