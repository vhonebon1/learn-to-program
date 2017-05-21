class OrangeTree
    def initialize
        @alive = true
        @height = 0
        @orange_count = 0
    end

    def height
        if @alive
            @height
        else
            puts "The tree is dead."
        end
    end

    def one_year_passes
        if @alive
            @height = @height + 0.5
            @orange_count = 5
            if @height > 15
                @alive = false
                puts "The tree is dead."
            elsif @height > 5
            @orange_count = (@height * 20).to_i
            puts "Your orange tree grew to #{@height} and produced #{@orange_count} oranges"
        else
            puts "Your orange tree grew to #{@height} but there arent any oranges yet."
        end
else
    "The tree is dead"
end
end

    def count_the_oranges
        if @alive
            @orange_count
        else
            puts "The tree is dead - no oranges"
        end
    end

    def pick_an_orange
        if @alive
        if @orange_count > 0
        @orange_count = @orange_count - 1
        puts "The orange is yummy!"
    else
        puts "There are no oranges to pick!"
    end
else
    "The tree is dead - no oranges tp pick."
end
end
end

the_tree = OrangeTree.new
15.times do
    the_tree.one_year_passes
end
