void main(){
  List<int> numsA = [1,2,3,4];
  //Output: [24,12,8,6]
  List<int> numsB = [-1,1,0,-3,3];
  //Output: [0,0,9,0,0]

  print(" this out a == ${productExceptSelf(numsA)}");
  print(" this is out put b == ${productExceptSelf(numsB)}");
}
List<int> productExceptSelf(List<int>nums){
  // get the length of the arrray
  int n = nums.length;
  // create a result array 
  List<int> result = List.filled(n, 1);

  // crea prefix 
  int prefix =1;
  for(int i=0; i<n;i++){
    result[i] = prefix;
    prefix *= nums[i];
  }

  // sufix
  int sufix = 1;
  for(int i=n-1; i>=0; i--){
    result[i] *= sufix;
    sufix *= nums[i];
  }

  return result;
}