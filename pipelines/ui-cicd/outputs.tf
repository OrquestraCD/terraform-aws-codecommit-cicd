output "clone_repo_https" {
  value = "${module.ui_cicd.clone_repo_https}"
}

output "clone_repo_ssh" {
  value = "${module.ui_cicd.clone_repo_ssh}"
}

output "artifact_bucket" {
  value = "${module.ui_cicd.artifact_bucket}"
}