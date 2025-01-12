void main() {
  print(missingNumber([3, 0, 1])); // Output: 2
  print(missingNumber([0, 1])); // Output: 2
  print(missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1])); // Output: 8
}

int missingNumber(List<int> nums){
  // create a variable for length of the list 
  int n = nums.length;
  // create a variable for xor result 
  int xorResult = n;

  // start a for loop
  for(int i =0; i< n; i++){
  xorResult ^= i ^nums[i];
  }
return xorResult;

}