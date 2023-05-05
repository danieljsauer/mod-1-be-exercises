class Ogre

    attr_reader :name, :home, :swings
    attr_accessor 
    def initialize(name, home = "Swamp")
        @name = name
        @home = home  
        @swings = 0 
        @counter = 0
    end

    def encounter(human)
        @counter +=1
        human.counter += 1

        human.notices_ogre? ? swing_at(human) : nil 
    end 

    def swing_at(human)
        @swings += 1
        @swings % 2 == 0 ? human.ko = true : nil 
    end

    def apologize(human)
        human.ko = false
    end 

    def encounter_counter
        @counter 
    end 


end

class Human

    attr_reader :name 
    attr_accessor :counter, :ko

    def initialize
        @name = "Jane"
        @counter = 0 
        @ko = false 

    end

    def notices_ogre?
        @counter % 3 == 0 ? true : false 
    end

    def knocked_out?
        @ko
    end 

    def encounter_counter
        @counter
    end 

end 