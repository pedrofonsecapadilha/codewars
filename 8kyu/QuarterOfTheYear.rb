# DESCRIPTION:
  # Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.

  # For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter;
  # and month 11 (November), is part of the fourth quarter.

  # Constraint:

  # 1 <= month <= 12

# My solution
def quarter_of(month)
  case month
    when 1..3
    1
    when 4..6
    2
    when 7..9
    3
    when 10..12
    4
  end
end

# Best one
def quarter_of(month)
  (month/3.0).ceil
end
