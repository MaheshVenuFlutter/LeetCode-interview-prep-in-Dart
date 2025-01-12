mian (){
 List<int> array  = [1,2,3,4,5];
}

class TreeNode{
  int? val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val,this.left,this.right]);
}

TreeNode? arrayToTree(List<int> array, int i){
  // validate array
  if(array.isEmpty || i >= array.length){
    return null;
  }
  // create a variable for root

  TreeNode root = TreeNode(array[i]);
  // assign left and right node
  root.left = arrayToTree(array,2*i+1);
  root.right = arrayToTree(array, 2*i+2);
  

  return root;
}


int diameterOfBinaryTree(TreeNode? root){
  //create a variable to hold diameter
  int diameter = 0;

  // create a function to get the depth 
  int depth(TreeNode? node){
     if (node == null) return 0;
     // Recursively get the depth of the left and right subtrees
    int leftDepth = depth(node.left);
    int rightDepth = depth(node.right);
    // Update the diameter if the path through the current node is longer
      diameter = (leftDepth + rightDepth > diameter) ? leftDepth + rightDepth : diameter;

        // Return the depth of the subtree rooted at this node
    return 1 + (leftDepth > rightDepth ? leftDepth : rightDepth);
  }

   depth(root); // Start DFS to calculate depth and update diameter
  return diameter;

}