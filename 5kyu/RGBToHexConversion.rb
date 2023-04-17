# DESCRIPTION:
  # The rgb function is incomplete. Complete it so that passing in RGB decimal values will result in a hexadecimal representation being returned. Valid decimal values for RGB are 0 - 255. Any values that fall out of that range must be rounded to the closest valid value.

  # Note: Your answer should always be 6 characters long, the shorthand with 3 will not work here.

  # The following are examples of expected output values:

  # rgb(255, 255, 255) # returns FFFFFF
  # rgb(255, 255, 300) # returns FFFFFF
  # rgb(0,0,0) # returns 000000
  # rgb(148, 0, 211) # returns 9400D3

# My solution
def rgb(r, g, b)
  result = []
  if r < 0
    r = 0
    result << r.to_s(16).rjust(2,'0')
  elsif r > 255
    r = 255
    result << r.to_s(16).rjust(2,'0')
  else
    result << r.to_s(16).rjust(2,'0')
  end
  if g < 0
    g = 0
    result << g.to_s(16).rjust(2,'0')
  elsif g > 255
    g = 255
    result << g.to_s(16).rjust(2,'0')
  else
    result << g.to_s(16).rjust(2,'0')
  end
  if b < 0
    b = 0
    result << b.to_s(16).rjust(2,'0')
  elsif b > 255
    b = 255
    result << b.to_s(16).rjust(2,'0')
  else
    result << b.to_s(16).rjust(2,'0')
  end
  result.join.upcase
end

# Best one
def rgb(r, g, b)
  "%.2X%.2X%.2X" % [r,g,b].map{|i| [[i,255].min,0].max}
end

def rgb(r, g, b)
  [r, g, b].map do |c|
    if c <= 0
      "00"
    elsif c > 255
      "FF"
    else
      c.to_s(16).upcase
    end
  end.join('')
end
