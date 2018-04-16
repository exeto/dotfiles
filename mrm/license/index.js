'use strict';

const path = require('path');
const { template, packageJson } = require('mrm-core');

const task = config => {
  const pkg = packageJson();
  const { name, url } = config.require('name', 'url').values();

  if (pkg.exists()) {
    pkg.set('license', 'MIT');
    pkg.save();
  }

  template('LICENSE.md', path.join(__dirname, 'template.md'))
    .apply({
      name,
      url,
      year: new Date().getFullYear(),
    })
    .save();
};

task.description = 'Adds license file';

module.exports = task;
