'use strict';

const { packageJson, json, lines, install, MrmError } = require('mrm-core');

const toArray = value => (Array.isArray(value) ? value : [value]);

const task = () => {
  const pkg = packageJson();

  if (!pkg.get('devDependencies.eslint')) {
    throw new MrmError('Run eslint task first');
  }

  json('.prettierrc')
    .set({
      singleQuote: true,
      trailingComma: 'all',
    })
    .save();

  const eslintrc = json('.eslintrc');
  const eslintExtends = toArray(eslintrc.get('extends'));

  eslintrc
    .merge({
      extends: [...eslintExtends, 'prettier'],
      plugins: ['prettier'],
      rules: {
        'prettier/prettier': 'error',
      },
    })
    .save();

  lines('.prettierignore')
    .add('package.json')
    .save();

  const packages = [
    'prettier',
    'eslint-config-prettier',
    'eslint-plugin-prettier',
  ];

  install(packages, { yarn: true });
};

task.description = 'Adds Prettier';

module.exports = task;
