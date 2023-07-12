class Node
 
    def initialize(value=nil , next_node=nil)
    @value=value
    @next_node=next_node
    end
    def set_value
        return @value
    end
    def set_next_node( next_node=nil)
        @next_node = next_node
    end
    def get_value
        return @value
    end
    def get_next_node
            return @next_node
    end
end