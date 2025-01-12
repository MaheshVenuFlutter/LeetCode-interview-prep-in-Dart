

class ListNode{
  int? val;
  ListNode? next;

  ListNode([this.val,this.next]);
}

ListNode? createLinkedListWithCycle(List<int>values, int pos){
 
  if (values.isEmpty) {
    return null;
  }
  
  ListNode? head = ListNode(values[0]);
  ListNode? current = head;
  ListNode? cycleNode;

  for(int i= 1;i<values.length; i++){
    current!.next = ListNode(values[i]);
    current = current.next;
    if (i==pos) {
      cycleNode = current;
    }
  }
  if (pos>= 0&& cycleNode != null) {
    current!.next = cycleNode;
  }

  return head;
}

// create a functioon to check if the has cycle 
bool? hasCycle(ListNode? head){
// check if hed is  null
if (head == null) {
  return false;
}
  // create a slow runner 
  ListNode? slow = head;
  // create afast runner
  ListNode? fast =head;
  
  // start a whilw loop 
  while(fast !=null && fast.next != null){
    //move slow one step 
    slow = slow!.next;
    // move fast 2 step 
    fast = fast.next!.next;
    // check if fst == slow

    if (slow == fast) {
      //cycle identofed 
      return true;
    }
  }
return false;
}
// Example usage:
void main() {
  ListNode? head = createLinkedListWithCycle([3, 2, 0, -4], 1);
  print(hasCycle(head)); // Output: true
}