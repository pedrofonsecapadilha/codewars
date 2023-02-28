# DESCRIPTION:
# Usually when you buy something, you're asked whether your credit card number,
# phone number or answer to your most secret question is still correct. However,
# since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# My solution
def maskify(cc)
  string = cc.to_s
  size = string.size
  array = string.split("")
  result = []
  if size > 4
    (size-4).times do
      result << "#"
      end
    result << array[-4]
    result << array[-3]
    result << array[-2]
    result << array[-1]
    result.join()
  else
    array.each do |n|
      result << n
      end
    result.join()
  end
end

# Best one
def maskify(cc)
  cc.gsub(/.(?=....)/, '#')
end
