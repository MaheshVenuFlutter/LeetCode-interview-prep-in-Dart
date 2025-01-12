 int climbStairs(int n) {
    // Base cases
    if (n <= 2) {
      return n;
    }
    
    int first = 1; // Ways to climb to step 1
    int second = 2; // Ways to climb to step 2
    
    // Calculate ways to climb from step 3 to n
    for (int i = 3; i <= n; i++) {
      int third = first + second; // Current step ways
      first = second; // Move to the next step
      second = third; // Update for the next iteration
    }
    
    return second; // Return ways to climb to step n
  }

void main() {
  print(climbStairs(2)); // Output: 2
  print(climbStairs(3)); // Output: 3
  print(climbStairs(5)); // Output: 8
}
