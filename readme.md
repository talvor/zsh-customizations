# ZSH Customizations

## Installation
* Clone the repository into `~/.zsh-customizations`
* Add the following to the `~/.zshrc` file
``` zsh
for file in ~/.zsh-customizations/*.sh; do
    source "$file"
done
```

## NVM auto use
Sets up zsh to switch node versions using nvm use when changing directories in the terminal.  If a directory contains a .nvmrc file, nvm switches to the version of node listed in that file, otherwise nvm will switch to the system default node version

## Shell aliases

## Project alias
The project alias is a shortcut for switching to a project folder and opening it in an editor.  To use this alias the following environment variables need to be set;

* PROJECT_DIR - Path to directory where projects are stored (Required)
* PROJECT_EDITOR - Path to editors cli command (Optional)

The alias also provides auto completion and lists the directory names in the `PROJECT_DIR`

example
``` shell
$ export PROJECT_DIR=~/Projects
$ export PROJECT_EDITOR=code
$ project <tab>
project1 project2 project3
$ project project1
Switching to project project1
Changing to project directory
Opening project in editor
$
```
