#!/usr/bin/env bash

function pomotimer () {
  #adding colors
  cyan='\e[36m'
  green='\e[32m'
  blue='\e[34m'
  clear='\e[0m' 
  printf "${green}Wellcome to Pomodoro Timer${clear}\n"

  # Help command 
  if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then 
    echo "Welcome to helper, see the options below!!"
    echo "Options:"
    echo "-v      Version of this Pomodoro."
    echo "-w      Work timer you want."
    echo "-b      Break time ajust."
    echo "-s      Short Break time ajust."
    echo "-l      Long Break time ajust."
    echo "-s      Sessions you want to study."
    echo "Have a nice study!"
    return
  fi

  # Version Command
  if [[ "$1" == "-v" ]] || [[ "$1" == "--version" ]]; then
 
    return 
  fi

  # Work command
  if [[ "$1" == "-w" ]] || [[ "$1" == "--work" ]]; then
    
    return
  fi

  # Short break command



  # Long break command



  # Another command



}

