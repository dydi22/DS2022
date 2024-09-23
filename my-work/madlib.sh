#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " NOUN1
read -p "2. Name a fear of yours: " NOUN2
read -p "3. Name a city in Americat: " NOUN3
read -p "4. Name your favorite animal: " NOUN4
read -p "5. Name your favorite movie: " NOUN5
read -p "6. Name a verb: " VERB1
read -p "7. Name an adjective to describe something: " ADJECTIVE1
read -p "8. Name an adverb: " ADVERB1

echo "Once upon a time, in the city of $NOUN3, there was a famous $NOUN1 tournament."
echo "People from all over the world gathered, but one person was too afraid to join
 because of their fear of $NOUN2."
echo "One day, a $ADJECTIVE1 $NOUN4 appeared and decided to $VERB1 in the competition."
echo "This $NOUN4 was inspired by the movie '$NOUN5' and performed $ADVERB1,
astonishing everyone in the audience."
echo "In the end, the $NOUN4 became a legend, and the tournament went down in history
!"
 

