puts "Please choose a disease of interest."
disease = gets.chomp
disease = Disease.find_by(name: disease)
disease.summary
