alias edit-develop="code ~/.zsh-customizations/4_develop.sh"

# Start Project aliases
alias start-jira-frontend="yarn start --ngrok-subdomain phtest --webpack-dev-tool=eval-source-map jira-spa"
alias start-jira-monolith="./jmake run explore -Datlassian.webresource.file.cache.disable=true -Datlassian.webresource.disable.minification=true --frontend-resources jira-components/jira-legacy-frontend/greenhopper-frontend/target/classes"
alias start-jira-monolith-debug="./jmake run explore -Datlassian.webresource.file.cache.disable=true -Datlassian.webresource.disable.minification=true --suspend --frontend-resources jira-components/jira-legacy-frontend/greenhopper-frontend/target/classes"

# Alias to reload this file
alias reload-develop="echo \"Reloading development customizations\" && source $0"

# override the zsh git_prompt_info
# function git_prompt_info() {
#   local ref
#   if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
#     ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
#     ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
#     echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}${ZSH_THEME_GIT_PROMPT_CLEAN}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
#   fi
# }
