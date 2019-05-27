#!/bin/bash

### automatically update the dotfiles repo; for use with cron.

# for ssh keys
. ~/.keychain/$HOSTNAME-sh

# cd to dotfiles repo (location of this script)
cd $(dirname "$0")

# get updates
git pull
git submodule update
