
// https://leetcode.com/problems/roman-to-integer/


void main(List<String> args) {
  print(romanNumberToInt("XII"));
}

Map<String, int> romanNumbers = {
  "I": 1,
  "V": 5,
  "X": 10,
  "L": 50,
  "C": 100,
  "D": 500,
  "M": 1000,
};

int romanNumberToInt(String romanNumberString) {
  if (romanNumberString.length == 1) {
    return romanNumbers[romanNumberString]!;
  }
   
  else {
    int result = 0;

    int previousNumber =romanNumbers[romanNumberString[0]]!;

    for (int i = 1; i < romanNumberString.length; i++) {
      int currentNumber =romanNumbers[romanNumberString[i]]!;

      if (previousNumber < currentNumber) {
        result -= previousNumber;
      } else {
        result += previousNumber;
      }

      if (i == romanNumberString.length - 1) {
        result += currentNumber;
        break;
      }

      previousNumber = currentNumber;
    }

    return result;
  }
}
