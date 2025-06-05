# produces an output value named "space_heroes"
#output "space_heroes" {
#  description = "API that documents folks in space"
#  value       = data.http.iss.response_body
#}

# produces legal JSON output value named "space_heroes_json"
output "pokemon_database" {
  description = "API that documents pikachu database"
  value       = jsondecode(data.http.pokemon.response_body)    // note the jsondecode()
}    

