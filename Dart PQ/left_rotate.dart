import 'dart:io';

void main() {
  List l1 = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  // if user enter : 2
  // [1,2,3,4,5,6,7,8,9]
  // [2,3,4,5,6,7,8,9,1]
  // [3,4,5,6,7,8,9,1,2]

  stdout.write("Enter index to left rotate : ");
  int n = int.parse(stdin.readLineSync()!);

  print(l1);
  for (int i = 0; i < n; i++) {
    int last = l1[0]; //1
    for (int j = 0; j < l1.length - 1; j++) {
      l1[j] = l1[j + 1];
    }
    l1[l1.length - 1] = last;
  }

  print(l1);
}