#!/bin/sh

setup_git() {
  git config --global user.email "etrimaille@3liz.com" # Email registered in the GitHub account
  git config --global user.name "3Liz bot"
  git checkout -b master
}

commit_processing_files() {
  make github-pages
  git add docs/processing
  git commit --message "Update processing documentation to version : $TRAVIS_TAG" --message "[skip travis]"
}

commit_schemaspy_files() {
  make schemaspy
  git add docs/database
  git commit --message "Update database documentation to version : $TRAVIS_TAG" --message "[skip travis]"
}

upload_files() {
  git remote add origin-push https://"${GH_TOKEN}"@github.com/"${TRAVIS_REPO_SLUG}".git > /dev/null 2>&1
  git push --quiet --set-upstream origin-push master
}

setup_git
commit_processing_files
commit_schemaspy_files
upload_files
