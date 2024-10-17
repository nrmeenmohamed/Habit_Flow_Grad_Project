String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your name';
  } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
    return 'Please enter a valid name';
  }
  return null;
}

String? validateAge(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your age';
  } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
    return 'Please enter a valid age';
  }
  return null;
}

String? validateLocation(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your location';
  }
  return null;
}