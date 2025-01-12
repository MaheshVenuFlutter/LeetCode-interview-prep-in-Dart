

void main() {
  Solution solution = Solution();
  
  // Example 1
  List<int> nums1 = [1, 2, 3, 4];
  print(solution.productExceptSelf(nums1)); // Output: [24, 12, 8, 6]

  // Example 2
  List<int> nums2 = [-1, 1, 0, -3, 3];
  print(solution.productExceptSelf(nums2)); // Output: [0, 0, 9, 0, 0]
}


class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int n = nums.length;

    // Create an output array initialized with 1s
    List<int> output = List.filled(n, 1);

    // Step 1: Compute left products for each index
    int leftProduct = 1;
    for (int i = 0; i < n; i++) {
      output[i] = leftProduct; // At index i, set the product of all elements to the left
      leftProduct *= nums[i]; // Update the left product for the next index
    }

    // Step 2: Compute right products and multiply with left products
    int rightProduct = 1;
    for (int i = n - 1; i >= 0; i--) {
      output[i] *= rightProduct; // Multiply the current value in output by the right product
      rightProduct *= nums[i]; // Update the right product for the next index
    }

    return output;
  }
}