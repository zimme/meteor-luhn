Package.describe({
  git: 'https://github.com/zimme/meteor-luhn.git',
  name: 'zimme:luhn',
  summary: 'Luhn validation',
  version: '0.1.0'
});

Package.onUse(function (api) {
  api.versionsFrom('0.9.0');

  api.use('coffeescript');

  api.addFiles('luhn.coffee');

  api.export('Luhn');
});
