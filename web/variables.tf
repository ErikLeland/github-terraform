variable "rg_name" {
    type = string
    description = "(optional) describe your variable"
    default = "rg-web-ejl"
}

variable "rg_location" {
    type = string
    description = "(optional) describe your variable"
    default = "westeurope"
}

variable "sa_web_name" {
    type = string
    description = "(optional) describe your variable"
    default = "sawebejl"
}

variable "index_document" {
    type = string
    description = "(optional) describe your variable"
    default = "index.html"
}

variable "source_content" {
    type = string
    description = "(optional) describe your variable"
    default = "<h1>Made with Terraform</h1>"
}  