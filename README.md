# Haskell Learning Exercises

This repository contains a collection of solved exercises for learning the Haskell programming language. The exercises are organized into directories corresponding to chapters or sections of the learning module, covering fundamental concepts from basic syntax to practical applications.

## Repository Structure

The exercises are grouped into directories named `p<NN>_exercises`, where `<NN>` refers to a page number from the learning script. Each file within these directories tackles a specific problem, often including comments and explanations for the solution.

-   `p10_exercises/`: Introduction to functions, recursion (`product'`), sorting (`qsort`), lazy evaluation, and side effects.
-   `p17_exercises/`: List manipulation functions (`last`, `init`, `rotate`), Haskell syntax for mathematical expressions, and infix/prefix notation.
-   `p25_exercises/`: Exploration of Haskell's type system, including basic types, tuples, function types, type classes (`Eq`, `Ord`, `Num`), and distinguishing between compile-time and runtime errors.
-   `p32_exercises/`: Control flow constructs like guards, `if-else`, and pattern matching on various data structures.
-   `p41_exercises/`: Advanced list processing using list comprehensions and a practical application building a Caesar cipher with an automatic cracking function based on frequency analysis.

## Content Highlights

This repository serves as a practical guide through various Haskell concepts:

### Foundational Concepts
-   **Function Definition**: Writing simple recursive functions like `product'`.
-   **List Manipulation**: Implementing and using standard list functions such as `last`, `init`, `rotate`, `take`, `drop`, and `zip`.
-   **Type System**: Determining the types of values and functions, and understanding type signatures.
-   **Type Classes**: Understanding the role of classes like `Eq`, `Ord`, `Num`, `Integral`, and `Fractional`.

### Control Flow
-   **Pattern Matching**: Deconstructing lists and tuples to define function behavior (e.g., `nullPM`, `first`, `second`, `third`).
-   **Guards**: Writing functions with multiple conditions, such as a custom `signum` implementation.
-   **If-Else Expressions**: Using `if-then-else` for binary conditional logic.

### Advanced Topics
-   **List Comprehensions**: Creating new lists by transforming and filtering existing ones. Examples range from simple transformations to generating pairs and filtering based on multiple conditions.
-   **Higher-Order Functions**: Using functions that take other functions as arguments, like `twice f x = f (f x)`.
-   **Partial Application**: Creating new functions by pre-applying arguments to existing ones, as seen in `isNegative = (0 >)`.
-   **Lazy Evaluation**: Observing the behavior of Haskell with infinite lists, such as `sum [1..]` vs. `print [1..]`.

### Caesar Cipher Project
The `p41_exercises/` directory contains a complete implementation for encoding, decoding, and cracking the Caesar cipher.
-   `encode` / `decode`: Functions to encrypt and decrypt messages by shifting characters.
-   `freqs`: Calculates the frequency distribution of letters in a string.
-   `chisqr`: Uses the chi-squared test to compare a text's frequency distribution against a known language profile (German, in this case).
-   `crack`: An efficient function that automatically decrypts a ciphertext by finding the shift that results in the most language-like letter frequency. The implementation cleverly computes the frequency distribution once and then rotates it for each potential key.

## How to Use

You can explore the code and test the functions using the Glasgow Haskell Compiler's interactive environment (GHCi).

1.  Clone the repository:
    ```sh
    git clone https://github.com/themane04/haskell.git
    cd haskell
    ```

2.  Load an exercise file into GHCi:
    ```sh
    ghci p41_exercises/5_exercise.hs
    ```

3.  Call the functions defined in the file:
    ```haskell
    *Main> encode 3 "haskell"
    "kdvneho"
    *Main> encode 3 "Achtung!"
    "Achtung!"
