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
# This script downloads the ampproject/docs build output from a well known GCE
# storage instance and does a firebase deploy.

# TODO(rsimha): Enable this after #968 is fixed.
# set -e

echo -e TRAVIS_BRANCH is ${TRAVIS_BRANCH}

# Create build dir
if [ "${TRAVIS_BRANCH}" = "production" ];
  then firebase use production;
elif [ "${TRAVIS_BRANCH}" = "parallel" ];
  then firebase use staging;
fi
mkdir build

# Install tools
echo 'Installing urllib3 and gsutil...'
echo -e 'travis_fold:start:install\n'
pip install urllib3[secure]
pip install gsutil --user
echo -e 'travis_fold:end:install\n'

# Check that build output exists
echo 'Listing build output from parallel jobs...'
echo -e 'travis_fold:start:list_remote_build\n'
if [ "${TRAVIS_BRANCH}" = "production" ];
  then gsutil ls gs://ampproject-b5f4c.appspot.com/;
elif [ "${TRAVIS_BRANCH}" = "parallel" ];
  then gsutil ls gs://ampproject-staging.appspot.com/;
fi
echo -e 'travis_fold:end:list_remote_build\n'

# Download build output
echo 'Downloading build output from parallel jobs...'
echo -e 'travis_fold:start:download_build\n'
if [ "${TRAVIS_BRANCH}" = "production" ];
  then gsutil -m rsync -r gs://ampproject-b5f4c.appspot.com/ ./ ;
elif [ "${TRAVIS_BRANCH}" = "parallel" ];
  then gsutil -m rsync -r gs://ampproject-staging.appspot.com/ ./ ;
fi
echo -e 'travis_fold:end:download_build\n'

# Extract build output
echo 'Unzipping build output from parallel jobs...'
echo -e 'travis_fold:start:unzip_build\n'
if [ "${TRAVIS_BRANCH}" = "production" ];
  then unzip -o "build_*.zip";
elif [ "${TRAVIS_BRANCH}" = "parallel" ];
  then unzip -o "build_*.zip";
fi
echo -e 'travis_fold:end:unzip_build\n'

# Check that build output was extracted
echo 'Listing contents of build/...'
echo -e 'travis_fold:start:list_local_build\n'
ls -la build/
echo -e 'travis_fold:end:list_local_build\n'

# Deploy build
echo 'Deploying to firebase...'
echo -e 'travis_fold:start:deploy_firebase\n'
# TODO: renenable: firebase deploy --token "$FIREBASE_TOKEN" --non-interactive
echo -e 'travis_fold:end:deploy_firebase\n'
