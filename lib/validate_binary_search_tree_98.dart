  class TreeNode{
      int? val;
      TreeNode? left;
      TreeNode? right;
  }
  
  
  bool isValidBST(TreeNode? root) {
     
  bool validate(TreeNode? node, int? min, int? max) {
    if (node == null) return true;

    
    if ((min != null && node.val! <= min) || (max != null && node.val! >= max)) {
      return false;
    }

   
    return validate(node.left, min, node.val) && validate(node.right, node.val, max);
  }

  return validate(root, null, null);
  }



  //Input: root = [2,1,3]
  //Output: true
  
  //Input: root = [5,1,4,null,null,3,6]
  //Output: false