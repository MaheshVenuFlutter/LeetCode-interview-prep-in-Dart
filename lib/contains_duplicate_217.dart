void main() {
List<int> nums =[1,2,3,];
  
  print("${containsDuplictaes(nums)}");
}


bool containsDuplictaes(List<int> nums){
  // create a empty set 
  Set<int> seen = {};

  // create a for loop

  for(int n in nums ){
    if(seen.contains(n)){
      return true;
    }else{
      seen.add(n);
    }
  }

  return false;

}