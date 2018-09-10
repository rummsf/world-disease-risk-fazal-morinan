
def load_disease_hash
  puts 'Reading disease JSON file...'
  file_path = File.join(File.dirname(__FILE__), "..https://disease-info-api.herokuapp.com/diseases")
  file = File.read(file_path)
  puts 'Read complete.'
  puts 'Parsing JSON file to Hash...'
  disease_hash = JSON.parse(file)
  puts 'File parsed as disease_hash.'
  binding.pry
end
