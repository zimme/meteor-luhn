Luhn =
  validate: do (arr = [0,2,4,6,8,1,3,5,7,9]) ->
    (value) ->
      bit = 1
      len = value.length
      sum = 0

      while len--
        sum += if not bit ^= 1 then parseInt value[len], 10 else arr[value[len]]

      sum % 10 is 0 and sum > 0
