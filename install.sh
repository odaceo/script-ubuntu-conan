#!/bin/bash

# Copyright (C) 2017 Odaceo. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

CMAKE_VERSION=${1:-'0.18.1'}
CMAKE_UNDERSCORED_VERSION=${CMAKE_VERSION//./_}

# Download the ubuntu/debian package
wget https://github.com/conan-io/conan/releases/download/${CMAKE_VERSION}/conan-ubuntu-64_${CMAKE_UNDERSCORED_VERSION}.deb

# Install the ubuntu/debian package
sudo dpkg -i conan-ubuntu-64_${CMAKE_UNDERSCORED_VERSION}.deb

# Make sure conan is working properly
conan
