#!/bin/sh

export TARGET_FOLDER="../.test-$(basename "$(pwd)")"

if [ -d $TARGET_FOLDER ]; then
    rm -rf $TARGET_FOLDER
fi

mkdir -p $TARGET_FOLDER
cp foundry.toml $TARGET_FOLDER
cp -r solutions $TARGET_FOLDER/src
cp -r tests $TARGET_FOLDER/tests
cd $TARGET_FOLDER
forge test
cd -
rm -rf $TARGET_FOLDER
