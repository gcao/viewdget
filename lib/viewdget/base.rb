module Viewdget
  class Base
    attr_writer :context
    
    def initialize input, context = nil
      @input = input
      @context = context
    end
    
    def to_s
      ERB.new(@input).result(@context)
    end
  end
  
  def self.erb input, context = nil
    template = ERB.new input
    template.result(context)
  end
end
