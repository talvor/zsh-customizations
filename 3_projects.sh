# cd and open project folders
function project () {
    echo "PROJECT_DIR=$PROJECT_DIR"
    if [[ -z "$PROJECT_DIR" ]]
    then
        echo "ERROR: Environment variable PROJECT_DIR must be set"
    else
        echo "Switching to project $1"
        echo "Changing to project directory"
        cd $PROJECT_DIR/$1

        if [[ ! -z "$PROJECT_EDITOR" ]]
        then
            echo "Opening project in editor"
            $PROJECT_EDITOR .
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
