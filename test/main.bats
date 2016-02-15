#!/usr/bin/env bats

load common

diff_csv_file (){
    run diff output-ok/imc_export.csv last/imc_export.csv
    echo $output
    [ "$status" -eq 0 ]
    [ "$output" = "" ]
}

@test "Parse Email given as file and write CSV to file" {
    run ../IMC-mail-extract input/email --output-file last/imc_export.csv
    echo $output
    [ "$status" -eq 0 ]
    [ "$output" = "" ]
    diff_csv_file
}

@test "Parse Email passed via STDIN as file and write CSV to file" {
    run ../IMC-mail-extract --output-file last/imc_export.csv < input/email
    echo $output
    [ "$status" -eq 0 ]
    [ "$output" = "" ]
    diff_csv_file
}
