String? requiredField(String? value) {
    if(value == "" || value == null) {
      return "This field is required";
    }

    return null;
}

String confirmPassword(String? value, String password, {
  bool required = false
}) {
  if(requiredField(value) != null && required){
    return requiredField(value)!;
  }

  if(value != password) return "Password doesn't match";

  return '';
}

// String validatePassword(String value) {
//   List<String> messages = [];

//   if(value.length < 8) {
//     messages.add('at least 8 characters');
//   } else if (value.length > 15) {
//     messages.add('not more than 15 charcters');
//   }

//   if(value.contains(RegExp(source)))

// }