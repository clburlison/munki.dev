#!/bin/sh

echo "**** Cleanup munki.dev ****"

vagrant destroy

echo "Cleanup .vagrant directory"

rm -rf .vagrant

echo "Cleanup index.html"

rm index.html

echo "Cleanup munki_repo"

rm -rf munki_repo