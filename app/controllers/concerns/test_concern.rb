module TestConcern
    extend ActiveSupport::Concern
   
    included do
      attr_accessor :iaminstanceobject
    end

    def add_todo(todo)
      @todos << todo
    end

    def to_s
     @todos.map { |todo| "- #{todo}" }.join("\n")
    end
   
    def concern_call
      @iaminstanceobject = 'iaminstanceobject'
      ['ok, i am called']
    end
  end