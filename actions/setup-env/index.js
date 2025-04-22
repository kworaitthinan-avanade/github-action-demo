/* eslint-disable @typescript-eslint/no-require-imports */
const core = require('@actions/core');
const exec = require('@actions/exec');

async function run() {
  try {
    const nodeVersion = core.getInput('node-version');
    const registryUrl = core.getInput('registry-url');

    await exec.exec(`echo "Setting up Node.js ${nodeVersion}"`);
    await exec.exec(`echo "Using registry: ${registryUrl}"`);

    await exec.exec(`npm install`);
  } catch (error) {
    core.setFailed(error.message);
  }
}

run();
