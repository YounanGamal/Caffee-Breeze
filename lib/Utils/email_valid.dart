bool isValidEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool isValidMobile(String mobile) {
  // String pattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
  // RegExp regExp = new RegExp(pattern);
  // return regExp.hasMatch(mobile);

  return RegExp(r'^(?:[+0][1-9])?[0-9]{10,12}$').hasMatch(mobile);
}
