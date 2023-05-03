class Pirate
    attr_reader :name, :job, :cursed, :booty
    def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @sins = 0
    @booty = 0
    end

    def cursed?
        @sins >=3
    end 

    def commit_heinous_act
        @sins += 1
    end

    def rob_ship
        @booty +=100
    end

end