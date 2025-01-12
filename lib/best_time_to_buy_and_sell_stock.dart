


int maxProfit(List<int> prices){
  // create a virable for buying price 
  // asign the first price to it 
  int buyingPrice = prices[0];
  // create a birable for selling price 
  // asign the first price to it 
  // as it is the only price avilable to us 
  int sellingPrice = prices[0];
  // create a virable for profit 
  // asign 0 it 
  int profit = 0;

  // create a loop to get itrate thorugh the list 
  // start the loop form second value 

  for(int i =1; i< prices.length ; i++ ){
    // check if the current price is lessser than the buying price 
    if (prices[i] < buyingPrice) {
      // the asign the current price to buying price 
      buyingPrice = prices[i];
    }else{
      // else means the current price is bigger than the buying price 
      // so we can get a profite 
       int currentProfit = prices[i] - buyingPrice;
       // now check which profit is bigger 
       if (currentProfit > profit) {
         profit = currentProfit;
       }
    }
  }

  return profit;

}

void main(){
  List<int> prices = [7, 1, 5, 3, 6, 4];
 int Profit = maxProfit(prices);

 print("This is the max Profit ${Profit}");
}