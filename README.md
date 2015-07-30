####Objective

Write a method that accepts an array of integers and outputs a string with each number separated by a comma. Sequential numbers (e.g 1, 2, 3..) in the array should be represented in the string as a range with a hyphon (1-3). Here are some example inputs and outputs.

  Input: [1,2,3,5,7,9,10,11]

  Output: "1-3, 5, 7, 9-11"

  Input: [10,21,22,24,25,99,100]

  Output: "10,21-22,24-25,99-100"

####Pseudocode

1. Create an array to concatenate integers into a string
2. Create an array to collect sequences
3. Iterate through array to collect sequences and push objects to the concatenate array. Any number that is not part of a sequence should also be pushed to the array.
4. On the concatenate array, call a join to get desired output






