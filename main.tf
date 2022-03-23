provider "aws" {
    profile = "meshdev-AdministratorRoleExternal"
    region = "ap-northeast-2"
}

module "iam-module" {
    source = "./practice-module"
    team_count = 2
    user_list = ["test1", "test2"]
}