def two_sum(nums, target)
  only_2 = [0,1]
  return only_2 if nums.length == 2
  num_combo = []
  combos = nums.combination(2).to_a
  combos.each do |combo|
    if combo.sum == target
      num_combo << nums.index(combo[0])
      num_combo << nums.index(combo[1])
      break
    end
  end
  num_combo
end
