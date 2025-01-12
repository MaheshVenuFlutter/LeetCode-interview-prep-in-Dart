import 'dart:collection';

void main(){
  List<int?> array = [3,9,20,null,null,15,7];
  TreeNode ? root = arrayToTree(array,0);
  int depth = maxDepth(root);
  print(depth);
}

class TreeNode{
  int? val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val,this.left,this.right]);
}

TreeNode? arrayToTree(List<int?>array ,int i ){
  // array and array i
 if (i >= array.length || array[i] == null) {
   return null;
 }

 // create a variale for root 
 TreeNode root = TreeNode(array[i]);
 // create left and right of root
 root.left = arrayToTree(array,2*i+1);
 // right 
 root.right = arrayToTree(array,2*i+ 2);

 return root;

}



int maxDepth(TreeNode? root) {
  if (root == null) {
    return 0;
  }
  
  List<TreeNode?> queue = [root];
  int mdepth = 0;
  
  while (queue.isNotEmpty) {
    int levelSize = queue.length;
    
    for (int i = 0; i < levelSize; i++) {
      TreeNode? node = queue.removeAt(0);
      
      if (node != null) {
        if (node.left != null) queue.add(node.left);
        if (node.right != null) queue.add(node.right);
      }
    }
    
    mdepth++;
  }
  
  return mdepth;
}



