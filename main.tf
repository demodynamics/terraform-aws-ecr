# Creating Private ECR Repository
resource "aws_ecr_repository" "private_repo" {
  count                = length(var.repo_names)
  name                 = "${var.project}-${var.repo_names[count.index]}"
  image_tag_mutability = var.image_tag_mutability_type[count.index]


}

# This resource can only be used in the us-east-1 region.
resource "aws_ecrpublic_repository" "foo" {
  repository_name = "${var.project}-public-ecr-repo}"
  
  tags = {
    
  }
}