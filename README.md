# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Daniel Colwell & Gavin Lester
## Summary
We started by filling out the half subractor file, which was easy to determine the equations from just glancing at the provided truth table.
We then added the correct connections in top. We then copied over the full adder we used last lab as a template, and went through the painstaking process of pasting it many times and changing all of the needed variables to match the math we are trying to do. We had to double the amount of full adders, and also add 12 wires in order to fully compute the addition and make sure the carryout was added correctly. We then went back into top to added the correct connections for the ones-comp module. We then wrote the two's complement code, knowing that finding the two's complement of a binary number means you simple have to flip all of the values, then add 1 to the end, like how 1 added to 1000 becomes 1001. We then went back through the code together and worked out a number of evident syntax errors and bugs. We then finished adding the needed connections from twos-complement into top. After running synthesis, generating the bitstream, and connecting to the basys 3 board, we ran the tests, completed the lab, and filled out this README. The end :)
## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
A half adder adds two 1 bit binary numbers, while a half subtractor subtracts two 1 bit binary numbers. If there is a carrout of 1 in the half adder, the carry = 1, and the
sum = 0. Instead of a carryout, there could be a BORROW if you try 0 - 1.
### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
Normally, without a carry out, the adder just adds it and stops. But with a carry out, your program must also now detect the carry out, find a way to route it back to where
you need it to go, and then add it back into the result correctly. Depending how this is done, it can quickly make your solution much more complicated.
### 3 - What is the edge case and problem with Two’s Complement number representation?
The edge case in two's complement is when the most negative number cannot be negated because when it is, it is too large to be represented in the number of availiable bits.
(The most negative number = -2(^n-1) , with its positive equivalent = 2(^n+1) )
