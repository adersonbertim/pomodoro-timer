#!/usr/bin/env bash
#-------------------------------------------------------------
# Description: Pomodoro timer with a simple script and menu
# Version: 1.0
# Author: Aderson Bertim
# Script name: pomo.sh
# OS : Arch Linux
#-------------------------------------------------------------
# Changelog Section
# Realese 1.0.1
# Correction at bug in 25min function and adding Description
# and changelog
#-------------------------------------------------------------

#adding colors
cyan='\e[36m'
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

#Color Functions
ColorGreen () {
  echo -ne $green$1$clear
}
ColorCyan () {
  echo -ne $cyan$1$clear
}
ColorBlue (){
  echo -ne $blue$1$clear
  }

# Timers functions

timer25 ()
{
while true
do 
  for i in {1..4}
  do
    sleep 25m
    echo -ne "${green}You worked so great, now is time to rest!\n${clear}"
    sleep 5m
    echo -ne "${blue}Time to work!\n${clear}"
  done
  echo -ne "${green}Timer for a long break!\n${clear}"
  sleep 15m
  echo -ne "${blue}Time back to work!\n${clear}"
done
}

timer30 (){
while true
do 
  for i in {1..4}
  do
    sleep 30m
    echo -ne "${green}You worked so great, now is time to rest!\n${clear}"
    sleep 5m
    echo -ne "${blue}Time to work!\n${clear}"
  done
  echo -ne "${green}Timer for a long break!\n${clear}"
  sleep 15m
  echo -ne "${blue}Time back to work!\n${clear}"
done
}

timer45 (){
while true
do 
  for i in {1..4}
  do
    sleep 45m
    echo -ne "${green}You worked so great, now is time to rest!\n${clear}"
    sleep 10m
    echo -ne "${blue}Time to work!\n${clear}"
  done
  echo -ne "${green}Timer for a long break!\n${clear}"
  sleep 15m
  echo -ne "${blue}Time back to work!\n${clear}"
done
}

timer50 (){
while true
do 
  for i in {1..4}
  do
    sleep 50m
    echo -ne "${green}You worked so great, now is time to rest!\n${clear}"
    sleep 10m
    echo -ne "${blue}Time to work!\n${clear}"
  done
  echo -ne "${green}Timer for a long break!\n${clear}"
  sleep 15m
  echo -ne "${blue}Time back to work!\n${clear}"
done

}

timer60 () {
while true
do 
  for i in {1..4}
  do
    sleep 60m
    echo -ne "${green}You worked so great, now is time to rest!\n${clear}"
    sleep 10m
    echo -ne "${blue}Time to work!\n${clear}"
  done
  echo -ne "${green}Timer for a long break!\n${clear}"
  sleep 20m
  echo -ne "${blue}Time back to work!\n${clear}"
done
}

function timers () {
  timer25
  timer30
  timer45
  timer50
  timer60
}

function menu () {
  echo -ne "
  Welcome to Pomodoro Session!
  Chose your option time:
  $(ColorGreen '1)') 25 Minutes / 5 Minutes
  $(ColorGreen '2)') 30 Minutes / 5 Minutes
  $(ColorGreen '3)') 45 Minutes / 10 Minutes
  $(ColorGreen '4)') 50 Minutes / 10 Minutes
  $(ColorGreen '5)') 60 Minutes / 10 Minutes
  $(ColorGreen '6)') Exit
  $(ColorCyan 'Chose an Option: ')"
  read a 
  case $a in 
          1) timer25 ; menu ;;
          2) timer30 ; menu ;;
          3) timer45 ; menu ;;
          4) timer50 ; menu ;;
          5) timer60 ; menu ;;
          6) exit ; menu ;;
          *) echo -e "Error, wrong option!!";
            ;;
        esac
  }
menu

