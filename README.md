# Unhandled Exception in Asynchronous Dart Code
This repository demonstrates a common error in Dart: improper handling of exceptions within asynchronous operations using `Future`. The `bug.dart` file showcases the problematic code, while `bugSolution.dart` provides a corrected version with robust error handling.  The issue lies in the lack of appropriate error management during HTTP requests, which can lead to application crashes or unexpected behavior.

## Problem:
The original code simply prints the exception without gracefully handling or recovering from the error. This makes the application vulnerable and may result in a poor user experience.

## Solution:
The solution involves comprehensive exception handling. The improved code includes a `try-catch` block to catch potential errors during the API call.  Instead of just printing the error, the updated code provides more informative error messages and allows for strategies to recover from the failure, such as retrying the request or displaying a user-friendly error message.

## How to Run:
1. Clone this repository.
2. Run `bug.dart` to observe the unhandled exception.
3. Run `bugSolution.dart` to see the improved error handling.