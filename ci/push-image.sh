#!/usr/bin/env bash

set -eu

echo "$QUAY_PASSWORD" | docker login quay.io --username "$QUAY_USERNAME" --password-stdin

set -x

VERSION=$(echo "$GITHUB_REF" | cut -d/ -f3-)

docker push quay.io/acoustid/postgresql:$VERSION
