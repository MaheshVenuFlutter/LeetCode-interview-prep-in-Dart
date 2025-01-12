

class TreeNode{
  int? val;
  TreeNode? left;
  TreeNode? right;

  TreeNode([this.val,this.left,this.right]);
}

TreeNode? arrayToTree(List<int?>array,int i){
  if(i>=array.length || array[i]==null){
    return null;
  }

  TreeNode? root = TreeNode(array[i]);
  root.left= arrayToTree(array,2*i+1);
  root.right = arrayToTree(array,2*i+2);

  return root;
}

List<int?> TreeToList(TreeNode? root){
  if(root == null) return [];

  List<int?> result = [];
  List<TreeNode?> queue =[root];
  while(queue.isNotEmpty){
    TreeNode? node = queue.removeAt(0);
    if(node == null){
      result.add(null);
    }else{
      result.add(node.val);
      queue.add(node.left);
      queue.add(node.right);
    }
  }
  // remove all tye null
  while(result.isNotEmpty && result.last == null){
    result.removeLast();
  }

  return result;
}


bool isAMirror(TreeNode? root){
  if(root == null) return true;
return isMirror(root.left,root.right);
}

bool isMirror(TreeNode? t1,TreeNode? t2){
  if(t1 == null && t2 == null) return true;
  if(t1 == null || t2 == null) return false;

  return (t1.val == t2.val) && isMirror(t1.left,t2.right) && isMirror(t1.right , t2.left);
}

void main(){
  List<int> listB= [1,2,2,3,4,4,3];
  TreeNode? root = arrayToTree(listB,0);
  print("this tree is mirror : ${isAMirror(root)}");
  // Output: true
  List<int?> list1 = [1,2,2,null,3,null,3];
   TreeNode? rootA = arrayToTree(list1,0);
    print("this tree is mirror : ${isAMirror(rootA)}");
   // Output: false

  List<int?> listA = TreeToList(root);
  print("object: $listA");

   List<int?> listc = TreeToList(rootA);
  print("object: $listc");
}