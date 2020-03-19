class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    person.partner = self
    if person.class != Person
      begin 
      raise PersonError 
    rescue PartnerError => error 
      puts message 
    end 
  else 
    person.partner = self 
  end 
  end

  class PartnerError<StandardError
    def message
      puts "the argument you put in for the person, is not an instance of the Person class"
    end 
  end 
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




