#!/bin/bash

while true; do
  echo "Simple Calculator"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Multiplication"
  echo "4. Division"
  echo "5. Exit"
  read -p "Select an option (1-5): " choice

  case "$choice" in
    1)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1 + num2))
      echo "Result: $result"
      ;;
    2)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1 - num2))
      echo "Result: $result"
      ;;
    3)
      read -p "Enter first number: " num1
      read -p "Enter second number: " num2
      result=$((num1 * num2))
      echo "Result: $result"
      ;;
    4)
      read -p "Enter dividend: " dividend
      read -p "Enter divisor: " divisor
      if [ "$divisor" -eq 0 ]; then
        echo "Error: Division by zero!"
      else
        result=$(awk "BEGIN {printf \"%.2f\", $dividend / $divisor}")
        echo "Result: $result"
      fi
      ;;
    5)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid option. Please choose a valid option (1-5)."
      ;;
  esac
done