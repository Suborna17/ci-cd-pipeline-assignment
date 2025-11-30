    # Submission Document — CI/CD Pipeline Assignment (SE 103)

    **Repository URL:** <PUT YOUR REPO URL HERE>

    ## Pipeline configuration file (paste content below)
    ```yaml
    name: CI Pipeline

on:
  push:
    branches: [ main ]
  pull_request:

jobs:
  build-test-deploy:
    runs-on: ubuntu-latest

    steps:

    # ---------------- Source Stage ----------------
    - name: Checkout Source Code
      uses: actions/checkout@v4

    # ---------------- Build Stage ----------------
    - name: Build Application Artifact
      run: |
        chmod +x build.sh
        ./build.sh

    # ---------------- Test Stage ----------------
    - name: Run Unit Tests
      run: |
        pip install pytest
        pytest

    # ---------------- Artifact Upload Stage ----------------
    - name: Upload Build Artifact
      uses: actions/upload-artifact@v4
      with:
        name: build-artifact
        path: build/artifact.zip

    # ---------------- Simulated Deploy Stage ----------------
    - name: Simulated Deployment
      env:
        DEPLOY_API_KEY: ${{ secrets.DEPLOY_API_KEY }}
      run: |
        echo "Downloading Artifact..."
        mkdir deploy
        echo "Deploying..."
        echo "Deployment Using API Key: $DEPLOY_API_KEY"
        echo "Deployment Completed Successfully."

    ```

    ## Screenshot checklist
    1. Screenshot showing successful pipeline run (all steps passed).
    2. Screenshot showing artifact.zip under Artifacts.
    3. Screenshot showing masked secret in Simulated Deploy logs (Deployment Using API Key: ***).

    ## Artifact reuse explanation
    (See artifact_reuse.md)

    ## Video presentation
    Use video_script.txt as guide.

