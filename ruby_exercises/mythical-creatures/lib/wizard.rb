class Wizard
    attr_reader :name

    def initialize(name, bearded: true)
        @name = name
        @bearded = bearded
        @spell = 0 
    end

    def bearded?
        @bearded
    end 
    
    def incantation(phrase)
        "sudo #{phrase}"
    end 

    def rested?
        @spell < 3
    end 

    def cast
        @spell +=1
        "MAGIC MISSILE!"
    end
    
end 