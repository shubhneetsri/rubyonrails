module TestConcern
    extend ActiveSupport::Concern
   
    included do
      attr_accessor :iaminstanceobject
      
    end
   
    def concern_call
      @iaminstanceobject = 'iaminstanceobject'
      ['ok, i am called']
    end
  end