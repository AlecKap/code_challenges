require 'rspec'
require './lib/list_node'

RSpec.describe ListNode do
  describe 'merge_two_sorted_linked_lists' do
    it 'test 1' do
      list1 = ListNode.new(1)
      list1.next = ListNode.new(3)
      list1.next.next = ListNode.new(5)
      list2 = ListNode.new(2)
      list2.next = ListNode.new(4)
      list2.next.next = ListNode.new(6)

      expect(merge_two_sorted_linked_lists(list1, list2)).to eq([1, 2, 3, 4, 5, 6])
      # puts 'test case 1 failed' if merge_two_sorted_linked_lists(list1, list2) != [1,2,3,4,5,6]
    end

    xit 'test 2' do
      list1 = ListNode.new(1)
      list1.next = ListNode.new(2)
      list2 = ListNode.new(4)
      list2.next = ListNode.new(5)
      list2.next.next = ListNode.new(6)
      expect(merge_two_sorted_linked_lists(list1, list2)).to eq([1, 2, 4, 5, 6])
      # puts 'test case 2 failed' if merge_two_sorted_linked_lists(list1, list2) != [1,2,4,5,6]
    end

    xit 'test 3' do
      list1 = ListNode.new(10)
      list1.next = ListNode.new(20)
      list1.next.next = ListNode.new(40)
      list2 = ListNode.new(0)
      expect(merge_two_sorted_linked_lists(list1, list2)).to eq([0, 10, 20, 40])
      # puts 'test case 3 failed' if merge_two_sorted_linked_lists(list1, list2) != [0, 10, 20, 40]
    end
  end
end
