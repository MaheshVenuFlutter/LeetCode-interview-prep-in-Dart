// Definition of TreeNode
class TreeNode {
  int? val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val, this.left, this.right]);
}

// Function to recursively build a tree from a list
TreeNode? buildTree(List<int?> values, [int index = 0]) {
  if (index >= values.length || values[index] == null) return null;

  TreeNode node = TreeNode(values[index]);
  node.left = buildTree(values, 2 * index + 1); // Left child index
  node.right = buildTree(values, 2 * index + 2); // Right child index

  return node;
}

// Function to check if a tree is symmetric
bool isSymmetric(TreeNode? root) {
  if (root == null) return true;

  List<TreeNode?> queue = [];
  queue.add(root.left);
  queue.add(root.right);

  while (queue.isNotEmpty) {
    TreeNode? left = queue.removeAt(0);
    TreeNode? right = queue.removeAt(0);

    if (left == null && right == null) continue;
    if (left == null || right == null || left.val != right.val) return false;

    queue.add(left.left);
    queue.add(right.right);
    queue.add(left.right);
    queue.add(right.left);
  }

  return true;
}

void main() {
  // Example 1: Symmetric tree
  List<int?> input1 = [1, 2, 2, 3, 4, 4, 3];
  TreeNode? root1 = buildTree(input1);
  print(isSymmetric(root1)); // Output: true

  // Example 2: Asymmetric tree
  List<int?> input2 = [1, 2, 2, null, 3, null, 3];
  TreeNode? root2 = buildTree(input2);
  print(isSymmetric(root2)); // Output: false
}
