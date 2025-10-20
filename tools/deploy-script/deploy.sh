#!/bin/bash
set -e

DEST_DIR="../peanuthost-website-public/"

echo "Cleaning and building Hugo site..."
hugo --minify --cleanDestinationDir --gc -d "${DEST_DIR}"

echo "Copying readme and license files..."
cp ./README.md "${DEST_DIR}"
cp ./LICENSE "${DEST_DIR}"
cp ./THIRD_PARTY_LICENSES.md "${DEST_DIR}"

echo "Build complete. Public site is ready in '${DEST_DIR}'."
