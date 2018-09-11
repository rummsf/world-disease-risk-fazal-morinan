class Disease < ActiveRecord::Base

  def summary
    puts self.description.join('\n')[0-500]
    puts "For further details, see: #{self.more[10..-1]}"
  end

  def print_symptom
    printf Format::SPACER, "Symptoms:", "#{self.symptoms}"
  end

  def print_transmission
    printf Format::SPACER, "Transmission of the disease:", "#{self.transmission}"
  end

  def print_diagnosis
    printf Format::SPACER, "Diagnosis:", "#{self.diagnosis}"
  end

  def print_treatment
    printf Format::SPACER, "Treatment options:", "#{self.treatment}"
  end

  def print_prevention
    printf Format::SPACER, "Preventative measures:", "#{self.prevention}"
  end

end
