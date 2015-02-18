Tinytest.add 'luhn - throw on invalid argument', (test) ->
  test.throws ->
    Luhn.validate 1234567890

Tinytest.add 'luhn - validate valid credit card numbers', (test) ->
  # Check Visa
  test.isTrue Luhn.validate '4929165942273997'

  # Check Mastercard
  test.isTrue Luhn.validate '5348943738376525'

  # Check Discover
  test.isTrue Luhn.validate '6011604786014707'

  # Check American Express
  test.isTrue Luhn.validate '370798938095784'

Tinytest.add 'luhn - validate invalid credit card numbers', (test) ->
  # Check Visa
  test.isFalse Luhn.validate '4929165942273994'

  # Check Mastercard
  test.isFalse Luhn.validate '5348943738376523'

  # Check Discover
  test.isFalse Luhn.validate '6011604786014702'

  # Check American Express
  test.isFalse Luhn.validate '370798938095781'
