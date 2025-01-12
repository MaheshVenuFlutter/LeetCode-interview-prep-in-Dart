List<int>twoSum(List<int> nums,int target){
// create  a map 
Map<int,int> map= {};
// start a for loop 
for(int i =0;i<nums.length; i++){
// create a virable to save t- i
int complement = target - nums[i];
// chek if complement os in map 
if (map.containsKey(complement)) {
  return [map[complement]!,i];
}
// selse add to map
map[nums[i]] = i;
}
return [];
}




void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  print(twoSum(nums, target)); // Output: [0, 1]
}
