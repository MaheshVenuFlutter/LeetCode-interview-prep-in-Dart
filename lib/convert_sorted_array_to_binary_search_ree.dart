class TreeNode {
  int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value, {this.left, this.right});
}

TreeNode? sortedArrayToBST(List<int> nums) {
  // Helper function to recursively build the tree
  TreeNode? buildBST(int left, int right) {
    if (left > right) return null; // Base case: no more elements to process

    int mid = (left + right) ~/ 2; // Find the middle element
    TreeNode node = TreeNode(nums[mid]);

    // Recursively construct the left and right subtrees
    node.left = buildBST(left, mid - 1);
    node.right = buildBST(mid + 1, right);

    return node;
  }

  return buildBST(0, nums.length - 1);
}

// Helper function to print the tree in level order
void printLevelOrder(TreeNode? root) {
  if (root == null) return;

  List<TreeNode?> queue = [root];

  while (queue.isNotEmpty) {
    TreeNode? node = queue.removeAt(0);
    if (node != null) {
      print(node.value);
      queue.add(node.left);
      queue.add(node.right);
    } else {
      print('null');
    }
  }
}

void main() {
  List<int> nums = [-10, -3, 0, 5, 9];
  TreeNode? root = sortedArrayToBST(nums);
  
  print('Level Order Traversal of BST:');
  printLevelOrder(root);
}
