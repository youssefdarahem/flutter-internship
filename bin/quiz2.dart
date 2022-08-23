import 'package:binary_tree/binary_tree.dart';

void main() {
  // show case of how insert work in a self balancing binary tree
  var b = BinaryTree([4]);
  print('\nRoot Node is : ${b.root.data}');
  b.insert(2); // 2 is less than 4 so it gets inserted into the right
  b.insert(6); // 6 is larger than 4 so it gets inserted to the left
  b.insert(
      3); //3 is less than 4 but larger 2 so it is inserted to the left of node (2)
  print('\nNodes after inserting 2,6,3');
  print('First node : ${b.root}');
  print('Left Node: ${b.root.left}');
  print('Right Node: ${b.root.right}');
  b.insert(1);
  b.insert(5);
  b.insert(7);
  print('\nNodes after inserting 1,5,7');
  print('First node : ${b.root}');
  print('Left Node: ${b.root.left}');
  print('Right Node: ${b.root.right}');
  return;
}
