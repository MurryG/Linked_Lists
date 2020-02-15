class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list, previous=nil)
  save next.node (node2)
  set next.node = previous (node2)



  temp = list.next_node
  list.next_node = previous
  reverse_list(list, previous)

  # if list
  #   temp = list.value

  # else
    
  
  # end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end


node3 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node3)
node1 = LinkedListNode.new(12, node2)

print_values(node1)

puts "------------"

revlist = reverse_list(node1)

print_values(revlist)