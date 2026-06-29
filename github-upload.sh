#!/usr/bin/env bash
set -euo pipefail

# Push this OpenCarGarage folder into the GitHub repo:
# https://github.com/Jarkyman/MyCarBook
#
# Run from anywhere:
#   bash github-upload.sh

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKDIR="$(mktemp -d)"
REPO_DIR="$WORKDIR/MyCarBook"

git clone https://github.com/Jarkyman/MyCarBook.git "$REPO_DIR"
cp -R "$SCRIPT_DIR"/. "$REPO_DIR"/
cd "$REPO_DIR"

git add .
if git diff --cached --quiet; then
  echo "No changes to commit."
else
  git commit -m "Add OpenCarGarage car book"
  git push origin main
fi
