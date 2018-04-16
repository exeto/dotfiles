'use strict';

const path = require('path');
const { json, lines } = require('mrm-core');

const task = config => {
  const { name, url, github, email } = config
    .require('name', 'url', 'github', 'email')
    .values();

  const packageName = path.basename(process.cwd());

  const pkg = json('package.json', {
    name: packageName,
    version: '0.1.0',
    description: '',
    main: 'lib/index.js',
    repository: `${github}/${packageName}`,
    author: `${name} <${email}> (${url})`,
    license: 'MIT',
    engines: {
      node: '>=8',
    },
    scripts: {},
    files: ['lib'],
    keywords: [],
    'lint-staged': {},
    dependencies: {},
    devDependencies: {},
  });

  if (pkg.exists()) {
    pkg.merge({
      engines: {
        node: `>=8`,
      },
    });
  }

  pkg.save();

  lines('lib/index.js')
    .add(["'use strict';", ''])
    .save();
};

task.description = 'Adds package.json';

module.exports = task;
