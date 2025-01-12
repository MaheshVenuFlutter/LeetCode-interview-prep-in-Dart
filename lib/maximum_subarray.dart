int maxSubArray(List<int> nums) {
  int maxEndingHere = nums[0];
  int maxSoFar = nums[0];

  for (int i = 1; i < nums.length; i++) {
    maxEndingHere = (nums[i] > maxEndingHere + nums[i]) ? nums[i] : maxEndingHere + nums[i];
    maxSoFar = (maxSoFar > maxEndingHere) ? maxSoFar : maxEndingHere;
  }

  return maxSoFar;
}

void main() {
  List<int> nums1 = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  print(maxSubArray(nums1)); // Output: 6

  List<int> nums2 = [1];
  print(maxSubArray(nums2)); // Output: 1

  List<int> nums3 = [5, 4, -1, 7, 8];
  print(maxSubArray(nums3)); // Output: 23
}
