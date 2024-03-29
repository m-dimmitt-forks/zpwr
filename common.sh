#!/usr/bin/env bash
#{{{                    MARK:Header
#**************************************************************
#####   Author: JACOBMENKE
#####   Date: Sat Apr  7 02:19:29 EDT 2018
#####   Purpose: bash script to 
#####   Notes: 
#}}}***********************************************************

ZPWR_OS_TYPE="$(uname -s | perl -e 'print lc<>')"

#resolve all symlinks
INSTALLER_DIR="$(pwd -P)"

export DELIMITER_CHAR='%'


exists(){
    type "$1" >/dev/null 2>&1
}

#prettyPrint(){
    #(( install_counter++ ))
    #printf "\x1b[32;1m"
    #perl -le "print '#'x80"
    #printf "\x1b[34;4m"
    #printf "$install_counter>>> $1\n"
    #printf "\x1b[0;32;1m"
    #perl -le "print '#'x80"
    #printf "\x1b[0m"
    #printf "\n"
#}

needSudo(){
    if [[ ! -w "$1" ]]; then
        return 0
    else
        return 1
    fi
}

proceed(){
    printf "Proceed?(y/n) >>> "
    read
    case $REPLY in
        [yY][eE][sS]|[yY])
            :
            ;;
        *)
            exit 1
            ;;
    esac
}

prettyPrintStdin(){
    perlfile="$INSTALLER_DIR/scripts/boxPrint.pl"
    [[ ! -e "$perlfile" ]] && echo "where is $perlfile?" >&1 && exit 1
    (( install_counter++ ))
    {
        printf "$install_counter>>> $@\n"
        cat
    } | "$perlfile" -f
    echo
}

prettyPrint(){
    perlfile="$INSTALLER_DIR/scripts/boxPrint.pl"
    [[ ! -e "$perlfile" ]] && echo "where is $perlfile?" >&1 && exit 1
    (( install_counter++ ))
    printf "$install_counter>>> $@\n" | "$perlfile" -f
    echo
}

turnOffDebugging(){
    set +x
    set +v
    exec 2> /dev/tty
}
turnOnDebugging(){
    set -x
    set -v
    exec 2>> >(tee "$INSTALLER_DIR"/logfile.txt)
    exec >> >(tee "$INSTALLER_DIR"/logfile.txt)
}

alternatingPrettyPrint(){
    counter=0

    if [[ -z $1 ]]; then
        cat | perl -F"$DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        $counter++;
        };print "\x1b[0m"'
    else
        perl -F"$DELIMITER_CHAR" -anE '
        my $counter=0;
        for (@F){
            if ($counter % 2 == 0){
                 print "\x1b[36m$_\x1b[0m"
            } else {
                 print "\x1b[1;4;34m$_\x1b[0m"
            }
        $counter++;
        }; print "\x1b[0m"' <<< "$@"

    fi

}

