#!/bin/bash
#
# Copyright 2018 The AMP HTML Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS-IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the license.
#
# This script builds ampproject/docs for the list of locales provided via
# a list of command line arguments, and zips and uploads the build output to
# a well known GCE storage instance.

# TODO(rsimha): Enable this after #968 is fixed.
# set -e

echo -e TRAVIS_BRANCH is ${TRAVIS_BRANCH}

# Process command line arguments
cmd="grow build --re-route "
header="Building locales: "
build_file="build"
for locale in "$@"
do
  cmd="${cmd} --locale ${locale}"
  header="${header} ${locale},"
  build_file="${build_file}_${locale}"
done
build_file="${build_file}.zip"

# Perform build
echo ${header}
echo -e 'travis_fold:start:build\n'
echo "Running \"${cmd}\"..."
${cmd} || true
echo -e 'travis_fold:end:build\n'

# Compress build output
echo 'Zipping build directory...'
echo -e 'travis_fold:start:zip_build\n'
zip -r ${build_file} build/ || true
echo -e 'travis_fold:end:zip_build\n'

# Install gcloud tools
echo 'Installing gsutil...'
echo 'travis_fold:start:install_gsutil'
pip install gsutil --user || true # can't do this before grow has run, as the oath2client is incompatible
echo -e 'travis_fold:end:install_gsutil\n'

# Upload build output
echo 'Uploading build output...'
echo -e 'travis_fold:start:upload_build\n'
if [ "${TRAVIS_BRANCH}" = "production" ];
  then gsutil -m cp -r ${build_file} gs://ampproject-b5f4c.appspot.com;
elif [ "${TRAVIS_BRANCH}" = "parallel" ];
  then gsutil -m cp -r ${build_file} gs://ampproject-staging.appspot.com;
fi
echo -e 'travis_fold:end:upload_build\n'
