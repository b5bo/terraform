variable "user_list" {
    type = list(string)
    default = []
    description = "list of all the tf test users that were created"
}

variable "group_count" {
    type = number
    description = "number of all the tf test groups that were created"
}