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

# Launch a git repo's web page.
function gow(){
    REGEXP="(.*git\@)(.*):(.*)\.git"
    URL=$(git config --get remote.origin.url)
    URL_HOST=$(echo $URL | sed -E "s/${REGEXP}/\2/g")
    URL_PATH=$(echo $URL | sed -E "s/${REGEXP}/\3/g")

    if [ $URL_HOST = "bitbucket-mirror-au.internal.atlassian.com" ]; then
        REGEXP="(.*stash)\/(.*)\/(.*)"
        URL_HOST="stash.atlassian.com"
        URL_PATH=$(echo $URL_PATH | sed -E "s/${REGEXP}/projects\/\2\/repos\/\3/g")
    fi

    URL="https://${URL_HOST}/${URL_PATH}"

    echo "Launching git website ${URL}"
    xdg-open ${URL}
    echo ''
}
