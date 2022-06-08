module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = var.email
    AccountName  = "sandbox-account-01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = var.email
    SSOUserFirstName = var.first_name
    SSOUserLastName  = var.last_name
  }

  account_tags = {
    "ABC:Owner"       = var.email
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
