# check to make sure there is more than one number
# check to see if string has even numbers
# if it does, divide it in half into to variables
# once divided, compare both to check if they are the same
# if they are return true, if not return false

def well_formed(bracket)
  brkt = bracket.length
  if brkt > 1 && brkt.even?
    first = bracket[0...bracket.length/2]
    second = bracket[bracket.length/2...bracket.length]
    require 'pry-byebug'; require 'pry'; binding.pry
    # puts true if revbrack == bracket
  else
    puts false
  end
end

a = '{({}]]'
b = '{[)][]}'
c = ']'
d = '{}'
e = '{()}'
f = '{[]}{[]}'

well_formed?(a)
# well_formed(b)
# well_formed(c)
# well_formed(d)
# well_formed(e)
well_formed?(f)

