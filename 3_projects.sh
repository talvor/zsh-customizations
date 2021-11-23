# cd and open project folders
function project () {
    local EDITOR=""

    if [[ -z "$PROJECT_DIR" ]]
    then
        echo "ERROR: Environment variable PROJECT_DIR must be set"
    else
        echo "Switching to project $1"
        cd $PROJECT_DIR/$1

        EDITOR="$PROJECT_EDITOR"

        if [ -f "./jmake" ]; then
            EDITOR="$PROJECT_EDITOR_JAVA"
        fi

        if [ -f "./pom.xml" ]; then
            EDITOR="$PROJECT_EDITOR_JAVA"
        fi

        if [[ ! -z "$EDITOR" ]]
        then
            echo "Opening project in editor $EDITOR"
            $EDITOR . &
        fi
    fi
}

function _project(){
    for dir in $PROJECT_DIR/*/
    do 
        dir="${dir%/}"
        compadd "${dir##*/}"
    done
}

compdef _project project

# Alias to reload this file
alias reload-project="echo \"Reloading project customizations\" && source $0"