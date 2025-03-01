output "ecr_data" {
  value = {
    "Repo Names" = aws_ecr_repository.private_repo[*].name
    "Image Tag Mutability Type" = aws_ecr_repository.private_repo[*].image_tag_mutability
  }
}