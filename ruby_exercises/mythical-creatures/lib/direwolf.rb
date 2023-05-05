class Direwolf

    attr_reader :name, :home, :size, :starks_to_protect, :hunts_white_walkers 

    def initialize(name, home = "Beyond the Wall", size = "Massive")
        @name = name
        @home = home
        @size = size 
        @starks_to_protect = []
        @hunts_white_walkers = true

    end

    def protects(stark)
        stark.location == @home && @starks_to_protect.length < 2 ? (@starks_to_protect << stark; stark.safe = true; @hunts_white_walkers = false) : "Unable to protect!" 
    end 

    def leaves(stark)
        @starks_to_protect.delete(stark) 
        stark.safe = false 
        @starks_to_protect.count == 0 ? @hunts_white_walkers = true : nil 
        return stark
    end 

    def hunts_white_walkers?
        @hunts_white_walkers
    end

end

class Stark 
    #BOO! I AM A LANNISTER OF CASTERLY ROCK! 

    attr_reader :name, :location
    attr_accessor :safe

    def initialize(name,location = "Winterfell")
        @name = name
        @location = location 
        @safe = false 
    end

    def safe?
        @safe
    end
    def house_words
        "Winter is Coming"
        #HEAR ME ROAR
        #A LANNISTER ALWAYS PAYS HIS DEBTS
    end 

end 