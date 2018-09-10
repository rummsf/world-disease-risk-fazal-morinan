
def load_country_hash
  puts 'Reading country JSON file...'
  file_path = File.join(File.dirname(__FILE__), "../lib/factbook.json")
  file = File.read(file_path)
  puts 'Read complete.'
  puts 'Parsing JSON file to Hash...'
  country_hash = JSON.parse(file)
  puts 'File parsed as country_hash.'
  binding.pry
end
