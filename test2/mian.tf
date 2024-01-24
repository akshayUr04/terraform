
module "first" {
  source = "./module/cloudrun"
  project_id = 	var.project_id
  name = var.name
}