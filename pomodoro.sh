#!/usr/bin/env bash

function pomotimer () {
  #adding colors
  cyan='\e[36m'
  green='\e[32m'
  blue='\e[34m'
  nc='\e[0m' # Non Color
  printf "${cyan}Wellcome to Pomodoro Timer${nc}\n"
  
  if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then 
    echo "This is a line test"
    echo -e "line test"
    echo "test"
    return
  fi
}

