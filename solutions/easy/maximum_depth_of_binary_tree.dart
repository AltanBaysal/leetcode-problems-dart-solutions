
// https://leetcode.com/problems/maximum-depth-of-binary-tree/

import 'dart:math';

class TreeNode {
  int? val;
  TreeNode? left;
  TreeNode? right;

  TreeNode({this.val, this.left, this.right});
}

final TreeNode mockTreeNode = TreeNode(
  val: 5,
  left: TreeNode(
    val: 3,
    left: TreeNode(val: 7),
  ),
  right: TreeNode(),
);



void main(List<String> args) {
  print(maxDepth(mockTreeNode));
}

int maxDepth(TreeNode? treeNode) {
  if (treeNode == null) return 0;
  return max(maxDepth(treeNode.left), maxDepth(treeNode.right)) + 1;
}
