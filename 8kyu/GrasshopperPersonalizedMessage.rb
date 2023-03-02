# Description
# Create a function that gives a personalized greeting. This function takes two parameters: name and owner.
# Use conditionals to return the proper message:
# case	return
# name equals owner	'Hello boss'
# otherwise	'Hello guest'

# My solution
def greet(name,owner)
  if name == owner
    p "Hello boss"
   else
    p "Hello guest"
   end
end

# Best one
def greet(name,owner)
  name == owner ? 'Hello boss' : 'Hello guest'
end
