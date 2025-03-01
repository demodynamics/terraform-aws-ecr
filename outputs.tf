output "ecr_data" {
  value = {
    "Private Repo Names" = aws_ecr_repository.private_repo[*].name
    "Image Tag Mutability Type" = aws_ecr_repository.private_repo[*].image_tag_mutability
    "Public Repo name" = aws_ecrpublic_repository.public_repo.repository_name
  }
}