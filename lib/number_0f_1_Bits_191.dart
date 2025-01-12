void main(){
int n = 11 ; // Output: 3
 int a = 128; // Output: 1
 int c = 2147483645; // Output: 30

 print("this are the result s n== ${hammingWeight(n)}\n a == ${hammingWeight(a)}\n c == ${hammingWeight(c)}");
}


int hammingWeight(int n){
  // create a counter 
  int count =0;
  // start a while loop 
  while(n != 0){
    count += n & 1;
n = n >> 1;
  
  }
  return count;
}