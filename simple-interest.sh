#!/bin/bash
# Simple Interest Calculator
# This Bash script calculates simple interest based on user input

echo "Simple Interest Calculator"
echo "--------------------------"

# Prompt user for principal amount
echo "Enter principal amount:"
read principal

# Prompt user for rate of interest
echo "Enter rate of interest:"
read rate

# Prompt user for time period
echo "Enter time period (in years):"
read time

# Calculate simple interest: (principal * rate * time) / 100
# Using bc for floating point calculation
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "Principal: $principal"
echo "Rate of Interest: $rate"
echo "Time Period: $time years"
echo "The simple interest is: $simple_interest"

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)
echo "Total Amount (Principal + Simple Interest): $total_amount"
