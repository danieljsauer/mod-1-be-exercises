class Hobbit
attr_reader :name, :disposition, :age, :has_ring, :is_short

    def initialize(name, disposition = "homebody")
        @name = name
        @disposition = disposition
        @age = 0
        @has_ring = false
        @is_short = true
    end 

    def celebrate_birthday
        @age += 1
    end 

    def adult?
        age >= 33
    end 

    def has_ring?
        if name == "Frodo"
            @has_ring = true
        else 
            false 
        end 
    end 
end 