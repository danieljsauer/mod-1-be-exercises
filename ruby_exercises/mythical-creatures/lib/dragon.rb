class Dragon
attr_reader :name, :color, :rider

    def initialize(name,color,rider)
        @name = name
        @rider = rider
        @color = color
        @counter = 0
    end

    def hungry?
        @counter < 3
    end

    def eat
    @counter +=1
    end 

end 