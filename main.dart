import 'dart:io';

void main() {
  print("Nhập vào năm số nguyên dương, mỗi số cách nhau bằng dấu cách:");
  String? input = stdin.readLineSync()!;
  List<int> arr = input.split(' ').map(int.parse).toList();

  if (arr.length != 5) {
    print("Vui lòng nhập 5 số nguyên dương.");
    return;
  }

  int maxNumber = arr[0];
  int minNumber = arr[0];
  int sum = 0;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > maxNumber) {
      maxNumber = arr[i];
    }
    if (arr[i] < minNumber) {
      minNumber = arr[i];
    }
    sum += arr[i];
  }

  int maxSum = sum - minNumber;
  int minSum = sum - maxNumber;

  print('Tổng lớn nhất: $maxSum');
  print('Tổng bé nhất: $minSum');
}
