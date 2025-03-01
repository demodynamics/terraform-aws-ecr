# Creating Private ECR Repository
resource "aws_ecr_repository" "private_repo" {
  count                = length(var.repo_names)
  name                 = "${var.default_tags["Project"]}-${var.repo_names[count.index]}" 
  image_tag_mutability = var.image_tag_mutability_type[count.index]

  tags = var.default_tags
}

# This resource can only be used in the us-east-1 region.
resource "aws_ecrpublic_repository" "public_repo" {
  repository_name = "${var.default_tags["Project"]}-public-ecr-repo" # var.default_tags["Project"]` Taking value of key (Project) from map (var.default_tags map)
  
  tags = var.default_tags
}