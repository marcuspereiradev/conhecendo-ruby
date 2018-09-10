require "json"

#convertendo uma hash em uma string
hash_to_string = {
    Marcus: 1,
    Maria: 2,
    Joao: 3,
    jose: 4
}.to_json
puts hash_to_string

#Convertendo string para hash
string_to_hash = JSON.parse({
    Marcus: 1,
    Maria: 2,
    Joao: 3,
    jose: 4
}.to_json)
puts string_to_hash