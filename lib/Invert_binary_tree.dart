
void main() {


  // Example Input
  List<int?> rootArray = [4, 2, 7, 1, 3, 6, 9];

  // Step 1: Convert array to binary tree
 TreeNode? root = arrayToTree(rootArray, 0);
 TreeNode? inTree = invertTree(root);
  List<int?> array = treeToArray(inTree);
print("this is the tree form array $array");


}


class TreeNode{
  int? val;
  TreeNode? left;
  TreeNode? right;
  // constructer 
  TreeNode([this.val,this.left, this.right]);
}

//create a function to convert arry to tree
TreeNode? arrayToTree(List<int?> arry, int i){
  // check if i > = arry.length and first element is null

  if (i>= arry.length || arry[i] == null) {
    return null;
  }
  
 // create an instance and asign the root value 
  TreeNode root = TreeNode(arry[i]!);
  // use recoression
  // asign left and right node
  root.left = arrayToTree(arry,2 * i +1);
  root.right = arrayToTree(arry,2 * i+2);

  return root;

}

// now create a function to invertTree the tree

TreeNode? invertTree(TreeNode? root){
  // check if root is null
  if (root==null) {
    return null;
  }
  // create a instance of left and right treenod e
  TreeNode? left = invertTree(root.left);
  TreeNode? right = invertTree(root.right);
  // now we swap 
  root.left =right;
  root.right = left;

  return root;
}

// create a function to turn the tree back to arry 


List<int?>treeToArray(TreeNode? root){
// check if root is null
if (root==null) {
  return [null];
}
// create a list to hold the result 
List<int?> result = [];
// create list to use as queue
// asign roo as firts element 
List<TreeNode?> queue = [root];
// create a loop 
while(queue.isNotEmpty){
  //remove the first element from the que
  TreeNode? node = queue.removeAt(0);

  // check if node is null
  if (node == null) {
    // add null to result 
    result.add(null);
  }else{
    // add the bode value to result 
    result.add(node.val);
    // add the left and right node value to queue
    queue.add(node.left);
    queue.add(node.right);
  }

  
}
//now we need to remove all the null at the end of the result 
  // start a while loop
  while(result.isNotEmpty && result.last == null){
    // remove the last item from result 
    result.removeLast();
  }
  return result;
}


