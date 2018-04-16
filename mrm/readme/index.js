'use strict';

const path = require('path');
const { template, packageJson } = require('mrm-core');

const task = config => {
  const { name, url, packageName } = config
    .defaults({ packageName: packageJson().get('name') })
    .require('name', 'url', 'packageName')
    .values();

  const readme = template('README.md', path.join(__dirname, 'template.md'));

  if (!readme.exists()) {
    const data = {
      name,
      url,
      packageName,
    };

    readme.apply(data).save();
  }
};

task.description = 'Adds readme file';

module.exports = task;
