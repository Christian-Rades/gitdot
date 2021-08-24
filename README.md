# gitdot
A way to organize my dot files

This is just a nix-ified shell script to track my dot files as git repo.
It's based on this [article](https://www.atlassian.com/git/tutorials/dotfiles).

## Installation
Clone it and run `nix-shell -if .`. I haven't yet looked into nix-overlays or flakes.

## Usage
Call `gitdot` like you would `git`, except it only works on the files stored under `$HOME`
and hides untracked files by default.
