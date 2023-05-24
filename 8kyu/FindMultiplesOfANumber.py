# DESCRIPTION:
  # In this simple exercise, you will build a program that takes a value, integer , and returns a list of its
  # multiples up to another value, limit . If limit is a multiple of integer, it should be included as well.
  # There will only ever be positive integers passed into the function, not consisting of 0. The limit will always
  # be higher than the base.

  # For example, if the parameters passed are (2, 6), the function should return [2, 4, 6] as 2, 4, and 6 are the
  # multiples of 2 up to 6.

# My solution
    # NÃO ENTENDI PORQUE NÃO ACEITOU, PARECE QUE TEM UM ERRO, POIS ALGUMAS RESPOSTAS PEDEM O ÚLTIMO NÚMERO QUE É
    # IGUAL OU LIMIT E OUTRAS NÃO PEDEM.
    # VI ALGUMAS SOLUÇÕES IGUAIS A MINHA
def find_multiples(integer, limit):
    result = [integer]
    while result[-1] < limit:
      result.append(result[-1] + integer)
    return result

# Best one
    # TESTEI NO COLLAB E NÃO FUNCIONOU :(
def find_multiples(integer, limit):
    return list(range(integer, limit+1, integer))
