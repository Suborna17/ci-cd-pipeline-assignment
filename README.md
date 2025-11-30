# CI/CD Pipeline Assignment — Complete Package

This folder contains a ready-to-use example project and a GitHub Actions workflow that satisfies the SE 103 assignment requirements.

## What is included
- `src/app.py` — simple Python source code
- `tests/test_app.py` — pytest unit test
- `build.sh` — build script that creates `build/artifact.zip`
- `.github/workflows/pipeline.yml` — GitHub Actions workflow implementing the 5 required stages
- `artifact_reuse.md` — short paragraph explaining build-once-deploy-many
- `video_script.txt` — 3–5 minute video presentation script
- `submission_document.md` — ready-to-paste submission content (includes pipeline content and checklist)

## How to use (step-by-step)

1. Create a new public GitHub repository (for example `ci-cd-pipeline-assignment`).
2. Clone the repo locally:
   ```bash
   git clone <your-repo-url>
   ```
3. Copy the folder contents into your repository root (or create files exactly as provided).
4. Ensure `build.sh` is executable:
   ```bash
   git update-index --chmod=+x build.sh
   ```
5. Commit and push:
   ```bash
   git add .
   git commit -m "CI/CD assignment: add project and workflow"
   git push origin main
   ```
6. On GitHub: go to **Settings → Secrets and variables → Actions → New repository secret** and add:
   - **Name:** `DEPLOY_API_KEY`
   - **Value:** any string (e.g. `123456`)
7. Trigger the workflow by pushing to `main`, or create a pull request. The GitHub Actions run will appear under **Actions**.
8. After the workflow completes successfully, open the run and:
   - Download or view the artifact under **Artifacts**
   - Capture screenshots as required by the assignment

## Artifact Reuse Explanation

See `artifact_reuse.md` for a short 1–2 paragraph explanation that you can paste into your submission.

## Video Script

See `video_script.txt` for a suggested 3–5 minute presentation script.

## Submission Checklist

1. Repository URL (public)
2. Pipeline configuration file content (`.github/workflows/pipeline.yml`)
3. Screenshot of successful execution (all stages passed + artifact visible)
4. Screenshot showing masked secret in the Simulated Deploy logs
5. Explanation of artifact reuse (`artifact_reuse.md`)
6. 3–5 minute video (use `video_script.txt`)

Good luck! If you want, I can also:
- Create a ZIP of this project (already provided)
- Create a ready-to-upload GitHub repository (I cannot push to your GitHub account, but I can give exact commands)
- Prepare placeholder screenshots (note: real screenshots must be produced from your GitHub run)
