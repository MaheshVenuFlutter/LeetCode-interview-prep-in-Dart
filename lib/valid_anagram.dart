bool isAnagram(String s ,String t){
  // clean the string of empty spaces and 
  // make them lover case
  s.replaceAll(' ', '').toLowerCase();
  t.replaceAll(' ', '').toLowerCase();

  // compare the lengths 

  if (s.length != t.length) {
    return false;
  }

  // sort the strings 
  List<String> sortedS = s.split('')..sort();
  List<String> sortedT =t.split('')..sort();

  return sortedS.join('') == sortedT.join('');
}

void main() {
  print(isAnagram("anagram", "nagaram")); // Output: true
  print(isAnagram("rat", "car")); // Output: false
}
