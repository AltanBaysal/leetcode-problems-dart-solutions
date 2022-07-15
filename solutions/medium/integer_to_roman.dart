
// https://leetcode.com/problems/integer-to-roman/


void main(List<String> args) {
  print(intToRoman(145));
}

List<String> romans = [
  "M",
  "CM",
  "D",
  "CD",
  "C",
  "XC",
  "L",
  "XL",
  "X",
  "IX",
  "V",
  "IV",
  "I"
];

List<int> romansValue = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];

String intToRoman(int num) {
  if (romansValue.contains(num)) {
    return romans[romansValue.indexOf(num)];
  }

  String roman = "";
  int index = 0;

  while (num != 0) {
    if (num >= romansValue[index]) {
      num -= romansValue[index];
      roman += romans[index];
    } else {
      index++;
    }
  }

  return roman;
}

