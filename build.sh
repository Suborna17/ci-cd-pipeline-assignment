#!/bin/bash
echo "Starting Build..."
mkdir -p build
zip -r build/artifact.zip src
echo "Build Completed. Artifact Generated: artifact.zip"
