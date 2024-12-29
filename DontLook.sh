#!/bin/bash

# Function to center text
center_text() {
    local text="$1"
    local terminal_width
    terminal_width=$(tput cols)
    printf "%*s\n" $(((${#text} + terminal_width) / 2)) "$text"
}

# Function to display a sentence with color
display_colored_sentence() {
    local text="$1"
    local color_code="$2"
    tput setaf "$color_code"
    center_text "$text"
    tput sgr0
}

# Introduction
display_colored_sentence "D-o-n-t-Look (Deny-obfuscate-never-trolled-look) is a real world advertisement blocking behaviour algorithm designed to enable individuals in the real world to avoid advertisements." 6

# Prompt for next sentence
read -p "Do you wish to continue reading? (y/n): " choice
if [[ "$choice" != "y" ]]; then
    exit 0
fi

# Sentence 1
display_colored_sentence "Advertisements are pervasive in modern life, invading both our physical and digital spaces." 4
read -p "Do you wish to continue reading? (y/n): " choice
if [[ "$choice" != "y" ]]; then
    exit 0
fi

# Sentence 2
display_colored_sentence "D-o-n-t-Look allows you to train yourself to actively recognize and avoid them, returning control of your time and attention." 2
read -p "Do you wish to continue reading? (y/n): " choice
if [[ "$choice" != "y" ]]; then
    exit 0
fi

# Sentence 3
display_colored_sentence "By fostering awareness, the algorithm helps individuals develop a cognitive shield against unwanted stimuli." 5
read -p "Do you wish to continue reading? (y/n): " choice
if [[ "$choice" != "y" ]]; then
    exit 0
fi

# Sentence 4
display_colored_sentence "Are you ready to take control and implement D-o-n-t-Look in your daily routine?" 3
read -p "Do you wish to continue reading? (y/n): " choice
if [[ "$choice" != "y" ]]; then
    exit 0
fi

# Conclusion
display_colored_sentence "Congratulations! You are now equipped to deny, obfuscate, and never be trolled by advertisements." 1
