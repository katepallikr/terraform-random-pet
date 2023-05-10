terraform {
  cloud {}
}


module "pet" {
    source = "../../"
    string_length = 5
}


output "random_string_output" {
  value = module.pet.random_string_output
}

output "random_pet_nickname" {
    value = module.pet.random_pet_nickname
}
