# Decoding Arithmetic Expressions from Assembly Code

## Overview

The goal of this assignment is to practice the mapping between C code and assembly, for arithmetic expressions. 
You can easily convert C code into assembly using the `gcc`. Here, you will need to read and understand assembly code that
implements functions that perform arithmetic calculations, and your goal is to create C code that generates **identical assembly!**

### Rubric

You will be creating a C file called `arith.c`, which can be built from the given Makefile to match the assembly file `arith_complete.s`, which is provided. In particular, you goal is to fill in three C functions that perform arithmetic operations, such that your C code compiles to the same assembly code as in the provided assembly file.

### Starter Files

* 

## Expectations for Code

This example is fairly simple, so the only thing that you need to do is comment your code file with a header that contains your name.

No extensive testing needed here--just devise the C code that compiles to the given assembly.

## Tips for making progress

- As you have done in activities, make a copy of the arith_complete.s file. Then use that copy to make comments on each line so that you can build a picture.

- In your comments, remember to note exactly what is in the register that is the destination (the second operand).

- The registers that are used as the source (the first operand) of an instruction help you to determine that the register may be coming from a parameter to the function.

- Work in stages: finish function *arith1* in your `arith.c` file. Then move on to function *arith2* and then *arith3*. If you are stuck on one, work on another and go back.

## Important Notes

- The code in the assembly should **NOT** be converted line-for-line into C code. The original functions use fairly readable C code with arithmetic expressions in them. 

- The C code is like some of the examples that you have seen, in that it creates intermediate variables called, t0, t1, t2, etc. and combines them into a final returned value. Try using intermediate values rather than creating one long expression.

- In the solution, the assignment statements contain expressions on the right-hand side that have 1 or two variables, which are either input parameters to the function or the temporary intermediate variables. Avoid combining expressions in the assignments or the return statement. However, do be sure to combine variables in the expression: each variable should occur once per expression on the right-hand side of an assignment.

- There are no **left** shift operators in any examples.

- The mov command is sometimes used to keep a copy of a variable for use later.

- The registers rdi, rsi, and rdx are sometimes re-used after a computed intermediate value (i.e. a t0, t1, etc.) is completed.

- Casting is used in some of these functions to widen variables. Make certain you use explicit casting, not implicit casting.

## Check Your Work

The makefile has a way to check how your work is progressing.  This will only work once you have created your `arith.c` file and compiled it with `make` to create a `arith.s` file. Type:

	make compare

This runs a unix command called diff that can compare 2 files. There is a
complete version of the expected assembly code called `arith_complete.s`.
When you have everything correct, when you type the above `make compare` command, he diff command that runs will appear and return with no output. It will run like this:

	$ make compare
	diff -b -B -I '.ident*' -I '.file*' arith.s arith_complete.s


When things are different between your .s and
the completed one, you may get something like this (yours will be different):

	diff -I '.ident*' arith.s arith_complete.s
	14c14
	<       addl    %rdi, %rdx
	---
	>       addq    %rdi, %rdx
	make: *** [compare] Error 1
	
Lines with a < in front of them are from your file and lines with a > in front of them are corresponding lines in the correct complete version.

When a whole function is still missing as you work, you should see something like this example (this is only an example, yours will be different), where arith3 is not completed yet:

```
diff -b -B -I '.ident*' -I '.file*' arith.s arith_complete.s
29a30,44
>       .globl  arith3
>       .type   arith3, @function
> arith3:
> .LFB2:
>       .cfi_startproc
>       movzbl  %dil, %edi
>       movzbl  %sil, %eax
>       addl    %edi, %eax
>       movl    %eax, %edi
>       sall    $7, %edi
>       addl    %edi, %eax
>       ret
>       .cfi_endproc
> .LFE2:
>       .size   arith3, .-arith3
make: *** [compare] Error 1
```

If you are curious, your can type `man diff` to find out more about this new linux command, or look up more about it by doing a web search.
