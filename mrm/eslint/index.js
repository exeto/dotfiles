'use strict';

const { json, lines, install } = require('mrm-core');

const presetsMapping = {
  node: '@exeto/eslint-config/node',
  browser: '@exeto',
  react: ['@exeto', '@exeto/react'],
};

const task = config => {
  const { env = 'node', parser } = config.values();
  const preset = presetsMapping[env];
  const packages = ['eslint', '@exeto/eslint-config'];
  const eslintrc = json('.eslintrc');

  eslintrc
    .set('root', true)
    .set('extends', preset)
    .save();

  if (parser === 'babel') {
    packages.push('babel-eslint');
    eslintrc.set('parser', 'babel-eslint');
  }

  if (env === 'react') {
    packages.push('@exeto/eslint-config-react', 'eslint-plugin-react');
  }

  lines('.eslintignore')
    .add('node_modules/')
    .save();

  install(packages, { yarn: true });
};

task.description = 'Adds ESLint';

module.exports = task;
