class Werewolf

    attr_reader :name, :location, :human, :wolf

    def initialize(name, location = "Denver")
        @name = name
        @location = location
        @human = true
        @wolf = false
        @hungry = false

    end

    def human?
        @human
    end

    def wolf?
        @wolf
    end

    def change!
        @human = !@human
        @wolf = !@wolf

        @wolf ? @hungry = true : @hungry = false
    end 

    def hungry?
        @hungry
    end 

    def consume(victim)
        human ? (p "Cannot consume in human form!") : (@hungry = false; victim.status = :dead; p "Yummy")
    end
end 