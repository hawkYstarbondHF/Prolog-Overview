/** 
 * Assignment that provides an overview of basic features
 * of the Prolog programming language.                 
 *
 * Interact with this file in SWI-Prolog by running this command:
 * swipl PrologOverview.pl
 *
 * I will be grading the output of evaluating the main predicate.
 * Specifically, I will launch the run.bat file in the manner described
 * in the README file.                 
 *
 * I recommend using VSCode or GitHub codespaces to work on this code, 
 * but you should make sure that it behaves as expected when executed 
 * as described above.
 *
 * You are expected to complete all exercises according
 * to the specifications. Do not change the names or headers
 * for any existing predicates. You may add new predicates, and
 * will specifically be required to for some exercises.                
 * Absolutely all predicates in this file must have complete 
 * PLDoc style header comments with appropriate @param tags filled out.
 * Additional documentation is required within predicate bodies as 
 * appropriate. Some predicate stubs result in a dummy result of
 * true to allow execution, but you will need to replace these with
 * proper results. Whenever console output is required,
 * all formatting must match the specification exactly.
 *
 * Important Note on Style: A Singleton Variable is a variable that
 * only appears once in a predicate definition. If a variable only
 * appears once, then it serves no purpose, because it could take on                  
 * any value without affecting whether or not the predicate evaluates
 * to true. The presence of a singleton variable often indicates some
 * kind of logic error, but even if there are no errors, such variables
 * are still an example of bad style. STYLE POINTS WILL BE SUBTRACTED
 * IF THERE ARE SINGLETON VARIBLES IN YOUR SUBMISSION. Note that the
 * original code stub has singleton variables because the code is 
 * incomplete (a warning appears when you execute it), but these should
 * be fixed in your final submission.
 *
 * @author Jacob Schrum, Last modified 6/12/2023
 * @author ADD YOUR NAME, ADD DATE
 */

/**
 * main
 *
 * Launches code for all exercises. 
 * The ! operator prevents backtracking if a
 * goal fails. Each of these exercises gets one
 * chance to succeed. Do not change.
 */
main :-
    print_divider(1),
    !,exercise1(),
    print_divider(2),
    !,exercise2(),
    print_divider(3),
    !,exercise3(),
    print_divider(4),        
    !,exercise4(),
    print_divider(5),
    !,exercise5().

/**
 * print_divider(+X : int)
 *
 * Prints a dividing line between each exercise.  
 *
 * @param X Problem number printed in output
 */
print_divider(X) :-
    % ~D is an integer format and ~n is a newline
    format("--Exercise ~D----------------------------------~n",X).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * Exercise 1: Iterative Recursion
 * 9 points functionality, 4 points documentation
 * 
 * For this exercise, you must use recursion
 * to iterate over several values and reach a conclusion. Therefore,
 * you will need to define an additional predicate to handle the       
 * iteration for you.
 *
 * Define the predicate limited_sum(B,E,S), which is true if the sum of all 
 * numbers between B and E inclusive that are divisible by 13 equals S. Use
 * this predicate in the exercise1() predicate to determine the sum of
 * all numbers between 200 and 1287 inclusive that are divisible by 13. 
 * Afterward, take that result and print it to the console. The format 
 * of your printed output should be a single line with a carriage return, 
 * and look like the following:
 * 
 * The sum is: XXX
 * 
 * where XXX is the resulting sum.
 */
exercise1() :- 
    true. % TODO: Change this

/**
 * limited_sum(+B : int, +E : int, ?S : int)
 * 
 * True if S is the sum of all numbers between B and E (inclusive)
 * that are divisible by 13.
 *      
 * @param B Beginning of the number range to scan.  
 * @param E End of the number range to scan.    
 * @param S Sum of numbers in the range divisible by 13.
 */
limited_sum(B, E, S) :-
    true. % TODO: Change this

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * Exercise 2: Strings
 * 9 points functionality, 9 points documentation
 * 
 * Define a predicate called first_longer_shorter(A,B,R)
 * where all parameters are Strings, and A and B each have
 * at least one character. If either A or B is an empty
 * String, then generate a domain_error where the 
 * ValidDomain parameter is the term non_empty_string.
 * Read here: https://www.swi-prolog.org/pldoc/man?predicate=domain_error/2
 * Note that non_empty_string is just a Prolog term that I
 * made up, but the unit test is specifically looking for
 * this exact term (look at the unit tests for clarification).
 * The parameter R is the result, a String consisting of exactly two characters:
 * The first character of the longer String (between A and B), 
 * followed by the first character of the shorter String
 * (between A and B). If both Strings have equal length,                
 * then the first character of A should come first in R.
 * 
 * After defining your predicate, uncomment the test calls
 * below which call your predicate. Note that your predicate
 * must work for any valid input, not just for these
 * examples.
 */
exercise2() :-
    % TODO: Uncomment to test your completed predicate.
    %       Turn in your code with these lines uncommented. 
    %first_longer_shorter("Hello","Bye",A),
    %write(A),
    nl(),
    %first_longer_shorter("Bye","Hello",B),
    %write(B),
    nl(),
    %first_longer_shorter("1","abc",C),
    %write(C),
    nl(),
    %first_longer_shorter("abc","1",D),
    %write(D),
    nl(),
    %first_longer_shorter("abc","123",E),
    %write(E),
    nl(),
    %first_longer_shorter("123","abc",F),
    %write(F),
    nl().

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * Exercise 3: Lists
 * 10 points functionality, 9 points documentation
 * 
 * Define a predicate called moved_to_end that takes a list,
 * an index within that list, and a resulting list. The predicate
 * is true if the resulting list has the same items in the same order,
 * except that the item at the designated index is now at the end of
 * the list, and items that previously came after it now appear one
 * position to the left.    
 * 
 * Test your predicate by completing the code below. This code should
 * call moved_to_end with a list containing 1, 2, ..., 10 in order, 
 * and an index of 4, with the result specified as a variable. Afterward, 
 * print the contents of the result list to the console on a single line 
 * with a carriage return at the end, and a comma and space between each 
 * entry. The result should look like the following:
 * 
 * 1, 2, 3, 4, 6, 7, 8, 9, 10, 5
 *
 */
exercise3() :- 
    % TODO: Call moved_to_end as described above and print the result.
    true. % TODO: Change this

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * Exercise 4: Recursion
 * 10 points functionality, 9 points documentation
 * 
 * Define a sequence in the following way. The first three
 * numbers are 1, 2, and 3. Every subsequent number is the sum of
 * the previous number, and the number two entries before that
 * one. So, the first few numbers in the sequence are:
 * F(0) = 1
 * F(1) = 2
 * F(2) = 3
 * F(3) = 1+3 = 4
 * F(4) = 2+4 = 6
 * 
 * This sequence is similar to, but different from the Fibonacci
 * sequence. You will write two predicates determining if an 
 * element is the N-th number of the sequence. One uses pure recursion, 
 * the other uses dynamic programming. However, your dynamic
 * programming solution will also use recursion. In order to 
 * use dynamic programming, you have to track enough information
 * with your parameters to avoid recalculating any values of the
 * sequence. You will need an auxiliary predicate to accomplish this.
 * 
 * The predicate stubs for each approach are provided below. Once they
 * are complete, you can uncomment the code in this method to test
 * them. Note that for negative inputs, these predicates should each 
 * generate a domain_error where the ValidDomain parameter is 
 * the term not_less_than_zero.
 * Read here: https://www.swi-prolog.org/pldoc/man?predicate=domain_error/2
 * The unit tests specifically look for the term not_less_than_zero.
 */
exercise4() :-
    % TODO: Uncomment the commented lines below to test your completed predicates.
    %       Turn in your code with these lines uncommented.
    %recursive_seq(5,A),
    %write(A),
    nl(),
    %dynamic_seq(5,X),
    %write(X),
    nl(),
    %recursive_seq(8,B),
    %write(B),
    nl(),
    %dynamic_seq(8,Y),
    %write(Y),
    nl(),
    %recursive_seq(15,C),
    %write(C),
    nl(),
    %dynamic_seq(15,Z),
    %write(Z),
    nl().

/**
 * recursive_seq(+N : int, ?F : int)
 * 
 * Recursively determine if F is the N-th number of
 * the sequence described in the comment for
 * exercise 4.
 *
 * @param N Position in the sequence
 * @param F n-th value in the sequence
 */
% TODO: Add additional cases before the general case below.
recursive_seq(N,F) :-
    true. % TODO: Change this.

/**
 * dynamic_seq(+N : int, ?F : int)
 * 
 * Determine if F is the N-th number of
 * the sequence described in the comment for
 * exercise 4 using dynamic programming.
 * This predicate is only a kick-off for
 * a recursive predicate.
 *
 * @param N Position in the sequence
 * @param F n-th value in the sequence
 */
dynamic_seq(N,F) :-
    true. % TODO: Change this.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

/**
 * Exercise 5: File I/O
 * 12 points functionality, 9 points documentation
 * 
 * This predicate should read from the file "numbers.txt" which
 * contains only integers, exactly one per line. I recommend using a
 * helper predicate that computes the maximum and average of the 
 * numbers in the file recursively. Once computed, the values should
 * be printed to the console. The maximum should be formatted as an 
 * int, but the average should be a floating point average. The output
 * will consist of exactly two lines, each followed by a carriage return.
 * Here is an example:
 * 
 * Maximum value: XXX
 * Average value: XXX
 * 
 * where the XXX portions will be replaced with actual values calculated
 * from the file. Note that your code must work for arbitrary input files,
 * not just the provided example. However, you can assume the file is
 * named "numbers.txt". If a file with this name does not exist, then
 * do not crash with an exception. Instead, print the error message below
 * followed by a carriage return, and use fail/0 to terminate execution 
 * (do not use any variant of halt):
 * 
 * The file "numbers.txt" does not exist. Exiting.
 *  
 */
exercise5() :- 
    % TODO: Write according to the specification above.
    true. % TODO: Change this.
