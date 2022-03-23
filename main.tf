provider "aws" {
    profile = "meshdev-AdministratorRoleExternal"
    region = "ap-northeast-2"
}

module "server-team" {
    source = "./practice-module"
    team_count = 2
    user_list = ["test1", "test2"]
    prefix = "server"
}

module "mobile-team" {
    source = "./practice-module"
    team_count = 1
    user_list = ["mobile1", "mobile2", "mobile3"]
    prefix = "mobile"
}