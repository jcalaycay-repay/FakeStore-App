import 'package:fakestore/features/data/functions/validators.dart';

enum Validator {
    required,
    requiredWithMaxMinLength,
    numbersOnly,
    password,
    confirmPassword; 

    String? run(String? value) {
      return switch(this) {
        Validator.required => requiredField(value),

        // TODO implement other validation types
        _ => requiredField(value)
      };
    }
}