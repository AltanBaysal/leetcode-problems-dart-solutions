
// https://leetcode.com/problems/plus-one/

void main(List<String> args) {
  print(plusOne([9, 9, 9]));
}

List<int> plusOne(List<int> digits) {
  if (digits.last != 9) {
    digits.last++;
    return digits;
  } else {
    for (int i = digits.length - 1; i >= 0; i--) {
      if (digits[i] == 9) {
        digits[i] = 0;
      } else {
        digits[i]++;
        return digits;
      }
    }

    digits.insert(0, 1);
    return digits;
  }
}
