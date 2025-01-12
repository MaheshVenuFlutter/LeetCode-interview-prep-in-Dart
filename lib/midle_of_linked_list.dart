class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

void main() {
  // Create a linked list: 1 -> 2 -> 3 -> 4 -> 5
  ListNode node5 = ListNode(5);
  ListNode node4 = ListNode(4, node5);
  ListNode node3 = ListNode(3, node4);
  ListNode node2 = ListNode(2, node3);
  ListNode head = ListNode(1, node2);

  // Call middleNode and print the value of the middle node
  ListNode? middle = middleNode(head);
  if (middle != null) {
    print("The middle node value is: ${middle.val}");
  } else {
    print("The list is empty.");
  }
}

ListNode? middleNode(ListNode? head) {
  ListNode? slow = head;
  ListNode? fast = head;

  while (fast != null && fast.next != null) {
    slow = slow?.next;
    fast = fast.next?.next;
  }

  return slow;
}

