'use strict';

const path = require('path');
const { template } = require('mrm-core');

const task = () =>
  template('.travis.yml', path.join(__dirname, 'template.yml'))
    .apply()
    .save();

task.description = 'Adds Travis CI';

module.exports = task;
