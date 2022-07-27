alias edit-aliases="$PROJECT_EDITOR ~/.zsh-customizations/2_aliases.sh &"

# CD Aliases
alias cd-atlassian="cd ~/Development/Atlassian"
alias cd-projects="cd ~/Development/Atlassian/Projects"
alias cd-playground="cd ~/Development/Atlassian/Playground"
alias cd-online-courses="cd ~/Development/Atlassian/Online\ Courses"

# Aliases to open folders/files in vscode
alias edit-zsh-customizations="$PROJECT_EDITOR ~/.zsh-customizations &"

# Alias to reload this file
alias reload-aliases="echo \"Reloading alias customizations\" && source $0"

# Alias to plantuml https://plantuml.com/
# plantuml.jar must be installed to ~/.java/ 
alias plantuml='f() { java -jar ~/.java/plantuml.jar  $1 };f'

alias docker-kill-all="docker ps | cut -d ' ' -f 1 | xargs docker kill"
alias docker-rm-all="docker ps -a | cut -d ' ' -f 1 | xargs docker rm"

alias load-py-env="source ${HOME}/Development/Atlassian/Python/bin/activate"
