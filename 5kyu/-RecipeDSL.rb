# DESCRIPTION:
  # This kata is inspired by a lecture video about domain specific languages and the ruby object model available on youtube.
  # Watching the video is highly recommended but not necessary to complete the kata. You can find the link below.

  # Your task is to implement a domain specific language (the recipe class) in which one can define recipes in
  # the following manner:

  # recipe = Recipe.new('mix') do
  #   ingredient "salt"
  #   ingredient "sugar"

  #   step "mix salt & sugar"
  #   step "throw it in the bin"
  # end

  # puts recipe
  # and by defining the to_s of recipes the above program outputs:

  # mix
  # ===
  # salt, sugar

  # 0.) mix salt & sugar
  # 1.) throw it in the bin
  # The format starts with the name of the recipe passed as an argument to Recipe.new.
  # It's followed by matching number of '='s on the next line. Then the ingredients on one line, separated by commas.
  # This is followed by an empty line and then the steps in a numbered list.

  # lecture link: video

# My solution


# Best one
