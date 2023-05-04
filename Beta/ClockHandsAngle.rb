# DESCRIPTION:
  # Given the hours and minutes of a current time, calculate the angle between the clock hands.
  # Keep in mind that hours hand also move slightly depending on the minutes (1:30 puts the hours hand exactly in
  # the middle between 1 and 2). The angle starts on the hours hand, and is counted clockwise to the minutes hand.
  # Inputs are hours and minutes as integers. Hours must be between 1 and 23, and minutes between 0 and 59.
  # It's guaranteed that inputs are going to be always as described so no further validations are required.

# My solution
  # Acho que tem um erro, as horas deveriam ser de 0 - 23, certo?
  # As simulações também apresentam erro, tem opção que considerou a contagem no sentido anti-horário
  # (Test.assert_equals(clock_angle(11,15),247.5), o correto seria 112.5º)
def clock_angle(h,m)
  result = 0
  angM = ((m * 360).to_f / 60)
  if h > 12
    h = h - 12
  end
  angH = (((h * 360) / 12) + ((m * 30).to_f / 60))
  if angH >= 360
    angH = angH - 360
  end

  if angM >= angH
    result = angM - angH
  else
    result = 360 - (angH - angM)
  end
  result
end
# Best one
