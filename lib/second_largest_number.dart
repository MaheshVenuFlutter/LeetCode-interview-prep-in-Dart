// list of int , find the second largest number 
//List<int> listOfNumbers = [1,2,3,4,5,6,7,8,9];


int findSecondLargestNumber(List<int> listOfNumbers){
  // create 2 virables largest number and second largest number

  int largestNumber = 0;
  int secondLargestNumber=0;

  // create a loop 

  for (int i in listOfNumbers) {
    
    // make condtion to check i is grater than largestNumber
   if(i > largestNumber){
    // the largest number becomse second largest number 
    // then asign i to the largestnumber and
    
    secondLargestNumber = largestNumber;
    largestNumber =i;
    

   }else if(i>secondLargestNumber && i != largestNumber){
    secondLargestNumber = i;
  
   }
    
  }

 return secondLargestNumber;

}



void main(){

  int a = findSecondLargestNumber([1,2,8,4,]);

  print(a);

}