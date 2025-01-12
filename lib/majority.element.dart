void main() {
  List<int> nums1 = [3, 2, 3];
  List<int> nums2 = [2, 2, 1, 1, 1, 2, 2];
  
  print(majorityElement(nums1)); // Output: 3
  print(majorityElement(nums2)); // Output: 2
}



int? majorityElement(List<int> array){
// create a variable for mCandidate
int? mCandidate ;
// create a Variable for count
int vCount = 0;

// start a for in loop 
for (int num in array) {
  // check if count = 0
 
  if (vCount == 0) {
     // assign num to mc
     mCandidate = num;
  }
  // check if mc == num then add one to count else reduce 1
  vCount += (mCandidate == num)? 1: -1 ;
}
return mCandidate;
}