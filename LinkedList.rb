require_relative './Node.rb'
class LinkedList
    def initialize
        @head = nil
     
    end
    def append(value)
      if @head == nil
        @head = Node.new(value)
      else
        nwnode= Node.new(value)
        current = @head
        while current.get_next_node!= nil
          current = current.get_next_node
        end
        current.set_next_node(nwnode)
      end
    end
     def prepend(value)
        if @head == nil
            @head = Node.new(value)
            return
        end
        current = @head
        @head = Node.new(value)
        @head.set_next_node(current)
     end
     def size
     count= 0
        current = @head
        while current!= nil
        count +=1
          current= current.get_next_node
        end
    
        return count
    end
    def head
        puts @head.get_value
    end
    def tail
        current = @head
        while current.get_next_node != nil
     
            current= current.get_next_node
          end
          puts current.get_value
    end
    def pop
        current = @head
        nxt = current.get_next_node
        while nxt.get_next_node != nil
            nxt= nxt.get_next_node
            current= current.get_next_node
          end
        current.set_next_node(nil)
            
    end
    def contains?(value)
        current = @head
        while current!= nil
            if current.get_value == value
                return true
            end
            current = current.get_next_node
        end
        return false
    end
    def find(value)
        if @head.get_value == value
            return 0
        end
        current = @head
        count=0
        while current!= nil
            count +=1
            if current.get_value == value
                return count
            end
            current = current.get_next_node
        end
        return nil
    end
    def to_s
        current = @head
        string = ""
        while current!= nil
            string += "#{current.get_value} -> "
            current = current.get_next_node
        end
        puts string
    end
    def insert_at(value, index)
        if index == 0
            prepend(value)
            return
        end
        current = @head
        count=0
        while current.get_next_node!= nil
            count +=1
            if count == index-1
              nwnode= Node.new(value)
              nwnode.set_next_node(current.get_next_node)
              current.set_next_node(nwnode)
              return
            end
            current = current.get_next_node
        end
        current.set_next_node(value)
    end
    def remove_at(index)
            if index == 0
                pop
                return
            end
            current = @head
            count=0
            while current.get_next_node!= nil
                count +=1
                if count == index-1
                    nxt = current.get_next_node
                    nxtnxt = nxt.get_next_node
                    current.set_next_node(nxtnxt)
                    return
                end
                current = current.get_next_node

            end

    end
     def at(index)
        if index==0
            puts @head.get_value
            return
        end
        if index > self.size
            puts "index out of range"
            return
        end
        current = @head
        for i in [1..index-1]
            current= current.get_next_node
        end
        puts current.get_value
     end
    def print 
     arr = Array.new    
        current = @head
        while current!= nil
          arr << current.get_value
          current= current.get_next_node
        end
       puts arr.join("  ->  ")
    end
end