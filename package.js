Package.describe({
  name: 'oorabona:autoform-nstates',
  summary: 'Custom N states input support for AutoForm',
  version: '0.1.0',
  git: 'https://github.com/oorabona/meteor-autoform-nstates.git',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.use('templating@1.0.0');
  api.use('blaze@2.0.0');
  api.use('aldeed:autoform@5.0.0');
  api.use('coffeescript@1.0.0');
  api.use('reactive-dict@1.0.0');
  api.addFiles([
    'nstates.html',
    'nstates.coffee'
  ], 'client');
});
