'use strict';

const { packageJson, install, MrmError } = require('mrm-core');

const task = () => {
  const pkg = packageJson();

  if (!pkg.get('devDependencies.prettier')) {
    throw new MrmError('Run prettier task first');
  }

  pkg
    .merge({
      scripts: {
        precommit: 'lint-staged',
      },
      'lint-staged': {
        '**/*.js': ['eslint --fix', 'git add'],
        '**/*.{json,md}': ['prettier --write', 'git add'],
      },
    })
    .save();

  const packages = ['lint-staged', 'husky'];

  install(packages, { yarn: true });
};

task.description = 'Adds lint-staged';

module.exports = task;
