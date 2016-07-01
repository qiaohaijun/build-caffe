source ./cecho.sh

function INFO {
        cecho -g "[INFO] $1"
}

function WARN {
        cecho -y "[WARN] $1"
}

function ERROR {
        cecho -r "[ERROR] $1"
}

function DEBUG {
        cecho -b "[DEBUG] $1"
}


