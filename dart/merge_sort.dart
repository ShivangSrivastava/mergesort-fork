void main() {
  List<int> numbers = [38, 27, 43, 3, 9, 82, 10];
  print('Original array: $numbers');

  List<int> sortedNumbers = mergeSort(numbers);
  print('Sorted array: $sortedNumbers');
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0, j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));

  return result;
}

List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }

  int middle = array.length ~/ 2;
  List<int> left = array.sublist(0, middle);
  List<int> right = array.sublist(middle);

  return merge(mergeSort(left), mergeSort(right));
}
