'use strict';

const path = require('path');
const { template } = require('mrm-core');

const task = () =>
  template('.editorconfig', path.join(__dirname, 'template.ini'))
    .apply()
    .save();

task.description = 'Adds EditorConfig';

module.exports = task;
