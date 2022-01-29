#!/bin/bash
scriptDir="$(cd "$(dirname "$0")" && pwd -P)"
echo "SricptDir: " ${scriptDir}

set -eu

readonly VERSION=$(date +%Y.%-m.%-d)

pushd $(dirname $0) &>/dev/null

if [ $# -eq 0 ]; then
  echo "Usage: $0 module1 [module2 ...]" 
  exit 2
fi

declare MODULES=()
for module in "$@"; do
  echo "module: " ${module}
  relmodule=${scriptDir}
  echo "relmodule 1: " ${relmodule}
  relmodule=${scriptDir}/${module}
  echo "relmodule 2: " ${relmodule}
  if [ ! -d "$relmodule" ] || [ ! -f "$relmodule/pom.xml" ]; then
#  if [[ $relmodule = */* ]] || [ ! -d "$relmodule" ] || [ ! -f "$relmodule/pom.xml" ]; then
    echo "ERROR: $module is not a module of the project"
    exit 1
  fi
#  MODULES+=("$relmodule")
  MODULES+=("$module")
done
unset relmodule

if [[ -n $(git status --porcelain) ]]; then
  echo "ERROR: Working tree is dirty"
  exit 1
fi

echo "echo 1"

git checkout $(git rev-parse --verify HEAD)

echo "echo 2"

for module in "${MODULES[@]}"; do
  echo "module 2: " ${module}
  mvn versions:set -DgenerateBackupPoms=false -DnewVersion="$VERSION" -pl "$module"
  git add "$module/pom.xml"
done

echo "echo 3"

git commit -m "Prepare release of ${MODULES[*]} $VERSION"

echo "echo 4"

if [[ -n $(git status --porcelain) ]]; then
  echo "ERROR: Working tree is dirty after version updates"
  exit 1
fi

echo "echo 5"

declare TAGS=()
for module in "${MODULES[@]}"; do
  mvn clean verify -pl "$module"
  git tag -a -m "Releasing $module $VERSION" "$module-$VERSION"
  TAGS+=("tag" "$module-$VERSION")
done

echo "echo 6"

mvn clean deploy -Prelease -pl $(IFS=, ; echo "${MODULES[*]}")
git push origin "${TAGS[@]}"

git checkout -

popd &>/dev/null

