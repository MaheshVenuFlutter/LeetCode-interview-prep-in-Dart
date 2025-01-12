 void main(){
  bool a = validateString(')({}');
  print(a.toString());
 }

bool validateString(String s){
// create a sample map 
Map<String,String> sampleMap = {')':'(','}':'{',']':'['};
// create a list to act as stack 
List<String> stack =[];

// create a for in loop 
for(String char in s.split('')){
  // check if char is closing bracket 
  if (sampleMap.containsKey(char)) {
    // pop and save the top char in stack to viravible if stack empty save # 
    String topChar = stack.isNotEmpty? stack.removeLast():'#';

    // compare top chat to value of char 
    if (topChar != sampleMap[char]) {
   
      return false;
    }
  }else{
    stack.add(char);
  }
}

return stack.isEmpty;

}



