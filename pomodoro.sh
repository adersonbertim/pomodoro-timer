#!/usr/bin/env bash

function colors () {
  #adding colors
  cyan='\e[36m'
  green='\e[32m'
  blue='\e[34m'
  clear='\e[0m' 
}

function pomotimer () {
  printf "${green}Wellcome to Pomodoro Timer${clear}\n"

  # Help command 
  if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]]; then 
    echo -e "${blue}Welcome to helper, see the options below!!${clear}"
    echo "Options:"
    echo "-v      Version of this Pomodoro."
    echo "-w      Work timer you want."
    echo "-s      Short Break time ajust."
    echo "-l      Long Break time ajust."
    echo "-s      Sessions you want to study."
    echo "Have a nice study!"
    return
  fi

  # Version Command
  if [[ "$1" == "-v" ]] || [[ "$1" == "--version" ]]; then
    echo -e "${cyan}This current version is:${clear}"
    echo "Version: 1.0.0"
    echo "For more content use helper"
    return 
  fi

# Standard Time
#msg=""
#beep_time="alarm 400 200"
#timer=1500

  while : 
  do
    case $1 in
      -w | --work)
        timer=$(($2*60))
        ;;
      -s | --short)
        msg="Short Break is over bro!"
        timer=$(($2*60))
        ;;
      -l | --long)
        msg="Long Break it's over man!"
        timer=$(($2*60))
        ;;
      -*)
        echo "Error command unkdown: $1" 
        return 1
        ;;
      *)
        break
        ;;
    esac
  done

  }
