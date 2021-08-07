#!/usr/bin/env bash
#
##### BEGIN #####
# Download Covid Cases Data.
get_covid_cases_data() {
    if [ -z "$(ls -A data/)" ]; then
        if [[ $(which curl) && $(curl --version) ]]; then
            # REPLACE URL AT WILL
            printf "\n*****Downloading COVID-19 data*****\n\n"
            curl -L "https://tinyurl.com/x46em2v4" --output data/covid_cases_data.csv
        else
            if [[ "$OSTYPE" == "linux-gnu"* ]]; then
                sudo apt-get install curl
            elif [["$OSTYPE" == "darwin"]]; then
                pkg install curl
            elif [["$OSTYPE" == "freebsd"]]; then
                pkg install curl
            else
                printf "Curl / Wget are required for this repository!"
            fi
        fi
    else
        printf "\n*****Data Already Existed!*****\n"
    fi
}

run_prediction() {
    if [[ $(which python) && $(python --version) ]]; then
        printf "\nRunning Prediction....\n"
        sleep 3
        python prediction/app.py
    else
        printf "Python Needed To Run This Prediction"
    fi
}

main() {
    get_covid_cases_data
    run_prediction
}

main
