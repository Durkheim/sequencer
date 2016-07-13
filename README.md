####Objective

Write a method that accepts an array of integers and outputs a string with each number separated by a comma. Sequential numbers (e.g 1, 2, 3..) in the array should be represented in the string as a range with a hyphon (1-3). Here are some example inputs and outputs.

  Input: [1,2,3,5,7,9,10,11]

  Output: "1-3, 5, 7, 9-11"

  Input: [10,21,22,24,25,99,100]

  Output: "10,21-22,24-25,99-100"

####Pseudocode

1. Iterate through array of integers
2. Convert each integer to a string
3. Add strings together, while checking whether an integer:
 - starts a sequence
 - starts a range
 - ends a range
 - is the end of a sequence





