#!/usr/bin/env sh

PROJECT_ROOT=$( cd "`dirname "$0"`" && pwd )
PROJECT_NAME="`basename "$PROJECT_ROOT"`"

VERSION="`cat "$PROJECT_ROOT/src/package.json" | grep '"version"' | awk -F '"' '{ print $4 }'`"

rsync -vrptgoLk --progress --delete-before \
	--exclude .DS_Store \
	--exclude .gitignore \
	--exclude build \
	--exclude node_modules \
	--exclude typings \
		"$PROJECT_ROOT/src" "$PROJECT_ROOT/tmp"

ZIP="$PROJECT_ROOT/$PROJECT_NAME-$VERSION.zip"
rm -f "$ZIP"

cd "$PROJECT_ROOT/tmp/src"
zip -r "$ZIP" .
cd "$PROJECT_ROOT"

rm -rf "$PROJECT_ROOT/tmp"
