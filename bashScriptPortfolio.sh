#!/bin/bash

#Hi! Welcome to Rishika's bash portfolio script.

name='Rishika Santhosh Kumar'
occupation='Software Development Intern'
email='rishikasanthoshkumar@gmail.com'
github='https://github.com/rishika-sk'
linkedin='https://www.linkedin.com/in/rishikasanthoshkumar/'
experience='Graduated with a B.S. in Computer Science from Kettering University. Currently working as a Software Development Intern at 365 Retail Markets, focusing on Full-stack Development and cloud computing.'
skills='Python, Java, JavaScript and Kotlin. Experienced with frameworks like React and Node.js. Familiar with cloud platforms such as AWS and Azure.'
hobbies='In my free time, I enjoy playing cricket, the ukulele , reading books, and exploring new technologies.'

yes='y'
no='n'

index=0
length=2

declare -a riddleQ=("What has many keys but can't open a single lock?"
                      "I am as light as  a feather, yet the strongest person can't hold me for five minutes. What am I?"
                      "Where does today come before yesterday?"
)
declare -a riddleA=("Piano" "Breath" "Dictionary")

echo -e "Hello, my name is $name. Welcome abord my portfolio"
echo "Here you will journey across many riddles and learn more about me."
read -p "Are you ready to start? (y/n): " answer

if [[ "$answer" = "$yes" ]]
then
  echo ""
  read -p "Riddle 1: ${riddleQ[index]}" ans1
  while [[ $ans1 != ${riddleA[index]} ]] ; do
      read -p "Incorrect.  Try again: " ans1
  done

  echo -e "\nCongratulations! EXPERIENCE:\n$experience"
  (( index += 1 ))
  if [[ $index -gt $length ]]
  then
    (( index = 0 ))
  fi

  echo ""
  read -p "Riddle 2: ${riddleQ[index]}" ans2
  while [[ $ans2 != ${riddleA[index]} ]] ; do
      read -p "Incorrect.  Try again: " ans2
  done

 
  echo -e "\nCongratulations! SKILLS:\n$skills"
  (( index += 1 ))
  if [[ $index -gt $length ]]
  then
    (( index = 0 ))
  fi

  echo ""
  read -p "Riddle 3: ${riddleQ[index]} " ans3
  while [[ $ans3 != ${riddleA[index]} ]] ; do
      read -p "Incorrect. Try again: " ans3
  done


  echo -e "\nCongratulations! HOBBIES:\n$hobbies"

  echo -e "\nThanks for playing!"


elif [[ $answer == $no ]]
then
  echo -e "\nCome back soon! Let's stay in touch :)"

else
  echo -e "\nInvalid Response"
fi


echo "$name"
echo "$occupation"
echo ""
echo "$email"
echo "$github"
echo "$linkedin"