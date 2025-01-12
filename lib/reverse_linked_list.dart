void main() {
  List<int> inputArray = [1, 2, 3, 4, 5];
  ListNode? linkedListHead = createLinkedList(inputArray);

  // Print the original linked list
  print("Original Linked List:");
  printLinkedList(linkedListHead);

  // Reverse the linked list
  ListNode? reversedHead = reverseLinkedList(linkedListHead);

  // Print the reversed linked list
  print("Reversed Linked List:");
  printLinkedList(reversedHead);
}


ListNode? reverseLinkedList(ListNode? head) {
  // Create a variable 'prev' and initialize to null
  ListNode? prev = null;

  // Create 'current' to traverse the list
  ListNode? current = head;

  // Start a while loop to iterate through the list
  while (current != null) {
    // Save the next node in a temporary variable
    ListNode? next = current.next;

    // Reverse the current node's pointer
    current.next = prev;

    // Move 'prev' and 'current' one step forward
    prev = current;
    current = next;
  }

  // 'prev' now points to the new head of the reversed list
  return prev;
}


// Function to print the linked list
void printLinkedList(ListNode? node) {
  while (node != null) {
    print(node.val);
    node = node.next;
  }
}

class ListNode {
  int? val;
  ListNode? next;

  ListNode([this.val, this.next]);
}

ListNode? createLinkedList(List<int> array) {
  if (array.isEmpty) {
    return null;
  }

  ListNode? head = ListNode(array[0]);
  ListNode? current = head;

  for (int i = 1; i < array.length; i++) {
    current!.next = ListNode(array[i]);
    current = current.next;
  }
  return head;
}
