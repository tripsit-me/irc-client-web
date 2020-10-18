#!/usr/bin/env bash
set -e

LOCATION="$(dirname "${0}")/../db.json"
USERS=("SevenCats" "mogad0n" "cranberry")
THEMES=("discordapp" "mininapse" "solarized")

# Change location of user file
if [[ ! -z $(npx thelounge list | grep "currently no users") ]]; then
	echo "Changing location of db: ${LOCATION}"
	npx thelounge edit "${LOCATION}"

	echo "Add users..."
	for user in $USERS; do
		npx thelounge add "${user}"
	done

	echo "Add themes..."
	for theme in $THEMES; do
		npx thelounge install "thelounge-theme-${theme}"
	done
else
	echo "The Lounge has already been setup..."
fi
