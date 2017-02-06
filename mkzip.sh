#!/usr/bin/env sh

PROJECT_ROOT="$(cd "$(dirname "$0")" && pwd)"

PROJECT_NAME="$(cat "$PROJECT_ROOT/src/package.json" | grep '"name"' | cut -d\" -f4)"
PROJECT_VERSION="$(cat "$PROJECT_ROOT/src/package.json" | grep '"version"' | cut -d\" -f4)"

rsync -vrLkpogt --delete-before --progress \
	--exclude .DS_Store \
	--exclude build \
	--exclude node_modules \
	--exclude typings \
		"$PROJECT_ROOT/src" "$PROJECT_ROOT/tmp"

ZIP="$PROJECT_ROOT/$PROJECT_NAME-$PROJECT_VERSION.zip"
rm -f "$ZIP"

cd "$PROJECT_ROOT/tmp/src"
zip -r "$ZIP" .
cd "$PROJECT_ROOT"

rm -rf "$PROJECT_ROOT/tmp"
