# Dart Unhandled Exception: type 'Null' is not a subtype of type 'String'

This repository demonstrates a common error in Dart when handling JSON data: attempting to access properties of a JSON object without first checking for null values. This can lead to an `Unhandled Exception: type 'Null' is not a subtype of type 'String'` error if the expected property is missing or has a null value.

The `bug.dart` file contains the problematic code.  The `bugSolution.dart` file shows the corrected code with appropriate null checks.