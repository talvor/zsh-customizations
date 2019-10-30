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
The script `1_nvm-autoload.sh` sets up zsh to automatically switch node versions using `nvm use` whenever you change directories in the terminal.  If the incoming directory contains a .nvmrc file, nvm switches to the version of node listed in that file, otherwise nvm will switch to the system default node version.

## Shell aliases
The script `2_aliases.sh` sets up a few shortcut commands I use to quickly change to frequently used directories.

You should modify these to suit your environment.

## Project alias
The script `3_projects.sh` loads a `project` alias is a shortcut for switching between project folders and opening them in an editor.  

To use this alias the following environment variables need to be set;

* PROJECT_DIR - Path to directory where projects are stored (Required)
* PROJECT_EDITOR - Path to editors cli command (Optional)

The alias also provides auto completion and lists the directory names in the `PROJECT_DIR`.  So after entering the command `project` hitting `<tab>` will present a list of project names (directory names) and will also autocomplete using this list.

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

HINT: I recommend that you add the `export` lines above to your `~/.zshrc` file so you do not need to set them every time you open a terminal.
