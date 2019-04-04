provider "aws" {
  region = "us-west-2"
}

module "ui-cicd" {
  source                 = "git::https://github.com/craigmartin/terraform-aws-codecommit-cicd.git?ref=master"
  repo_name              = "ui-devops"
  organization_name      = "Ubiquity Networks"
  repo_default_branch    = "master"
  aws_region             = "us-west-2"
  char_delimiter         = "-"
  environment            = "dev"
  build_timeout          = "5"
  build_compute_type     = "BUILD_GENERAL1_SMALL"
  build_image            = "aws/codebuild/nodejs:6.3.1"
  test_buildspec         = "buildspec_test.yml"
  package_buildspec      = "buildspec.yml"
  force_artifact_destroy = true
}