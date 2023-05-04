class Medusa
    attr_reader :name, :statues

    def initialize(name)
      @name = name 
      @statues = []
    end
  
    def stare(victim)
      victim.stoned = true
      statues << victim

        if statues.length == 4
          unpetrified = statues.shift
          unpetrified.stoned = false
          p "#{victim.name} has been turned to stone! #{unpetrified.name} is no longer petrified!"
        else
          p "#{victim.name} has been turned to stone!"
        end
    end 
  end
  
  class Person 
    attr_reader :name
    attr_accessor :stoned
  
    def initialize(name)
      @name = name 
      @stoned = false
    end
  
    def stoned?
      @stoned
    end 
  end 
  

