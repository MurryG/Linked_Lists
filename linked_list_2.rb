class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def reverse_list(list_item, previous=nil)
  holder = list_item.next_node
  list_item.next_node = previous
  previous = list_item
  if holder
    reverse_list(holder, previous)
  else
    return list_item
  end
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