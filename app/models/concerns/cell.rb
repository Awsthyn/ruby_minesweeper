class Cell
    attr_reader :value
    
      def initialize
        @value =  rand < 0.5 ? "*" : " "
      end
    
  end
  