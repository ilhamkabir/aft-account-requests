module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "ilham.aws.production@gmail.com"
    AccountName  = "sandbox-account-01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "ilham.aws.production@gmail.com"
    SSOUserFirstName = "ilham"
    SSOUserLastName  = "kabir"
  }

  account_tags = {
    "ABC:Owner"       = "ilham.aws.production@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "Ilham Kabir"
    change_reason       = "testing the account vending process"
  }

#   custom_fields = {
#     custom1 = "a"
#     custom2 = "b"
#   }

  account_customizations_name = "sandbox-customizations"
}
