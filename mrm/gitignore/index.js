'use strict';

const path = require('path');
const { template } = require('mrm-core');

const task = () =>
  template('.gitignore', path.join(__dirname, 'template'))
    .apply()
    .save();

task.description = 'Adds .gitignore';

module.exports = task;
