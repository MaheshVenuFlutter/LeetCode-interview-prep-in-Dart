void main() {
  String a = "malayalam"; // Test input, modify as needed

  bool c = isPalindrome(a);
  print(c);
}

bool isPalindrome(String string) {
  // Clean the string by removing non-alphanumeric characters and converting to lowercase
  String cleanedString = string.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '');
  
  // Reverse the cleaned string
  String reversedString = cleanedString.split('').reversed.join('');

  // Check if the cleaned string is a palindrome
  return cleanedString == reversedString;
}
