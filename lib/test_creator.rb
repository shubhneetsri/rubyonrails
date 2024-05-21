module TestCreator
    
    def initialize
        @todos = []
    end   

    def add_todo(todo)
        @todos << todo
    end

    def self.generate
       # @todos.map { |e| "- #{e}" }.join("\n")
    end
end