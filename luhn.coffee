Luhn =
  validate: (value) ->
    check value, String
    len = value.length
    mul = 0
    prodArr = [
      [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
      [0, 2, 4, 6, 8, 1, 3, 5, 7, 9]
    ]
    sum = 0

    while len--
      sum += prodArr[mul][parseInt value.charAt(len), 10]
      mul ^= 1

    sum % 10 is 0 and sum > 0
