int binarySearch(List<int> nums, int target){
  // create a left runner 
  // starting index of list
  int left = 0;
  // create a right runner
  // ending index of the list 
  int right = nums.length-1;

  // create a while loop
  // make it run till left is lesser or equal to right 
  while(left <= right){
    // get the middle index
    int mid = (left + right) ~/ 2;

    // check if the target is the middle value 
    if (nums[mid] == target) {
      return mid;
    }
    // else check if the target is greater than mid value 
    else if(nums[mid] < target){
      // means the target is not in the left half 
      // move past the entire left 
      left = mid + 1;
    } else {
      // target is in the left half
      // move past the entire right half
      right = mid - 1; 
    }
  }
  // target not found
  return -1;
}

void main() {
  List<int> nums = [-1, 0, 3, 5, 9, 12];
  int target1 = 9;
  int target2 = 2;

  // Output is 4 for target1.
  print(binarySearch(nums, target1)); // Output: 4
  
  // Output is -1 for target2.
  print(binarySearch(nums, target2)); // Output: -1
}
