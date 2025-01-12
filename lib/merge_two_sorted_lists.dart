void main() {
  List<int> list1 = [1, 2, 4];
  List<int> list2 = [1, 3, 4];

  ListNode? l1 = createAListNode(list1);
  ListNode? l2 = createAListNode(list2);

  ListNode? mergedList = mergeTwoLists(l1, l2);

  convertListNodeToArray(mergedList);
}

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

ListNode? createAListNode(List<int> nums) {
  if (nums.isEmpty) {
    return null;
  }
  // Create a head
  ListNode head = ListNode(nums[0]);
  ListNode? current = head;

  // Start from index 1
  for (int i = 1; i < nums.length; i++) {
    current!.next = ListNode(nums[i]);
    current = current.next;
  }
  return head;
}

ListNode? mergeTwoLists(ListNode? listA, ListNode? listB) {
  // Dummy head node
  ListNode head = ListNode(0);
  ListNode? current = head;

  while (listA != null && listB != null) {
    if (listA.val < listB.val) {
      current!.next = listA;
      listA = listA.next;
    } else {
      current!.next = listB;
      listB = listB.next;
    }
    current = current.next;
  }

  // Attach the remaining nodes
  current!.next = listA ?? listB;

  return head.next;
}

List<int> convertListNodeToArray(ListNode? head) {
  if (head == null) {
    return [];
  }

  List<int> result = [];
  ListNode? current = head;

  while (current != null) {
    result.add(current.val);
    current = current.next;
  }

  print("Converted ListNode back to an array: $result");
  return result;
}
