//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.\

//Example 1:

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

// Example 2:

// Input: nums = [3,2,4], target = 6
// Output: [1,2]
// Example 3:

// Input: nums = [3,3], target = 6
// Output: [0,1]

List<int> findTwoNumbers({required List<int> listOfNumbers, required int targetNumber}) {
  // Create an empty list to hold the result.
  List<int> output = [];
  
  // Outer loop to get the first number (i.e., index i).
  for (int i = 0; i < listOfNumbers.length; i++) {
    // Inner loop to get the second number (i.e., index j) starting from the next element.
    for (int j = i + 1; j < listOfNumbers.length; j++) {
      // Check if the sum of the numbers at index i and j equals the target.
      if (listOfNumbers[i] + listOfNumbers[j] == targetNumber) {
        // Add the indices to the output list.
        output.add(i);
        output.add(j);
        
        // Return the output as soon as the matching pair is found.
        return output;
      }
    }
  }
  
  // If no pair is found, return an empty list.
  return output;
}

void main() {
  List<int> result = findTwoNumbers(listOfNumbers: [3, 2, 4], targetNumber: 6);
  print(result); // Expected output: [1, 2]
}
