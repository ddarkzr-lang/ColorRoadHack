name: Build iOS Dylib

on:
  push:
    branches: [ main ]
  workflow_dispatch:

jobs:
  build:
    runs-on: macos-14

    steps:
    - name: Checkout Code
      uses: actions/checkout@v4

    - name: Setup Official Theos
      run: |
        git clone --recursive https://github.com/theos/theos.git $HOME/theos
        echo "THEOS=$HOME/theos" >> $GITHUB_ENV

    - name: Download iOS SDK
      run: |
        git clone https://github.com/theos/sdks.git $HOME/theos/sdks || true

    - name: Diagnose File Locations
      run: |
        echo "=== Current Working Directory ==="
        pwd
        echo "=== Listing All Files Recursively ==="
        ls -R

    - name: Compile Dylib File
      run: |
        export THEOS=$HOME/theos
        make package FINALPACKAGE=1
