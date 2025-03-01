variable "project" {
  type = string
}

variable "repo_names" {
  type = list(string)
}

variable "image_tag_mutability_type" {
  description = "MUTABLE (default) can overwrite an existing tag with a new image, IMMUTABLE cannot overwrite an existing tag "
  type = list(string)
}