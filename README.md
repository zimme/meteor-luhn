[![Gitter](https://img.shields.io/badge/gitter-join_chat-brightgreen.svg)]
(https://gitter.im/zimme/meteor-luhn)
[![Code Climate](https://img.shields.io/codeclimate/github/zimme/meteor-luhn.svg)]
(https://codeclimate.com/github/zimme/meteor-luhn)
[![Travis](https://img.shields.io/travis/zimme/meteor-luhn.svg)]
(https://travis-ci.org/zimme/meteor-luhn)

# Luhn validation

### Install
```sh
meteor add zimme:luhn
```

### Usage
```js
var validVisaCardNumber = '4929165942273997';

var isValid = Luhn.validate(validVisaCardNumber);
```
