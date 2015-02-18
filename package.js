Package.describe({
  git: 'https://github.com/zimme/meteor-luhn.git',
  name: 'zimme:luhn',
  summary: 'Luhn validation',
  version: '0.1.3'
});

Package.onUse(function (api) {
  api.versionsFrom('0.9.0');

  api.use([
    'check',
    'coffeescript',
    'underscore'
  ]);

  api.addFiles('luhn.coffee');

  api.export('Luhn');
});

Package.onTest(function (api) {
  api.use([
    'coffeescript',
    'tinytest',
    'underscore',
    'zimme:luhn'
  ]);

  api.addFiles('tests.coffee');
});
