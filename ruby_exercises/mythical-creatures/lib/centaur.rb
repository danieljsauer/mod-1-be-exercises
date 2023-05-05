class Centaur

    attr_reader :name, :breed

    def initialize(name, breed) 
        @name = name
        @breed = breed
        @cranky= false
        @standing = true
        @counter = 0
    end

    def shoot
        @counter +=1
        @counter >= 3 ? @cranky = true : @cranky = false
        @cranky || !@standing ? "NO!" : "Twang!!!"


    end 

    def run 
        @counter +=1 
        @counter >= 3 ? @cranky = true : @cranky = false
        @cranky || !@standing? "NO!" : "Clop clop clop clop!"
    end

    def cranky?
        @cranky
    end 

    def standing?
        @standing
    end 

    def laying?
        !@standing
    end

    def sleep
        @standing ? "NO!" : (@cranky = false; @counter = 0)
    end 

    def lay_down
        @standing = false
    end 

    def stand_up
        @standing = true
    end 

    def drink_potion
    @standing ? (@cranky ? (@cranky = false; @counter = 0) : "Puke") : "NO!"
    end 

end 