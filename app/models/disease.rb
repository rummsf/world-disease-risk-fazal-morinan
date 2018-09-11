class Disease < ActiveRecord::Base

  def summary
    puts self.description.join('\n')[0-500]
    puts "For further details, see: #{self.more[10..-1]}"
  end

  def print_symptom
    puts "Symptoms: #{self.symptoms}"
  end

  def print_transmission
    puts "Transmission of the disease: #{self.transmission}"
  end

  def print_diagnosis
    puts "Diagnosis: #{self.diagnosis}"
  end

  def print_treatment
    puts "Treatment options: #{self.treatment}"
  end

  def print_prevention
    puts "Preventative measures: #{self.prevention}"
  end

end
