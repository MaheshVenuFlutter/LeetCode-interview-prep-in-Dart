void main() {
  // Example usage
  print(singleNumber([2, 2, 1])); // Output: 1
  print(singleNumber([4, 1, 2, 1, 2])); // Output: 4
  print(singleNumber([1])); // Output: 1
}

int singleNumber(List<int> nums){
  // create a variable for holding result 
  int result = 0;
  // start a for in loop
  for (int i in nums) {
    // uss xor operation
    result ^= i; 
  }
  return result;
}