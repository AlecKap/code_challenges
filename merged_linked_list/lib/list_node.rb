class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

def merge_two_sorted_linked_lists(list1, list2)
  result = []
  left_list_length = list_length(list1)
  right_list_length = list_length(list2)
  total_length = left_list_length + right_list_length

  new_list = ListNode.new(nil)
  head = new_list

  # (total_length - 1)
  5.times do
    # set head.val = lowest value in all lists.
    # find next lowest value
    # append next lowest value to list
    if list1.val < list2.val
      append_node(head, list1.val)
      list1 = list1.next
    else
      append_node(head, list2.val)
      list2 = list2.next
    end
  end
  require 'pry-byebug'; require 'pry'; binding.pry
  # convert new_list_values to results array
  result
end

def append_node(head, value)
  next_node = head.next
  if head.val.nil?
    head.val = value
  else
    until next_node.nil?
      next_node = next_node.next
    end
    next_node = ListNode.new(value)
  end
end

def list_length(list)
  counter = 1
  until list.next.nil?
    counter += 1
    list = list.next
  end
  counter
end
