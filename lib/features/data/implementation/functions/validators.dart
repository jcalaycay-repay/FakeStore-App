String requiredField(String? value) {
    if(value == "" || value == null) {
      return "This field is required";
    }

    return '';
}

String confirmPassword(String? value, String password, {
  bool required = false
}) {
  if(requiredField(value) != '' && required){
    return requiredField(value);
  }

  if(value != password) return "Password doesn't match";

  return '';
}