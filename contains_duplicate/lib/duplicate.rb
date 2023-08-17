# Given an integer array nums, return true if any value appears at least twice in the array
# and return false if every element is distinct.

# use the uniq method to potentially alter the original array (nums) and save as variable
# compare the new uniq array and the original array
# if they are the same return false
# else return true

def contains_duplicate(nums)
  uniq_nums = nums.uniq
  if nums == uniq_nums
    false
  else
    true
  end
end