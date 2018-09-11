require 'pry'
def load_disease_hash
  puts 'Reading disease JSON file...'
  response_string = RestClient.get('https://disease-info-api.herokuapp.com/diseases')
  puts 'Read complete.'
  puts 'Parsing JSON file to Hash...'
  disease_hash = JSON.parse(response_string)
  puts 'File parsed as disease_hash.'
  disease_seed(disease_hash)
end

def disease_seed(disease_hash)
  new_array = disease_hash["diseases"].reject do |key, value|
    key["name"] == "Immunization coverage - WHO" || key["name"] == "Millennium development goals (mdgs) - WHO" || key["name"] == "Second global high-level conference on road safety - WHO"
  end
  new_array.each do |hash|
    Disease.create(name:hash["name"][0..-7], description:hash["description"], symptoms:hash["symptoms"], transmission:hash["transmission"], diagnosis:hash["diagnosis"], treatment:hash["treatment"], prevention:hash["prevention"], more:hash["more"])
  end
end
