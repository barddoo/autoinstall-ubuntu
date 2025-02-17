#!/bin/bash

./deb.sh
./brew.sh
./flatpak.sh
./custom-installs.sh

# rsync all dotfiles to home directory
rsync -avh --no-perms --progress ./home ~
