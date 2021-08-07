#!/usr/bin/env bash
#
run_android_application() {
    if [[ $(which flutter) && $(flutter --version) ]]; then
        printf "Compiling Mobile Application...\n\n"
        cd application/covid_tracing_programme_demo && flutter run
    else
        printf "Flutter Is Required For The Compilation Of The Mobile Application!"
    fi
}
#
run_ios_application() {
    printf "" # Coming Soon
}
#
# [Execution]
run_android_application
run_ios_application
