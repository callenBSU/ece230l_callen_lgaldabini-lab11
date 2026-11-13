# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Connor Allen, Logan Galdabini

## Summary
For this lab, my group programmed clock dividers from ripple counters and a modulo
counter. I used previous D flip flop and T flip flop circuits from Lab 10 to implement
this. We also used the full-adder from Lab 6. Combining all of this, we successfully
implemented the clock divider.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
It does this because both flip-flop dividers the clock by 2. As you chain more flip
flops together, it divides even more. Ex: 50MHz with a flip flop turns into 25MHz.

### 2 - Why does the ripple counter's output go to all 1s on the first clock cycle?
The counter goes to all 1s because it is first initialized as T = 1 by its default.

### 3 - What width of ripple counter would you use to get to an output of ~1KHz?
The width is 10. This is because the output is 2^count. 2^10 - 1024MHz which is 1KHz.
