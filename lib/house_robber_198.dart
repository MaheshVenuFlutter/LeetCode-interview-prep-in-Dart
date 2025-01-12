import 'dart:math';

void main (){
  List<int> nums = [1,2,3,1]; // Output: 4
  print("this is the shit : ${rob(nums)}");
}


int rob(List<int> nums){
  // get ength 
  int n = nums.length;

  // check 
  if(n==0) return 0;
  if(n==1) return nums[0];

  // case one if he robs last house 
  // current=max(prev1,nums[i]+prev2)

  int prev2 =0;
  int prev1= nums[0];

  for(int i=1;i<n;i++){
    int current = max(prev1,nums[i]+prev2);
    prev2 = prev1;
    prev1= current;
  }

  return prev1;
}