# DESCRIPTION:
  # Get Indices of Item Weights

  # Given a package with a weight limit limit and an array arr of item weights, implement a
  # method (ruby)/function (javascript) that finds two items whose sum of weights equals the weight limit limit.
  # Your method/function should return a pair ex. [i, j] of the indices of the item weights.
  # If such a pair doesn’t exist, return nil/null.

  # Challenge Complete in under O(n^2) a.k.a. quadratic time complexity

  # Constraints: Returned Array elements could not be the same index position so [1, 1] would not be acceptable...

  # Return the first pair, a.k.a lexographically speaking, that sums up to the limit

  # [input] array.integer arr 2 ≤ arr.length ≤ 100

  # [input] integer limit

  # [output] array.integer

# My solution
# ACHO QUE TEM UM ERRO NOS TESTES - FALA QUE TEVE Failed Tests, Took longer than 5 seconds (Completed in 0.8517ms), O PROBLEMA ACHO QUE ESTÁ EM ACEITAR O INDEX 0 NA RESPOSTA.
def get_indices_of_item_weights(arr, limit)
  arr2 = arr - [arr[0]]
  result = []
  arr.each_with_index do |e1, i1|
    if result.size < 1
      arr2.each_with_index do |e2, i2|
        if e1 + e2 >= limit
          result << i1
          result << (i2+1)
          break
        end
      end
    else
      break
    end
  end
  result
end

# Best one
def get_indices_of_item_weights(arr, limit)
  arr.each_index.to_a.combination(2).detect { |a, b| arr[a] + arr[b] == limit }
end
