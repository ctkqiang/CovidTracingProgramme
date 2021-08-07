#!/usr/bin/env bash
#
##### BEGIN #####
# Download Covid Cases Data.
get_covid_cases_data() {
    if [ -z "$(ls -A data/)" ]; then
        if [[ $(which curl) && $(curl --version) ]]; then
            # REPLACE URL AT WILL
            printf "\n*****Downloading COVID-19 data*****\n\n"
            curl -L "https://raw.githubusercontent.com/MoH-Malaysia/covid19-public/main/mysejahtera/trace_malaysia.csv" --output data/covid_cases_data.csv
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

main() {
    get_covid_cases_data
}

main
