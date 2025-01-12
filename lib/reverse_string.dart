void reverseString(List<String> s) {
  int left = 0;
  int right = s.length - 1;

  while (left < right) {
    // Swap characters at left and right
    String temp = s[left];
    s[left] = s[right];
    s[right] = temp;

    // Move the pointers towards the center
    left++;
    right--;
  }
  
}

void main() {
  List<String> s1 = ["h", "e", "l", "l", "o"];
  reverseString(s1);
  print(s1); // Output: ["o", "l", "l", "e", "h"]

  List<String> s2 = ["H", "a", "n", "n", "a", "h"];
  reverseString(s2);
  print(s2); // Output: ["h", "a", "n", "n", "a", "H"]
}
